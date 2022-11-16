import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/base/smh_services_manager.dart';
import 'package:smh_flutter_sdk/core/error/smh_error.dart';
import 'package:smh_flutter_sdk/core/services/smh_api_service.dart';

import 'package:smh_flutter_sdk/core/task/base/smh_task_manager.dart';
import 'package:smh_flutter_sdk/core/task/base/smh_task_queue.dart';
import 'package:smh_flutter_sdk/core/task/smh_task_info.dart';
import 'package:smh_flutter_sdk/core/task/smh_upload_task.dart';
import 'package:dio/dio.dart';

import '../../../beacon/smh_beacon_manager.dart';

enum SMHTaskPriority { high, middle, low }

enum SMHTaskState {
  waiting,
  processing,
  error,
  pause,
  success,
  canceled,
}

abstract class SMHTask<T> extends Object {
  static int _taskId = 10000;

  ProgressCallback? onSendProgress;
  ProgressCallback? onReceiveProgress;
  SMHFinishCalBack? finishCalBack;
  SMHConfirmKeyCalBack? confirmKeyCalBack;
  late int taskId;
  SMHTask() {
    taskId = _taskId++;
    stateStream = StreamController();
    _state = SMHTaskState.waiting;
    stateStream.add(_state);
  }
  SMHTaskPriority priority = SMHTaskPriority.middle;
  late StreamController<SMHTaskState> stateStream;
  late SMHTaskState _state;
  SMHTaskQueue? currentQueue;
  late Isolate isolate;
  late ReceivePort receivePort;

  void finish() {
    currentQueue?.onTaskFinishHandle(this);
    currentQueue = null;
    receivePort.close();
    isolate.kill();
  }

  // 除了成功 ，都可以取消。
  void cancel([dynamic reason]) {
    if (_state == SMHTaskState.success) {
      return;
    }
    _state = SMHTaskState.canceled;
    stateStream.add(_state);
    SMHTaskInfo info = getTaskInfo();
    if (info.cancelToken?.isCancelled == false) {
      try {
        info.cancelToken?.cancel(reason);
      } catch (_) {}
    }
    if (finishCalBack != null) {
      SMHError smhError = SMHError();
      smhError.smhCode = 'Cancelled';
      smhError.smhMessage = 'cancelled';
      smhError.smhZhMessage = '取消';
      smhError.error = reason;
      finishCalBack!(null, smhError);
    }

    /// 取消下载 删除本地临时文件。
    if (getTaskInfo().option == SMHTaskOption.download) {
      try {
        File(getTaskInfo().localPath).delete();
      } catch (_) {}
    }

    currentQueue?.onTaskFinishHandle(this);
    currentQueue = null;
    receivePort.close();
    isolate.kill();
  }

  // 只有进行中的任务才需要暂停
  void pause([dynamic reason]) {
    if (_state != SMHTaskState.processing && _state != SMHTaskState.waiting) {
      return;
    }
    _state = SMHTaskState.pause;
    stateStream.add(_state);
    SMHTaskInfo info = getTaskInfo();
    if (info.cancelToken?.isCancelled == false) {
      try {
        info.cancelToken?.cancel(reason);
      } catch (_) {}
    }
    if (finishCalBack != null) {
      SMHError smhError = SMHError();
      smhError.smhCode = 'Pause';
      smhError.smhMessage = 'pause';
      smhError.smhZhMessage = '暂停';
      smhError.error = reason;
      finishCalBack!(null, smhError);
    }

    currentQueue?.onTaskFinishHandle(this);
    currentQueue = null;
    receivePort.close();
    isolate.kill();
  }

  // error 或者 暂停 可以继续。
  void resume() {
    if (_state == SMHTaskState.waiting ||
        _state == SMHTaskState.processing ||
        _state == SMHTaskState.success) {
      return;
    }

    _state = SMHTaskState.waiting;
    stateStream.add(_state);
    this.getTaskInfo().cancelToken = CancelToken();
    SMHTaskManager.instance.addTask(this);
  }

  void start() async {
    Map<String, String> reportParams = {};
    DateTime startTime = DateTime.now();
    _state = SMHTaskState.processing;
    stateStream.add(_state);
    receivePort = ReceivePort();
    receivePort.listen((data) {
      SendPort? subSencPort;
      if (data['code'] == 'finish') {
        if (finishCalBack != null) {
          SMHError? error = data['error'];
          reportParams['took_time'] =
              DateTime.now().difference(startTime).inMilliseconds.toString();
          reportParams['space_id'] = getTaskInfo().spaceId;
          reportParams['host'] = SMHServicesManager
                  .servicesManager.serviceMap[SMHAPIServiceKey]?.baseUrl ??
              '';
          reportParams['smh_key'] = SMHServicesManager
                  .servicesManager.serviceMap[SMHAPIServiceKey]?.baseUrl +
              getTaskInfo().filePath;
          if (error != null) {
            reportParams['error_service_name'] = SMHRequest.getServiceName();
            reportParams['error_status_code'] = error.statusCode.toString();
            reportParams['error_message'] = error.statusMessage.toString() +
                ':' +
                error.smhMessage.toString();
            reportParams['error_code'] = error.smhCode.toString();
            reportParams['error_type'] = error.error.toString();
            reportParams['cos_request_id'] = error.cosRequestId ?? '';
            reportParams['request_id'] = error.requestId ?? '';
            _state = SMHTaskState.error;
            int fileSize = 0;
            if (getTaskInfo().option == SMHTaskOption.upload) {
              reportParams['size'] = getTaskInfo().length.toString();
              SMHBeaconManager.manager
                  .reportFail(params: reportParams, eventCode: 'smh_upload');
              fileSize = getTaskInfo().length;
            } else {
              fileSize = File(getTaskInfo().localPath).lengthSync();
              reportParams['size'] = fileSize.toString();
              SMHBeaconManager.manager
                  .reportFail(params: reportParams, eventCode: 'smh_download');
            }

            int tookTime = DateTime.now().difference(startTime).inSeconds;
            if (tookTime > 0 && fileSize > 0) {
              if ((fileSize / tookTime) > 512 * 1024) {
                SMHTaskManager.instance.increaseConcurrentCount();
              } else {
                SMHTaskManager.instance.decreaseConcurrentCount();
              }
            }
          } else {
            _state = SMHTaskState.success;
            if (getTaskInfo().option == SMHTaskOption.upload) {
              reportParams['name'] = 'SMHTransferService.upload';
              reportParams['size'] = getTaskInfo().length.toString();
              SMHBeaconManager.manager.reportSuccess(
                params: reportParams,
                eventCode: 'smh_upload',
              );
            } else {
              reportParams['name'] = 'SMHTransferService.download';
              reportParams['size'] =
                  File(getTaskInfo().localPath).lengthSync().toString();
              SMHBeaconManager.manager.reportSuccess(
                params: reportParams,
                eventCode: 'smh_download',
              );
            }
          }
          stateStream.add(_state);
          finishCalBack!(data['result'], error);
        }
        finish();
        return;
      }

      if (data['code'] == 'confirmKey') {
        String confirmKey = data['result'];
        if (confirmKeyCalBack != null) {
          confirmKeyCalBack!(confirmKey);
        }
        return;
      }

      if (data['code'] == 'processing') {
        Map value = data['result'];
        if (onSendProgress != null) {
          onSendProgress!(value['count'], value['total']);
        }

        if (onReceiveProgress != null) {
          onReceiveProgress!(value['count'], value['total']);
        }
        return;
      }

      if (data['code'] == 'init') {
        subSencPort = data['result'];
        SMHServicesManager servicesManager = SMHServicesManager.servicesManager;
        Map<String, dynamic> envMap = {
          'currentHost': servicesManager.currentHost,
          'currentType': servicesManager.currentType,
        };
        final info = getTaskInfo();
        subSencPort!.send({'data': info, 'env': envMap});
        return;
      }
    });
    isolate = await createIsolate(receivePort.sendPort);
  }

  Future<Isolate> createIsolate(SendPort sendPort);

  SMHTaskInfo getTaskInfo();

  void dispose() {
    stateStream.close();
  }

  @override
  bool operator ==(other) {
    if (other is! SMHTask) {
      return false;
    }
    return this.taskId == other.taskId;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => this.taskId;
}

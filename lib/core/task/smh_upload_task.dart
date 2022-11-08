import 'dart:isolate';

import 'package:smh_flutter_sdk/apis/file_apis/smh_api_transfer_apis.dart';
import 'package:smh_flutter_sdk/core/base/smh_services_manager.dart';
import 'package:smh_flutter_sdk/core/services/smh_api_service.dart';
import 'package:smh_flutter_sdk/core/services/smh_user_service.dart';
import 'package:smh_flutter_sdk/core/task/smh_task_info.dart';

import 'base/smh_task.dart';

typedef SMHConfirmKeyCalBack<T> = Function(String? confirmKey);

class SMHUploadTask extends SMHTask {
  // 任务参数
  late SMHTaskInfo info;
  @override
  Future<Isolate> createIsolate(SendPort sendPort) {
    return Isolate.spawn(executTask, sendPort);
  }

  @override
  getTaskInfo() {
    return info;
  }
}

void executTask(SendPort sendPort) {
  ReceivePort receivePort = new ReceivePort();
  sendPort
      .send({'code': 'init', 'result': receivePort.sendPort, 'error': null});
  receivePort.listen((data) async {
    SMHTaskInfo info = data['data'] as SMHTaskInfo;
    Map<String, dynamic> envMap = data['env'];
    SMHServicesManager().registerService(SMHAPIService());
    SMHServicesManager().registerService(SMHUserService());
    SMHServicesManager()
        .configHostWithEnv(envMap['currentHost'], envMap['currentType']);
    SMHServicesManager().setupCurrentEnv(envMap['currentType']);
    upload(info, sendPort);
  });
}

void upload(SMHTaskInfo info, SendPort sendPort) {
  SMHApiTransferApis().uploadTask(
      info.libraryId,
      info.spaceId,
      info.userId,
      info.body,
      info.filePath,
      info.length,
      (result, error) {
        sendPort.send({'code': 'finish', 'result': result, 'error': error});
      },
      userToken: info.userToken,
      orgId: info.orgId,
      slice: info.slice,
      enableVerification: info.enableVerification,
      confirmKey: info.confirmKey,
      cancelToken: info.cancelToken,
      confirmKeyCalBack: (confirmKey) {
        sendPort.send({
          'code': 'confirmKey',
          'result': confirmKey,
          'error': null,
        });
      },
      conflictResolutionStrategy: info.conflictResolutionStrategy,
      onSendProgress: (int count, int total) {
        sendPort.send({
          'code': 'processing',
          'result': {'count': count, 'total': total},
          'error': null
        });
      });
}

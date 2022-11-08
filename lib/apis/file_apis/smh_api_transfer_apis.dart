import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:intl/intl.dart';
import 'package:smh_flutter_sdk/core/accesstoken/smh_accesstoken_interceptor.dart';
import 'package:smh_flutter_sdk/core/accesstoken/smh_transfer_accesstoken_handle.dart';
import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/base/smh_services_manager.dart';
import 'package:smh_flutter_sdk/core/error/smh_error.dart';
import 'package:smh_flutter_sdk/core/interceptors/smh_retry_interceptor.dart';
import 'package:smh_flutter_sdk/core/request/smh_api_requests.dart';
import 'package:smh_flutter_sdk/core/services/smh_api_service.dart';
import 'package:smh_flutter_sdk/core/services/smh_transfer_service.dart';
import 'package:smh_flutter_sdk/core/task/base/smh_task_manager.dart';
import 'package:smh_flutter_sdk/core/task/smh_task_info.dart';
import 'package:smh_flutter_sdk/core/task/smh_upload_task.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_begin_part_upload_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_part_upload_state_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_simple_upload_params_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_upload_fiile_result_entity.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_access_token_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/crc64_utils.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';
import 'package:smh_flutter_sdk/utils/md5_utils.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';

import '../../core/task/smh_download_task.dart';

const int SMHUploadLengthLimit = 1 * 1024 * 1024;
const int SMHUploadSlinceLength = 1 * 1024 * 1024;

class SMHApiTransferApis {
  String urlPrefix = 'v1/file';

  SMHTransferService? uploadService;
  String? _confirmKey;
  late String _libraryId;
  late String _spaceId;
  String? _spaceOrgId;
  late String _userId;
  String? _userToken;
  String? _orgId;
  DateTime? _accessTokenExpirationTime;
  String? _mAccessToken;
  late String _filePath;
  CancelToken? _cancelToken;
  late SMHConflictResolutionStrategy _conflictResolutionStrategy;
  ProgressCallback? _onSendProgress;
  ProgressCallback? _onReceiveProgress;
  SMHConfirmKeyCalBack? _confirmKeyCalBack;
  late SMHFinishCalBack _finishCalBack;
  late bool _enableVerification;
  int? _slice;
  int _length = 0;
  File? _uploadFile;
  List<int>? _uploadBody;
  int _uploadSize = 0;
  int _startPartNumber = 0;

  int _localtimeOffset = 0;

  SMHPartUploadStateEntity? _exitUploadPart;

  SMHBeginPartUploadEntity? _beginPartUploadInfo;

  /// 文件上传
  static Future<SMHUploadTask> upload({
    required String libraryId,
    required String spaceId,
    required String userId,
    required dynamic body,
    required String filePath,
    required String? userToken,
    required String orgId,
    String? spaceOrgId,
    int? slice,
    String? confirmKey,
    bool enableVerification = false,
    SMHConflictResolutionStrategy conflictResolutionStrategy =
        SMHConflictResolutionStrategy.rename,
    SMHConfirmKeyCalBack? confirmKeyCalBack,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    SMHFinishCalBack? finishCalBack,
  }) async {
    SMHUploadTask task = SMHUploadTask();
    SMHTaskInfo info = SMHTaskInfo();
    info.option = SMHTaskOption.upload;
    info.taskId = task.taskId;
    info.libraryId = libraryId;
    info.spaceId = spaceId;
    info.userToken = userToken;
    info.orgId = orgId;
    info.spaceOrgId = spaceOrgId;
    info.userId = userId;
    info.body = body;
    task.finishCalBack = finishCalBack;
    info.filePath = filePath;
    info.slice = slice;
    info.confirmKey = confirmKey;
    task.confirmKeyCalBack = confirmKeyCalBack;
    info.enableVerification = enableVerification;
    info.cancelToken = CancelToken();
    info.conflictResolutionStrategy = conflictResolutionStrategy;
    task.onSendProgress = onSendProgress;
    task.onReceiveProgress = onReceiveProgress;
    task.info = info;

    if (body is String) {
      info.length = File(body).lengthSync();
    } else if (body is List<int>) {
      info.length = body.length;
    } else if (body is File) {
      info.length = body.lengthSync();
    }
    SMHTaskManager.instance.addTask(task);
    return task;
  }

  uploadTask(
    String libraryId,
    String spaceId,
    String userId,
    dynamic body,
    String filePath,
    int fileLength,
    SMHFinishCalBack finishCalBack, {
    String? userToken,
    String? orgId,
    String? spaceOrgId,
    int? slice,
    String? confirmKey,
    CancelToken? cancelToken,
    bool enableVerification = false,
    SMHConflictResolutionStrategy conflictResolutionStrategy =
        SMHConflictResolutionStrategy.rename,
    SMHConfirmKeyCalBack? confirmKeyCalBack,
    ProgressCallback? onSendProgress,
  }) async {
    if (body is String) {
      _uploadFile = File(body);
    } else if (body is List<int>) {
      _uploadBody = body;
    } else if (body is File) {
      _uploadFile = body;
    } else {
      SMHError error = SMHError();
      error.smhCode = 'BodyTypeUnsupported';
      error.smhMessage = 'body type is unsupported';
      error.smhZhMessage = 'body类型不支持';
      finishCalBack(null, error);
      return;
    }

    _userToken = userToken;
    _orgId = orgId;
    _spaceOrgId = spaceOrgId;
    _filePath = filePath;
    _confirmKey = confirmKey;
    _libraryId = libraryId;
    _spaceId = spaceId;
    _userId = userId;
    _confirmKeyCalBack = confirmKeyCalBack;
    _cancelToken = cancelToken;
    _enableVerification = enableVerification;
    _conflictResolutionStrategy = conflictResolutionStrategy!;
    _onSendProgress = onSendProgress;
    _finishCalBack = finishCalBack;

    _length = fileLength;

    if (confirmKey != null) {
      _startPartNumber = 0;
      _uploadSize = 0;
      try {
        _continuePartUpload();
      } on SMHError catch (e) {
        _finishCalBack(null, e);
      }
      return;
    }
    if (_length < 1024 * 1024) {
      try {
        _simpleUpload();
      } on SMHError catch (e) {
        _finishCalBack(null, e);
      }
      return;
    }
    try {
      _quickUpload();
    } on SMHError catch (e) {
      _finishCalBack(null, e);
    }
  }

  _quickUpload() async {
    Digest? beginningHash;
    if (_uploadBody != null) {
      final beginHash = _uploadBody!.sublist(0, SMHUploadSlinceLength);
      beginningHash = sha256.convert(beginHash);
    } else if (_uploadFile != null) {
      final beginHash =
          await toBytes(_uploadFile!.openRead(0, SMHUploadSlinceLength));
      beginningHash = sha256.convert(beginHash);
    }

    final createDate = _createDate();

    String? accessToken;
    try {
      accessToken = await _getAccessToken();
    } on SMHError catch (e) {
      _finishCalBack(null, e);
      return;
    }

    // 匹配秒传
    SMHResponse? response1;
    try {
      response1 = await SMHApiPostRequest().request(
          [
            urlPrefix,
            _libraryId,
            _spaceId,
            _filePath,
          ],
          urlMethod: 'multipart',
          header: {'x-smh-meta-creation-date': createDate},
          query: {
            'conflict_resolution_strategy': _conflictResolutionStrategy.name,
            'filesize': _length,
            'user_id': _userId,
            'access_token': accessToken
          },
          body: {
            "beginningHash": beginningHash.toString(),
            "size": _length.toString()
          });
    } on SMHError catch (e) {
      _finishCalBack(null, e);
      return;
    }

    if (response1?.statusCode == 202) {
      // 匹配成功
      // 计算全部文件sha256
      Digest? fullHash = beginningHash;
      for (int i = SMHUploadSlinceLength;
          i < _length;
          i += SMHUploadSlinceLength) {
        List<int> begin = [];
        begin.addAll(fullHash!.bytes);

        if (_uploadBody != null) {
          var temp = _uploadBody!
              .sublist(i, i + min(SMHUploadSlinceLength, _length - i));
          begin.addAll(temp);
          fullHash = sha256.convert(begin);
        } else if (_uploadFile != null) {
          var temp = _uploadFile!
              .openRead(i, i + min(SMHUploadSlinceLength, _length - i));
          begin.addAll(await toBytes(temp));
          fullHash = sha256.convert(begin);
        }
      }
      final createDate = _createDate();

      // 校验全部文件
      SMHResponse? response2;
      try {
        response2 = await SMHApiPostRequest<SMHUploadFileResultEntity>()
            .request([urlPrefix, _libraryId, _spaceId, _filePath],
                urlMethod: 'multipart',
                header: {'x-smh-meta-creation-date': createDate},
                query: {
                  'conflict_resolution_strategy':
                      _conflictResolutionStrategy.name,
                  'filesize': _length,
                  'user_id': _userId,
                  'access_token': accessToken
                },
                body: {
                  'fullHash': fullHash.toString(),
                  "beginningHash": beginningHash.toString(),
                  "size": _length
                });
      } on SMHError catch (e) {
        _finishCalBack(null, e);
        return;
      }

      if (response2?.statusCode == 200) {
        _finishCalBack(response2, null);
      } else {
        _startPartUpload();
      }
    } else {
      _startPartUpload();
    }
  }

  Future<Uint8List> toBytes(Stream<List<int>> stream) {
    var completer = Completer<Uint8List>();
    var sink = ByteConversionSink.withCallback(
      (bytes) => completer.complete(
        Uint8List.fromList(bytes),
      ),
    );
    stream.listen((val) => sink.add(val),
        onError: completer.completeError,
        onDone: sink.close,
        cancelOnError: true);
    return completer.future;
  }

  _simpleUpload() async {
    String? accessToken;
    try {
      accessToken = await _getAccessToken();
    } on SMHError catch (e) {
      _finishCalBack(null, e);
      return;
    }
    SMHResponse<SMHSimpleUploadParamsEntity>? response;
    try {
      response = await SMHApiPutRequest<SMHSimpleUploadParamsEntity>().request(
        [urlPrefix, _libraryId, _spaceId, _filePath],
        query: {
          'conflict_resolution_strategy': _conflictResolutionStrategy.name,
          'filesize': _length,
          'user_id': _userId,
          'access_token': accessToken
        },
      );
    } on SMHError catch (e) {
      _finishCalBack(null, e);
      return;
    }

    uploadService = SMHTransferService('https://' + response!.data!.domain!);
    uploadService!.configUploadRetry();

    try {
      if (_uploadFile != null) {
        await uploadService!.dio.put(response.data!.path!,
            data: _uploadFile!.openRead(),
            options: Options(headers: response.data!.headers!.toJson()));
      } else {
        await uploadService!.dio.put(response.data!.path!,
            data: _uploadBody,
            options: Options(headers: response.data!.headers!.toJson()));
      }
    } on DioError catch (error) {
      SMHError smhError = uploadService!.errorFactory(error);
      _finishCalBack(null, smhError);
      return;
    }

    _confirmKey = response.data!.confirmKey!;
    _finishUpload();
  }

  _startPartUpload() async {
    final createDate = _createDate();
    String? accessToken;
    try {
      accessToken = await _getAccessToken();
    } on SMHError catch (e) {
      _finishCalBack(null, e);
      return;
    }
    SMHResponse<SMHBeginPartUploadEntity>? response;
    try {
      response = await SMHApiPostRequest<SMHBeginPartUploadEntity>().request(
          [
            urlPrefix,
            _libraryId,
            _spaceId,
            _filePath,
          ],
          urlMethod: 'multipart',
          header: {'x-smh-meta-creation-date': createDate},
          query: {
            'conflict_resolution_strategy': _conflictResolutionStrategy.name,
            'filesize': _length,
            'user_id': _userId,
            'access_token': accessToken
          });
    } on SMHError catch (e) {
      _finishCalBack(null, e);
      return;
    }
    if (response != null && response.headers != null) {
      _computeLocalTimeOffset(response.headers!);
    }

    _beginPartUploadInfo = response!.data;
    _confirmKey = _beginPartUploadInfo?.confirmKey;
    if (_confirmKeyCalBack != null) {
      _confirmKeyCalBack!(_confirmKey);
    }
    _uploadMultiParts();
  }

  _uploadMultiParts() {
    _uploadOffsetBodys(_getFileLocalUploadParts());
  }

  late List<SMHPartUploadItem> _uploadParts;
  _continueMultiUpload(SMHPartUploadStateEntity exitUpload) {
    bool isChange = false;
    _exitUploadPart = exitUpload;
    _uploadParts = [];
    List<SMHPartUploadItem> allParts = _getFileLocalUploadParts();
    Map<String, dynamic> existMap = {};
    for (SMHPartUploadStateParts part in _exitUploadPart!.parts!) {
      existMap.addKeyWithObject((part.partNumber ?? 0).toString(), part);
    }

    List<SMHPartUploadItem> resetParts = [];
    for (SMHPartUploadItem item in allParts) {
      SMHPartUploadStateParts? part = existMap[(item.index + 1).toString()];
      if (part == null) {
        resetParts.addObject(item);
      } else {
        if (part.size != item.slice) {
          isChange = true;
          break;
        } else {
          SMHPartUploadItem item = SMHPartUploadItem();
          item.slice = part.size!;
          item.index = part.partNumber! - 1;
          item.offset = part.partNumber! * part.size!;
          _uploadSize += item.slice;
          _uploadParts.addObject(item);
        }
      }
    }
    if (isChange == false) {
      if (resetParts.length == 0) {
        _finishUpload();
      } else {
        _uploadOffsetBodys(resetParts);
      }
    } else {
      _getContinueInfo();
      if (_uploadSize == _length) {
        _finishUpload();
      } else {
        _uploadOffsetBodys(_getFileLocalUploadParts());
      }
    }
  }

  _getContinueInfo() {
    if (_exitUploadPart == null ||
        _exitUploadPart!.parts == null ||
        _exitUploadPart!.parts!.length == 0) return;
    _uploadParts = [];
    if (_exitUploadPart!.parts![0].partNumber != 1) return;
    _uploadSize = 0;
    for (int i = 0; i < _exitUploadPart!.parts!.length; i++) {
      SMHPartUploadStateParts part1 = _exitUploadPart!.parts![i];
      SMHPartUploadItem item1 = SMHPartUploadItem();
      item1.index = part1.partNumber!;
      item1.offset = _uploadSize;
      _uploadSize += part1.size!;
      _uploadParts.add(item1);
      if (i == _exitUploadPart!.parts!.length - 1) {
        break;
      }
      SMHPartUploadStateParts part2 = _exitUploadPart!.parts![i + 1];
      if (part1.partNumber! + 1 != part2.partNumber) {
        break;
      }
    }
    _startPartNumber = _uploadParts.length;
  }

  _finishUpload() async {
    SMHResponse<SMHUploadFileResultEntity>? response;
    String? accessToken;
    try {
      accessToken = await _getAccessToken();
    } on SMHError catch (e) {
      _finishCalBack(null, e);
      return;
    }

    try {
      response = await SMHApiPostRequest<SMHUploadFileResultEntity>().request(
          [urlPrefix, _libraryId, _spaceId, _confirmKey!],
          urlMethod: 'confirm',
          query: {
            'conflict_resolution_strategy': _conflictResolutionStrategy.name,
            'access_token': accessToken,
            'user_id': _userId
          });
    } on SMHError catch (e) {
      _finishCalBack(null, e);
      return;
    }
    _finishCalBack(response, null);
  }

  _getFileLocalUploadParts() {
    List<SMHPartUploadItem> allParts = [];
    var offset = _uploadSize;
    var restContentLength = _length - _uploadSize;
    for (int i = _startPartNumber;; i++) {
      var slice = 0;
      var maxSlice = (_length * 1.0 / 10000).ceil();
      var uploadSliceLength = SMHUploadSlinceLength;
      if (_slice != null && _slice! > 10) {
        uploadSliceLength = _slice!;
      }
      uploadSliceLength =
          _length / uploadSliceLength > 10000 ? maxSlice : uploadSliceLength;
      slice = restContentLength >= uploadSliceLength
          ? uploadSliceLength
          : restContentLength;
      SMHPartUploadItem part = SMHPartUploadItem();
      allParts.add(part);
      part.slice = slice;
      part.index = i;
      part.offset = offset;
      offset += slice;
      restContentLength -= slice;
      if (restContentLength <= 0) {
        break;
      }
    }
    return allParts;
  }

  _continuePartUpload() async {
    String? accessToken;
    try {
      accessToken = await _getAccessToken();
    } on SMHError catch (e) {
      _finishCalBack(null, e);
      return;
    }
    SMHResponse<SMHPartUploadStateEntity>? response;
    try {
      response = await SMHApiGetRequest<SMHPartUploadStateEntity>().request(
          [urlPrefix, _libraryId, _spaceId, _confirmKey!],
          urlMethod: 'upload',
          query: {'access_token': accessToken, 'user_id': _userId});
    } on SMHError catch (e) {
      _finishCalBack(null, e);
      return;
    }

    if (response != null && response.headers != null) {
      _computeLocalTimeOffset(response.headers!);
    }
    if (response?.data?.confirmed == true) {
      _finishUpload();
    } else if (response?.data?.parts == null &&
        response?.data?.uploadPartInfo == null) {
      _startPartUpload();
    } else {
      _continueMultiUpload(response!.data!);
    }
  }

  _uploadOffsetBodys(List<SMHPartUploadItem> resetParts) async {
    late String domain;
    late String path;
    late String uploadId;
    late SMHBeginPartUploadHeaders header;
    if (_beginPartUploadInfo != null) {
      domain = _beginPartUploadInfo!.domain!;
      path = _beginPartUploadInfo!.path!;
      uploadId = _beginPartUploadInfo!.uploadId!;
    }

    if (_exitUploadPart != null) {
      domain = _exitUploadPart!.uploadPartInfo!.domain!;
      path = _exitUploadPart!.uploadPartInfo!.path!;
      uploadId = _exitUploadPart!.uploadPartInfo!.uploadId!;
    }
    uploadService = SMHTransferService('https://' + domain);
    uploadService!.configUploadRetry();
    for (int i = 0; i < resetParts.length; i++) {
      _refreshUploadInfo();

      if (_beginPartUploadInfo != null) {
        header = _beginPartUploadInfo!.headers!;
      }

      if (_exitUploadPart != null) {
        header = SMHBeginPartUploadHeaders.fromJson(
            _exitUploadPart!.uploadPartInfo!.headers!.toJson());
      }
      SMHPartUploadItem item = resetParts[i];
      Response? response;
      try {
        Options options =
            Options(headers: {HttpHeaders.contentLengthHeader: item.slice});
        options.headers!.addAll(header.toJson());
        if (_uploadFile != null) {
          response = await uploadService!.dio.put(path,
              queryParameters: {
                'partNumber': (item.index + 1).toString(),
                'uploadId': uploadId
              },
              data:
                  _uploadFile!.openRead(item.offset, item.offset + item.slice),
              options: options, onSendProgress: (count, total) {
            if (_onSendProgress != null) {
              _onSendProgress!(_uploadSize + count, _length);
            }
          });
        } else {
          Iterable<List<int>> data = [
            _uploadBody!.sublist(item.offset, item.offset + item.slice)
          ].map((e) => e);
          Stream<List<int>> stream = Stream.fromIterable(data);
          response = await uploadService!.dio.put(path,
              queryParameters: {
                'partNumber': (item.index + 1).toString(),
                'uploadId': uploadId
              },
              data: stream,
              options: options, onSendProgress: (count, total) {
            if (_onSendProgress != null) {
              _onSendProgress!(_uploadSize + count, _length);
            }
          });
        }
      } on DioError catch (error) {
        _finishCalBack(null, uploadService!.errorFactory(error));
        return;
      }
      if (response != null && response.headers != null) {
        _computeLocalTimeOffset(response.headers);
      }

      if (_enableVerification) {
        String? etag;
        String? localMd5;
        try {
          List<String> etagList = response.headers['etag'] as List<String>;
          etag = etagList[0];
          if (etag != null) {
            etag = etag.substring(1, etag.length - 1);
          }
        } catch (_) {}
        if (_uploadFile != null) {
          localMd5 = await SMHMD5Utils.smhFile2md5(_uploadFile!,
              start: item.offset, end: item.offset + item.slice);
        } else if (_uploadBody != null) {
          localMd5 = SMHMD5Utils.smhData2md5(
              _uploadBody!.sublist(item.offset, item.offset + item.slice));
        }
        if (etag != localMd5) {
          SMHError error = SMHError();
          error.smhCode = 'DataIntegrityError';
          error.smhMessage =
              '分片:上传过程中MD5校验与本地不一致，请检查本地文件在上传过程中是否发生了变化,建议调用删除接口将COS上的文件删除并重新上传,本地计算的 MD5 值:$localMd5, 返回的 ETag值:$etag';
          error.smhZhMessage =
              '分片:上传过程中MD5校验与本地不一致，请检查本地文件在上传过程中是否发生了变化,建议调用删除接口将COS上的文件删除并重新上传,本地计算的 MD5 值:$localMd5, 返回的 ETag值:$etag';
          _finishCalBack(null, error);
          return;
        }
      }
      _uploadSize += item.slice;
    }
    if (_onSendProgress != null) {
      _onSendProgress!(_uploadSize, _uploadSize);
    }

    _finishUpload();
  }

  _refreshUploadInfo() {
    if (_confirmKey == null) {
      return;
    }

    if (_beginPartUploadInfo != null || _exitUploadPart != null) {
      String? expirationTime = _beginPartUploadInfo?.expiration ??
          _exitUploadPart?.uploadPartInfo?.expiration ??
          null;
      if (expirationTime != null) {
        final expiration =
            DateFormat('yyyy-MM-ddTHH:mm:ss').parseUTC(expirationTime);
        if (expiration.isAfter(
            DateTime.now().add(Duration(seconds: 300 - _localtimeOffset)))) {
          return;
        }
      }
    }

    Future.microtask(() async {
      SMHResponse? response;
      try {
        response = await SMHApiPostRequest().request(
            [urlPrefix, _libraryId, _spaceId, _confirmKey!],
            urlMethod: 'renew',
            query: {'access_token': _mAccessToken, 'user_id': _userId});
      } on SMHError catch (e) {
        _finishCalBack(null, e);
        return;
      }
      _exitUploadPart = null;
      _beginPartUploadInfo = SMHBeginPartUploadEntity.fromJson(response!.data);
    });
  }

  static Future<SMHDownloadTask> download({
    required String libraryId,
    required String spaceId,
    required String userId,
    required String localPath,
    required String filePath,
    required String userToken,
    required String orgId,
    int? offset = 0,
    String? spaceOrgId,
    bool enableVerification = false,
    ProgressCallback? onReceiveProgress,
    SMHFinishCalBack? finishCalBack,
  }) async {
    try {
      File file = File(localPath);
      int mOffset = file.lengthSync();
      if (offset == null) {
        offset = mOffset;
      }
    } catch (_) {}
    SMHDownloadTask task = SMHDownloadTask();
    SMHTaskInfo info = SMHTaskInfo();
    info.option = SMHTaskOption.download;
    info.taskId = task.taskId;
    info.offset = offset;
    info.libraryId = libraryId;
    info.spaceId = spaceId;
    info.enableVerification = enableVerification;
    info.userToken = userToken;
    info.orgId = orgId;
    info.spaceOrgId = spaceOrgId;
    info.userId = userId;
    info.localPath = localPath;
    task.finishCalBack = finishCalBack;
    info.filePath = filePath;
    info.cancelToken = CancelToken();
    task.onReceiveProgress = onReceiveProgress;
    task.info = info;
    SMHTaskManager.instance.addTask(task);
    return task;
  }

  _retryDownloadTask(
    String libraryId,
    String spaceId,
    String userId,
    String localPath,
    String filePath,
    SMHFinishCalBack finishCalBack, {
    required int retryCount,
    String? userToken,
    String? orgId,
    bool? enableVerification,
    String? spaceOrgId,
    String? historyId,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    int offset = 0;
    try {
      File file = File(localPath);
      offset = file.lengthSync();
    } catch (_) {}
    retryCount++;
    Future.delayed(Duration(seconds: 5), () {
      downloadTask(
        libraryId,
        spaceId,
        userId,
        localPath,
        filePath,
        finishCalBack,
        retryCount: retryCount,
        userToken: userToken,
        orgId: orgId,
        enableVerification: enableVerification,
        spaceOrgId: spaceOrgId,
        offset: offset,
        historyId: historyId,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    });
  }

  downloadTask(
    String libraryId,
    String spaceId,
    String userId,
    String localPath,
    String filePath,
    SMHFinishCalBack finishCalBack, {
    int retryCount = 0,
    String? userToken,
    String? orgId,
    bool? enableVerification,
    String? spaceOrgId,
    int? offset,
    String? historyId,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    _userToken = userToken;
    _orgId = orgId;
    _spaceOrgId = spaceOrgId;
    _spaceId = spaceId;
    try {
      _mAccessToken = await _getAccessToken();
    } on SMHError catch (e) {
      finishCalBack(null, e);
      return;
    }

    Map<String, dynamic> query = {};
    query.addKeyWithObject('history_id', historyId);
    query.addKeyWithObject('purpose', 'download');
    query.addKeyWithObject('access_token', _mAccessToken);
    query.addKeyWithObject('user_id', userId);
    SMHAPIService apiServices = SMHServicesManager
        .servicesManager.serviceMap[SMHAPIServiceKey] as SMHAPIService;
    SMHTransferService downloadService =
        SMHTransferService(apiServices.baseUrl);
    Response? response;
    try {
      Options options = Options(headers: {'Range': 'bytes=$offset-'});
      options.followRedirects = true;
      options.validateStatus = null;
      response = await _innerDownload(
        downloadService.dio,
        'api/' + urlPrefix + '/' + libraryId + '/' + spaceId + '/' + filePath,
        localPath,
        onReceiveProgress: (count, total) {
          onReceiveProgress!(
            count + offset!,
            total + offset,
          );
        },
        cancelToken: cancelToken,
        queryParameters: query,
        options: options,
        deleteOnError: false,
      );
    } on DioError catch (e) {
      if (SMHAccessTokenInterceptor.checkAccessTokenError(e)) {
        _mAccessToken = null;
      }
      if ((await SMHRetryInterceptor.shouldRetry(e)) && retryCount < 3) {
        _retryDownloadTask(
          libraryId,
          spaceId,
          userId,
          localPath,
          filePath,
          finishCalBack,
          retryCount: retryCount,
          userToken: userToken,
          orgId: orgId,
          enableVerification: enableVerification,
          spaceOrgId: spaceOrgId,
          historyId: historyId,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
        );
      } else {
        finishCalBack(null, downloadService.errorFactory(e));
      }
      return;
    }

    if (enableVerification == true) {
      String? crc64;
      try {
        crc64 = response.data.headers['x-cos-hash-crc64ecma'][0];
      } catch (_) {}
      if (crc64 != null &&
          SMHCRC64Utils.calculateCRC64(localPath, crc64) == false) {
        SMHError error = SMHError();
        error.smhCode = 'Crc64VerificationFails';
        error.smhMessage =
            'The server file has been changed. Please download it again.';
        error.smhZhMessage = '服务端文件已改变请重新下载。';

        /// 校验不同过，删除本地文件。
        File locaFile = File(localPath);
        if (locaFile.existsSync()) {
          File(localPath).delete();
        }
        finishCalBack(null, error);
        return;
      }
    }

    SMHResponse<Map<String, dynamic>> entity = SMHResponse();
    entity.data = response.data.headers;
    entity.statusCode = response.statusCode;
    entity.statusMessage = response.statusMessage;
    finishCalBack(entity, null);
  }

  _createDate() {
    return DateTime.now().toUtc().toString();
  }

  Future<String?> _getAccessToken() async {
    if (_mAccessToken == null && (_userToken == null || _orgId == null)) {
      SMHError error = SMHError();
      error.smhCode = 'DownloadTokenIsEmpty';
      error.smhZhMessage = '请设置accessToken或者userToken和orgId';
      error.smhMessage = 'accessToken or userToken and orgId is empty';
      throw error;
    }

    if (_mAccessToken != null && _accessTokenExpirationTime == null) {
      return _mAccessToken;
    }

    if (_mAccessToken == null ||
        _accessTokenExpirationTime == null ||
        (_accessTokenExpirationTime != null &&
            DateTime.now().isAfter(_accessTokenExpirationTime!))) {
      SMHAccessTokenEntity? accessTokenEntity;
      try {
        SMHTransferAccessTokenHandle handle =
            SMHTransferAccessTokenHandle(_orgId!, _userToken!);
        accessTokenEntity =
            await handle.refreshAccessToken(_spaceId, _spaceOrgId);
      } on SMHError catch (e) {
        throw e;
      }
      if (accessTokenEntity != null) {
        _mAccessToken = accessTokenEntity.accessToken!;
        _accessTokenExpirationTime =
            DateTime.now().add(Duration(seconds: accessTokenEntity.expiresIn!));
      }
    }
    return _mAccessToken;
  }

  Future<Response> _innerDownload(
    Dio dio,
    String urlPath,
    savePath, {
    ProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    bool deleteOnError = true,
    String lengthHeader = Headers.contentLengthHeader,
    data,
    Options? options,
  }) async {
    options ??= DioMixin.checkOptions('GET', options);

    options.responseType = ResponseType.stream;
    Response<ResponseBody> response;
    try {
      response = await dio.request<ResponseBody>(
        urlPath,
        data: data,
        options: options,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      );
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        e.response!.data = null;
      }
      rethrow;
    }

    response.headers = Headers.fromMap(response.data!.headers);

    File file = File(savePath.toString());

    file.createSync(recursive: true);

    var raf = file.openSync(mode: FileMode.append);

    var completer = Completer<Response>();
    var future = completer.future;
    var received = 0;
    var stream = response.data!.stream;
    var compressed = false;
    var total = 0;
    var contentEncoding = response.headers.value(Headers.contentEncodingHeader);
    if (contentEncoding != null) {
      compressed = ['gzip', 'deflate', 'compress'].contains(contentEncoding);
    }
    if (lengthHeader == Headers.contentLengthHeader && compressed) {
      total = -1;
    } else {
      total = int.parse(response.headers.value(lengthHeader) ?? '-1');
    }

    late StreamSubscription subscription;
    Future? asyncWrite;
    var closed = false;
    Future _closeAndDelete() async {
      if (!closed) {
        closed = true;
        await asyncWrite;
        await raf.close();
        if (deleteOnError && file.existsSync()) {
          await file.delete();
        }
      }
    }

    subscription = stream.listen(
      (data) {
        subscription.pause();
        // Write file asynchronously
        asyncWrite = raf.writeFrom(data).then((_raf) {
          // Notify progress
          received += data.length;

          onReceiveProgress?.call(received, total);

          raf = _raf;
          if (cancelToken == null || !cancelToken.isCancelled) {
            subscription.resume();
          }
        }).catchError((err, StackTrace stackTrace) async {
          try {
            await subscription.cancel();
          } finally {
            completer.completeError(DioMixin.assureDioError(
              err,
              response.requestOptions,
            ));
          }
        });
      },
      onDone: () async {
        try {
          await asyncWrite;
          closed = true;
          await raf.close();
          completer.complete(response);
        } catch (e) {
          completer.completeError(DioMixin.assureDioError(
            e,
            response.requestOptions,
          ));
        }
      },
      onError: (e) async {
        try {
          await _closeAndDelete();
        } finally {
          completer.completeError(DioMixin.assureDioError(
            e,
            response.requestOptions,
          ));
        }
      },
      cancelOnError: true,
    );

    cancelToken?.whenCancel.then((_) async {
      await subscription.cancel();
      await _closeAndDelete();
    });

    if (response.requestOptions.receiveTimeout > 0) {
      future = future
          .timeout(Duration(
        milliseconds: response.requestOptions.receiveTimeout,
      ))
          .catchError((Object err) async {
        await subscription.cancel();
        await _closeAndDelete();
        if (err is TimeoutException) {
          throw DioError(
            requestOptions: response.requestOptions,
            error:
                'Receiving data timeout[${response.requestOptions.receiveTimeout}ms]',
            type: DioErrorType.receiveTimeout,
          );
        } else {
          throw err;
        }
      });
    }
    return DioMixin.listenCancelForAsyncTask(cancelToken, future);
  }

  _computeLocalTimeOffset(Headers headers) {
    try {
      if (headers['date'] != null) {
        List dateList = headers['date'] as List;
        DateTime serviceTime =
            DateFormat("EEE',' dd' 'MMM' 'yyyy HH':'mm':'ss 'GMT'")
                .parseUTC(dateList.first);
        _localtimeOffset = DateTime.now().difference(serviceTime).inSeconds;
      } else {
        _localtimeOffset = 0;
      }
    } catch (_) {
      _localtimeOffset = 0;
    }
  }
}

class SMHPartUploadItem {
  late int index;
  late int slice;
  late int offset;
}

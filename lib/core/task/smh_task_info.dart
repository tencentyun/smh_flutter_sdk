import 'dart:io';

import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/task/smh_upload_task.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:dio/dio.dart';

enum SMHTaskOption { upload, download }

class SMHTaskInfo {
  late int taskId;
  late SMHTaskOption option;
  late String localPath;
  late String libraryId;
  late String spaceId;
  late String userId;
  late dynamic body;
  late String filePath;
  late int length;
  late bool enableVerification;
  String? userToken;
  String? orgId;
  String? spaceOrgId;
  int? offset;
  int? slice;
  String? confirmKey;
  CancelToken? cancelToken;
  SMHConflictResolutionStrategy conflictResolutionStrategy =
      SMHConflictResolutionStrategy.rename;
}

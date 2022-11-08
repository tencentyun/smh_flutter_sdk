import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_task_result_entity.dart';

SMHTaskResultEntity $SMHTaskResultEntityFromJson(Map<String, dynamic> json) {
  final SMHTaskResultEntity sMHTaskResultEntity = SMHTaskResultEntity();
  final int? taskId = jsonConvert.convert<int>(json['taskId']);
  if (taskId != null) {
    sMHTaskResultEntity.taskId = taskId;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    sMHTaskResultEntity.status = status;
  }
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    sMHTaskResultEntity.total = total;
  }
  final int? remaining = jsonConvert.convert<int>(json['remaining']);
  if (remaining != null) {
    sMHTaskResultEntity.remaining = remaining;
  }
  final List<SMHTaskResultResult>? result =
      jsonConvert.convertListNotNull<SMHTaskResultResult>(json['result']);
  if (result != null) {
    sMHTaskResultEntity.result = result;
  }
  return sMHTaskResultEntity;
}

Map<String, dynamic> $SMHTaskResultEntityToJson(SMHTaskResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['taskId'] = entity.taskId;
  data['status'] = entity.status;
  data['total'] = entity.total;
  data['remaining'] = entity.remaining;
  data['result'] = entity.result?.map((v) => v.toJson()).toList();
  return data;
}

SMHTaskResultResult $SMHTaskResultResultFromJson(Map<String, dynamic> json) {
  final SMHTaskResultResult sMHTaskResultResult = SMHTaskResultResult();
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    sMHTaskResultResult.code = code;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    sMHTaskResultResult.status = status;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    sMHTaskResultResult.message = message;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHTaskResultResult.path = path;
  }
  return sMHTaskResultResult;
}

Map<String, dynamic> $SMHTaskResultResultToJson(SMHTaskResultResult entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['status'] = entity.status;
  data['message'] = entity.message;
  data['path'] = entity.path;
  return data;
}

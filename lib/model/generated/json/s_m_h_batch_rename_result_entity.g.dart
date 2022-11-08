import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_batch_rename_result_entity.dart';

SMHBatchRenameResultEntity $SMHBatchRenameResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHBatchRenameResultEntity sMHBatchRenameResultEntity =
      SMHBatchRenameResultEntity();
  final List<SMHBatchRenameResultResult>? result = jsonConvert
      .convertListNotNull<SMHBatchRenameResultResult>(json['result']);
  if (result != null) {
    sMHBatchRenameResultEntity.result = result;
  }
  final int? taskId = jsonConvert.convert<int>(json['taskId']);
  if (taskId != null) {
    sMHBatchRenameResultEntity.taskId = taskId;
  }
  return sMHBatchRenameResultEntity;
}

Map<String, dynamic> $SMHBatchRenameResultEntityToJson(
    SMHBatchRenameResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['result'] = entity.result?.map((v) => v.toJson()).toList();
  data['taskId'] = entity.taskId;
  return data;
}

SMHBatchRenameResultResult $SMHBatchRenameResultResultFromJson(
    Map<String, dynamic> json) {
  final SMHBatchRenameResultResult sMHBatchRenameResultResult =
      SMHBatchRenameResultResult();
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    sMHBatchRenameResultResult.status = status;
  }
  final List<String>? from =
      jsonConvert.convertListNotNull<String>(json['from']);
  if (from != null) {
    sMHBatchRenameResultResult.from = from;
  }
  final List<String>? to = jsonConvert.convertListNotNull<String>(json['to']);
  if (to != null) {
    sMHBatchRenameResultResult.to = to;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHBatchRenameResultResult.path = path;
  }
  return sMHBatchRenameResultResult;
}

Map<String, dynamic> $SMHBatchRenameResultResultToJson(
    SMHBatchRenameResultResult entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['from'] = entity.from;
  data['to'] = entity.to;
  data['path'] = entity.path;
  return data;
}

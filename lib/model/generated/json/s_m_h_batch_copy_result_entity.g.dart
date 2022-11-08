import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_batch_copy_result_entity.dart';

SMHBatchCopyResultEntity $SMHBatchCopyResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHBatchCopyResultEntity sMHBatchCopyResultEntity =
      SMHBatchCopyResultEntity();
  final List<SMHBatchCopyResultResult>? result =
      jsonConvert.convertListNotNull<SMHBatchCopyResultResult>(json['result']);
  if (result != null) {
    sMHBatchCopyResultEntity.result = result;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHBatchCopyResultEntity.path = path;
  }
  final int? taskId = jsonConvert.convert<int>(json['taskId']);
  if (taskId != null) {
    sMHBatchCopyResultEntity.taskId = taskId;
  }
  return sMHBatchCopyResultEntity;
}

Map<String, dynamic> $SMHBatchCopyResultEntityToJson(
    SMHBatchCopyResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['result'] = entity.result?.map((v) => v.toJson()).toList();
  data['taskId'] = entity.taskId;
  data['path'] = entity.path;
  return data;
}

SMHBatchCopyResultResult $SMHBatchCopyResultResultFromJson(
    Map<String, dynamic> json) {
  final SMHBatchCopyResultResult sMHBatchCopyResultResult =
      SMHBatchCopyResultResult();
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    sMHBatchCopyResultResult.status = status;
  }
  final String? copyFrom = jsonConvert.convert<String>(json['copyFrom']);
  if (copyFrom != null) {
    sMHBatchCopyResultResult.copyFrom = copyFrom;
  }
  final List<String>? to = jsonConvert.convertListNotNull<String>(json['to']);
  if (to != null) {
    sMHBatchCopyResultResult.to = to;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHBatchCopyResultResult.path = path;
  }
  return sMHBatchCopyResultResult;
}

Map<String, dynamic> $SMHBatchCopyResultResultToJson(
    SMHBatchCopyResultResult entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['copyFrom'] = entity.copyFrom;
  data['to'] = entity.to;
  data['path'] = entity.path;
  return data;
}

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_batch_delete_result_entity.dart';

SMHBatchDeleteResultEntity $SMHBatchDeleteResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHBatchDeleteResultEntity sMHBatchDeleteResultEntity =
      SMHBatchDeleteResultEntity();
  final List<SMHBatchDeleteResultResult>? result = jsonConvert
      .convertListNotNull<SMHBatchDeleteResultResult>(json['result']);
  if (result != null) {
    sMHBatchDeleteResultEntity.result = result;
  }
  final int? taskId = jsonConvert.convert<int>(json['taskId']);
  if (taskId != null) {
    sMHBatchDeleteResultEntity.taskId = taskId;
  }
  return sMHBatchDeleteResultEntity;
}

Map<String, dynamic> $SMHBatchDeleteResultEntityToJson(
    SMHBatchDeleteResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['result'] = entity.result?.map((v) => v.toJson()).toList();
  data['taskId'] = entity.taskId;
  return data;
}

SMHBatchDeleteResultResult $SMHBatchDeleteResultResultFromJson(
    Map<String, dynamic> json) {
  final SMHBatchDeleteResultResult sMHBatchDeleteResultResult =
      SMHBatchDeleteResultResult();
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    sMHBatchDeleteResultResult.status = status;
  }
  final int? recycledItemId = jsonConvert.convert<int>(json['recycledItemId']);
  if (recycledItemId != null) {
    sMHBatchDeleteResultResult.recycledItemId = recycledItemId;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHBatchDeleteResultResult.path = path;
  }
  return sMHBatchDeleteResultResult;
}

Map<String, dynamic> $SMHBatchDeleteResultResultToJson(
    SMHBatchDeleteResultResult entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['recycledItemId'] = entity.recycledItemId;
  data['path'] = entity.path;
  return data;
}

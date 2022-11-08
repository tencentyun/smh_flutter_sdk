import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_api_task_result_entity.dart';

SMHApiTaskResultEntity $SMHApiTaskResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHApiTaskResultEntity sMHApiTaskResultEntity =
      SMHApiTaskResultEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHApiTaskResultEntity.id = id;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    sMHApiTaskResultEntity.status = status;
  }
  final SMHApiTaskResultResult? result =
      jsonConvert.convert<SMHApiTaskResultResult>(json['result']);
  if (result != null) {
    sMHApiTaskResultEntity.result = result;
  }
  return sMHApiTaskResultEntity;
}

Map<String, dynamic> $SMHApiTaskResultEntityToJson(
    SMHApiTaskResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['status'] = entity.status;
  data['result'] = entity.result?.toJson();
  return data;
}

SMHApiTaskResultResult $SMHApiTaskResultResultFromJson(
    Map<String, dynamic> json) {
  final SMHApiTaskResultResult sMHApiTaskResultResult =
      SMHApiTaskResultResult();
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHApiTaskResultResult.path = path;
  }
  return sMHApiTaskResultResult;
}

Map<String, dynamic> $SMHApiTaskResultResultToJson(
    SMHApiTaskResultResult entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['path'] = entity.path;
  return data;
}

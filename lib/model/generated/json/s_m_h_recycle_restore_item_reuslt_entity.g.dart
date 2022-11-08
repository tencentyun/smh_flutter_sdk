import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_recycle_restore_item_reuslt_entity.dart';

SMHRecycleRestoreItemReusltEntity $SMHRecycleRestoreItemReusltEntityFromJson(
    Map<String, dynamic> json) {
  final SMHRecycleRestoreItemReusltEntity sMHRecycleRestoreItemReusltEntity =
      SMHRecycleRestoreItemReusltEntity();
  final List<SMHRecycleRestoreItemReusltResult>? result = jsonConvert
      .convertListNotNull<SMHRecycleRestoreItemReusltResult>(json['result']);
  if (result != null) {
    sMHRecycleRestoreItemReusltEntity.result = result;
  }
  final int? taskId = jsonConvert.convert<int>(json['taskId']);
  if (taskId != null) {
    sMHRecycleRestoreItemReusltEntity.taskId = taskId;
  }
  return sMHRecycleRestoreItemReusltEntity;
}

Map<String, dynamic> $SMHRecycleRestoreItemReusltEntityToJson(
    SMHRecycleRestoreItemReusltEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['result'] = entity.result?.map((v) => v.toJson()).toList();
  data['taskId'] = entity.taskId;
  return data;
}

SMHRecycleRestoreItemReusltResult $SMHRecycleRestoreItemReusltResultFromJson(
    Map<String, dynamic> json) {
  final SMHRecycleRestoreItemReusltResult sMHRecycleRestoreItemReusltResult =
      SMHRecycleRestoreItemReusltResult();
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    sMHRecycleRestoreItemReusltResult.status = status;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHRecycleRestoreItemReusltResult.path = path;
  }
  final int? recycledItemId = jsonConvert.convert<int>(json['recycledItemId']);
  if (recycledItemId != null) {
    sMHRecycleRestoreItemReusltResult.recycledItemId = recycledItemId;
  }
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    sMHRecycleRestoreItemReusltResult.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    sMHRecycleRestoreItemReusltResult.message = message;
  }
  return sMHRecycleRestoreItemReusltResult;
}

Map<String, dynamic> $SMHRecycleRestoreItemReusltResultToJson(
    SMHRecycleRestoreItemReusltResult entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['path'] = entity.path;
  data['recycledItemId'] = entity.recycledItemId;
  data['code'] = entity.code;
  data['message'] = entity.message;
  return data;
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_recycle_restore_item_reuslt_entity.g.dart';

@JsonSerializable()
class SMHRecycleRestoreItemReusltEntity {
  List<SMHRecycleRestoreItemReusltResult>? result;

  /// taskId: 异步方式恢复时的任务 ID，可通过查询任务接口查询任务状态
  int? taskId;
  SMHRecycleRestoreItemReusltEntity();

  factory SMHRecycleRestoreItemReusltEntity.fromJson(
          Map<String, dynamic> json) =>
      $SMHRecycleRestoreItemReusltEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHRecycleRestoreItemReusltEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHRecycleRestoreItemReusltResult {
  /// result.status: 200：恢复成功，其他：恢复失败；
  int? status;

  /// result.path: 字符串数组，表示最终的文件路径；
  List<String>? path;

  /// result.recycledItemId: 发起请求时传入的回收站项目 ID；
  int? recycledItemId;
  String? code;
  String? message;

  SMHRecycleRestoreItemReusltResult();

  factory SMHRecycleRestoreItemReusltResult.fromJson(
          Map<String, dynamic> json) =>
      $SMHRecycleRestoreItemReusltResultFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHRecycleRestoreItemReusltResultToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

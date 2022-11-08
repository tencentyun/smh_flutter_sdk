import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_batch_delete_result_entity.g.dart';

@JsonSerializable()
class SMHBatchDeleteResultEntity {
  List<SMHBatchDeleteResultResult>? result;

  /// 异步方式复制时的任务 ID，可通过查询任务接口查询任务状态
  int? taskId;

  SMHBatchDeleteResultEntity();

  factory SMHBatchDeleteResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHBatchDeleteResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHBatchDeleteResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHBatchDeleteResultResult {
  /// 单个项目的删除结果，200: 移入回收站成功，204: 永久删除成功，403/404/500 等: 删除失败；
  int? status;

  /// 回收站项目 ID，用于从回收站永久删除或恢复指定项目；
  int? recycledItemId;

  /// 发起请求时传入的对应路径的数组形式；
  List<String>? path;

  SMHBatchDeleteResultResult();

  factory SMHBatchDeleteResultResult.fromJson(Map<String, dynamic> json) =>
      $SMHBatchDeleteResultResultFromJson(json);

  Map<String, dynamic> toJson() => $SMHBatchDeleteResultResultToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

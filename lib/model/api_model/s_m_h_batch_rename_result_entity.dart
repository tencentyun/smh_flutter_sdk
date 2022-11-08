import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_batch_rename_result_entity.g.dart';

/// 响应体字段说明：
/// 查询任务响应体字段说明：
@JsonSerializable()
class SMHBatchRenameResultEntity {
  /// status: 202: 任务进行中，200: 全部执行成功，207: 存在部分或全部执行失败；
  int? status;
  List<SMHBatchRenameResultResult>? result;

  /// taskId: 异步方式重命名或移动时的任务 ID，可通过查询任务接口查询任务状态
  int? taskId;

  SMHBatchRenameResultEntity();

  factory SMHBatchRenameResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHBatchRenameResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHBatchRenameResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHBatchRenameResultResult {
  /// result.status: 单个项目的重命名或移动结果，200: conflictResolutionStrategy 为 rename 时重命名或移动成功，204: conflictResolutionStrategy 为 ask 或 overwrite 时重命名或移动成功，403/404/409/500 等: 重命名或移动失败；
  int? status;

  /// result.from 和 result.to: 发起请求时传入的对应路径的数组形式；
  List<String>? from;

  /// result.from 和 result.to: 发起请求时传入的对应路径的数组形式；
  List<String>? to;

  /// result.path: 字符串数组，表示最终的路径，因为可能存在自动重命名，所以这里的最终路径可能不等同于重命名或移动时指定的路径；
  List<String>? path;

  SMHBatchRenameResultResult();

  factory SMHBatchRenameResultResult.fromJson(Map<String, dynamic> json) =>
      $SMHBatchRenameResultResultFromJson(json);

  Map<String, dynamic> toJson() => $SMHBatchRenameResultResultToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

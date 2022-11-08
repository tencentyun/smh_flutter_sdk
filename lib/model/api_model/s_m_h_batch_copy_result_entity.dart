import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_batch_copy_result_entity.g.dart';

@JsonSerializable()
class SMHBatchCopyResultEntity {
  /// path: 字符串数组，表示最终的目录或相簿路径，因为可能存在自动重命名，所以这里的最终路径可能不等同于复制目录或相簿时指定的路径；
  List<String>? path;

  List<SMHBatchCopyResultResult>? result;

  /// taskId: 异步方式复制时的任务 ID，可通过查询任务接口查询任务状态
  int? taskId;

  SMHBatchCopyResultEntity();

  factory SMHBatchCopyResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHBatchCopyResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHBatchCopyResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHBatchCopyResultResult {
  /// 单个项目的复制结果，200: conflictResolutionStrategy 为 rename 时复制成功，204: conflictResolutionStrategy 为 ask 或 overwrite 时复制成功，403/404/409/500 等: 复制失败；
  int? status;

  /// 必选参数，被复制的源目录、相簿或文件路径，必选参数；
  String? copyFrom;

  /// 必选参数，目标目录、相簿或文件路径，必选参数；
  List<String>? to;

  /// 字符串数组，表示最终的路径，因为可能存在自动重命名，所以这里的最终路径可能不等同于复制时指定的路径；
  List<String>? path;

  SMHBatchCopyResultResult();

  factory SMHBatchCopyResultResult.fromJson(Map<String, dynamic> json) =>
      $SMHBatchCopyResultResultFromJson(json);

  Map<String, dynamic> toJson() => $SMHBatchCopyResultResultToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

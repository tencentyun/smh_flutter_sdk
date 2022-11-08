import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_task_result_entity.g.dart';

@JsonSerializable()
class SMHTaskResultEntity {
  /// taskid: 整数，任务 ID；
  int? taskId;

  /// status：整数，任务状态码，202: 任务进行中，200: 任务成功完成且有返回结果，返回结果在 result 字段中，204: 任务成功完成且无返回结果，500: 任务执行失败；499: 用户取消; 207： 多状态；
  int? status;

  /// total: 整数，总的任务数量（如果该任务支持返回 total)；
  int? total;

  /// remaining: 整数，剩余任务数量（如果该任务支持返回 remaining)；
  int? remaining;

  /// result: 对象数组，任务成功完成后的返回结果，具体格式由具体的异步任务确定；
  List<SMHTaskResultResult>? result;

  SMHTaskResultEntity();

  factory SMHTaskResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHTaskResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHTaskResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHTaskResultResult {
  String? code;
  int? status;
  String? message;
  List<String>? path;

  SMHTaskResultResult();

  factory SMHTaskResultResult.fromJson(Map<String, dynamic> json) =>
      $SMHTaskResultResultFromJson(json);

  Map<String, dynamic> toJson() => $SMHTaskResultResultToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

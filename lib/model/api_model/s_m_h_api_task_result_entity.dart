import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_api_task_result_entity.g.dart';

@JsonSerializable()
class SMHApiTaskResultEntity {
  /// id: 任务 ID；
  int? id;

  /// status：任务状态码，202: 任务进行中，200: 任务成功完成且有返回结果，返回结果在 result 字段中，204: 任务成功完成且无返回结果，500: 任务执行失败；
  int? status;

  /// result: 任务成功完成后的返回结果；
  SMHApiTaskResultResult? result;

  SMHApiTaskResultEntity();

  factory SMHApiTaskResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHApiTaskResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHApiTaskResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHApiTaskResultResult {
  ///  字符串数组，表示最终的路径，因为可能存在自动重命名，所以这里的最终路径可能不等同于复制时指定的路径；
  List<String>? path;

  SMHApiTaskResultResult();

  factory SMHApiTaskResultResult.fromJson(Map<String, dynamic> json) =>
      $SMHApiTaskResultResultFromJson(json);

  Map<String, dynamic> toJson() => $SMHApiTaskResultResultToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

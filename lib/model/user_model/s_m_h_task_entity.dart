import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_task_entity.g.dart';

@JsonSerializable()
class SMHTaskEntity {
  int? taskId;

  SMHTaskEntity();

  factory SMHTaskEntity.fromJson(Map<String, dynamic> json) =>
      $SMHTaskEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHTaskEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

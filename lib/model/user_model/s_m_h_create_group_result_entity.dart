import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_create_group_result_entity.g.dart';

@JsonSerializable()
class SMHCreateGroupResultEntity {
  /// id: 整数，新建群组 ID；
  int? id;

  SMHCreateGroupResultEntity();

  factory SMHCreateGroupResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHCreateGroupResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHCreateGroupResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

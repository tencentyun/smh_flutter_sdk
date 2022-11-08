import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_create_team_result_entity.g.dart';

@JsonSerializable()
class SMHCreateTeamResultEntity {
  /// id: 整数，新建团队 ID；
  int? id;

  SMHCreateTeamResultEntity();

  factory SMHCreateTeamResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHCreateTeamResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHCreateTeamResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

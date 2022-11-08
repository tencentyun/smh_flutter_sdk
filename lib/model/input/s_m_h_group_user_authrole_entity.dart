import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_group_user_authrole_entity.g.dart';

@JsonSerializable()
class SMHGroupUserAuthroleUsers {
  String? userId;
  String? role;
  int? authRoleId;

  SMHGroupUserAuthroleUsers();

  factory SMHGroupUserAuthroleUsers.fromJson(Map<String, dynamic> json) =>
      $SMHGroupUserAuthroleUsersFromJson(json);

  Map<String, dynamic> toJson() => $SMHGroupUserAuthroleUsersToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

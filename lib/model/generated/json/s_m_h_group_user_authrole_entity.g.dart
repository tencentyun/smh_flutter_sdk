import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_group_user_authrole_entity.dart';

SMHGroupUserAuthroleUsers $SMHGroupUserAuthroleUsersFromJson(
    Map<String, dynamic> json) {
  final SMHGroupUserAuthroleUsers sMHGroupUserAuthroleUsers =
      SMHGroupUserAuthroleUsers();
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHGroupUserAuthroleUsers.userId = userId;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    sMHGroupUserAuthroleUsers.role = role;
  }
  final int? authRoleId = jsonConvert.convert<int>(json['authRoleId']);
  if (authRoleId != null) {
    sMHGroupUserAuthroleUsers.authRoleId = authRoleId;
  }
  return sMHGroupUserAuthroleUsers;
}

Map<String, dynamic> $SMHGroupUserAuthroleUsersToJson(
    SMHGroupUserAuthroleUsers entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['userId'] = entity.userId;
  data['role'] = entity.role;
  data['authRoleId'] = entity.authRoleId;
  return data;
}

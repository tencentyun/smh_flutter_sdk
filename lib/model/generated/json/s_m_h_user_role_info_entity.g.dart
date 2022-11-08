import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_user_role_info_entity.dart';

SMHUserRoleInfoEntity $SMHUserRoleInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHUserRoleInfoEntity sMHUserRoleInfoEntity = SMHUserRoleInfoEntity();
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHUserRoleInfoEntity.userId = userId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHUserRoleInfoEntity.name = name;
  }
  final int? roleId = jsonConvert.convert<int>(json['roleId']);
  if (roleId != null) {
    sMHUserRoleInfoEntity.roleId = roleId;
  }
  return sMHUserRoleInfoEntity;
}

Map<String, dynamic> $SMHUserRoleInfoEntityToJson(
    SMHUserRoleInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['userId'] = entity.userId;
  data['name'] = entity.name;
  data['roleId'] = entity.roleId;
  return data;
}

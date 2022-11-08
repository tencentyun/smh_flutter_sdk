import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_space_role_info_entity.dart';

SMHSpaceRoleInfoEntity $SMHSpaceRoleInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHSpaceRoleInfoEntity sMHSpaceRoleInfoEntity =
      SMHSpaceRoleInfoEntity();
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHSpaceRoleInfoEntity.spaceId = spaceId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHSpaceRoleInfoEntity.name = name;
  }
  final int? roleId = jsonConvert.convert<int>(json['roleId']);
  if (roleId != null) {
    sMHSpaceRoleInfoEntity.roleId = roleId;
  }
  return sMHSpaceRoleInfoEntity;
}

Map<String, dynamic> $SMHSpaceRoleInfoEntityToJson(
    SMHSpaceRoleInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['spaceId'] = entity.spaceId;
  data['name'] = entity.name;
  data['roleId'] = entity.roleId;
  return data;
}

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_group_member_item_entity.dart';

SMHGroupMemberItemEntity $SMHGroupMemberItemEntityFromJson(
    Map<String, dynamic> json) {
  final SMHGroupMemberItemEntity sMHGroupMemberItemEntity =
      SMHGroupMemberItemEntity();
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHGroupMemberItemEntity.orgId = orgId;
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHGroupMemberItemEntity.userId = userId;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    sMHGroupMemberItemEntity.role = role;
  }
  final int? authRoleId = jsonConvert.convert<int>(json['authRoleId']);
  if (authRoleId != null) {
    sMHGroupMemberItemEntity.authRoleId = authRoleId;
  }
  return sMHGroupMemberItemEntity;
}

Map<String, dynamic> $SMHGroupMemberItemEntityToJson(
    SMHGroupMemberItemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['orgId'] = entity.orgId;
  data['userId'] = entity.userId;
  data['role'] = entity.role;
  data['authRoleId'] = entity.authRoleId;
  return data;
}

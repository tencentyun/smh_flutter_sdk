import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_member_authority_entity.dart';

SMHMemberAuthorityEntity $SMHMemberAuthorityEntityFromJson(
    Map<String, dynamic> json) {
  final SMHMemberAuthorityEntity sMHMemberAuthorityEntity =
      SMHMemberAuthorityEntity();
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHMemberAuthorityEntity.userId = userId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHMemberAuthorityEntity.name = name;
  }
  final int? roleId = jsonConvert.convert<int>(json['roleId']);
  if (roleId != null) {
    sMHMemberAuthorityEntity.roleId = roleId;
  }
  return sMHMemberAuthorityEntity;
}

Map<String, dynamic> $SMHMemberAuthorityEntityToJson(
    SMHMemberAuthorityEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['userId'] = entity.userId;
  data['name'] = entity.name;
  data['roleId'] = entity.roleId;
  return data;
}

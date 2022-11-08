import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_organization_invite_info_entity.dart';

SMHOrganizationInviteInfoEntity $SMHOrganizationInviteInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHOrganizationInviteInfoEntity sMHOrganizationInviteInfoEntity =
      SMHOrganizationInviteInfoEntity();
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHOrganizationInviteInfoEntity.orgId = orgId;
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHOrganizationInviteInfoEntity.userId = userId;
  }
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    sMHOrganizationInviteInfoEntity.code = code;
  }
  final int? invitedCount = jsonConvert.convert<int>(json['invitedCount']);
  if (invitedCount != null) {
    sMHOrganizationInviteInfoEntity.invitedCount = invitedCount;
  }
  final bool? enabled = jsonConvert.convert<bool>(json['enabled']);
  if (enabled != null) {
    sMHOrganizationInviteInfoEntity.enabled = enabled;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHOrganizationInviteInfoEntity.type = SMHInviteType.values.byName(type);
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHOrganizationInviteInfoEntity.creationTime = creationTime;
  }
  final String? expireTime = jsonConvert.convert<String>(json['expireTime']);
  if (expireTime != null) {
    sMHOrganizationInviteInfoEntity.expireTime = expireTime;
  }
  final bool? expired = jsonConvert.convert<bool>(json['expired']);
  if (expired != null) {
    sMHOrganizationInviteInfoEntity.expired = expired;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    sMHOrganizationInviteInfoEntity.role = SMHAdminUserRole.values.byName(role);
  }
  final SMHOrganizationInviteInfoOrganization? organization = jsonConvert
      .convert<SMHOrganizationInviteInfoOrganization>(json['organization']);
  if (organization != null) {
    sMHOrganizationInviteInfoEntity.organization = organization;
  }
  final SMHOrganizationInviteInfoInvitor? invitor =
      jsonConvert.convert<SMHOrganizationInviteInfoInvitor>(json['invitor']);
  if (invitor != null) {
    sMHOrganizationInviteInfoEntity.invitor = invitor;
  }
  final String? editionFlag = jsonConvert.convert<String>(json['editionFlag']);
  if (editionFlag != null) {
    sMHOrganizationInviteInfoEntity.editionFlag =
        SMHEditionFlag.values.byName(editionFlag);
  }
  final int? currentOrgUserCount =
      jsonConvert.convert<int>(json['currentOrgUserCount']);
  if (currentOrgUserCount != null) {
    sMHOrganizationInviteInfoEntity.currentOrgUserCount = currentOrgUserCount;
  }
  final int? currentGroupUserCount =
      jsonConvert.convert<int>(json['currentGroupUserCount']);
  if (currentGroupUserCount != null) {
    sMHOrganizationInviteInfoEntity.currentGroupUserCount =
        currentGroupUserCount;
  }

  final bool? allowExternalUser =
      jsonConvert.convert<bool>(json['allowExternalUser']);
  if (allowExternalUser != null) {
    sMHOrganizationInviteInfoEntity.allowExternalUser = allowExternalUser;
  }

  final bool? hasJoined = jsonConvert.convert<bool>(json['hasJoined']);
  if (hasJoined != null) {
    sMHOrganizationInviteInfoEntity.hasJoined = hasJoined;
  }

  return sMHOrganizationInviteInfoEntity;
}

Map<String, dynamic> $SMHOrganizationInviteInfoEntityToJson(
    SMHOrganizationInviteInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['orgId'] = entity.orgId;
  data['userId'] = entity.userId;
  data['code'] = entity.code;
  data['invitedCount'] = entity.invitedCount;
  data['enabled'] = entity.enabled;
  data['type'] = entity.type;
  data['creationTime'] = entity.creationTime;
  data['expireTime'] = entity.expireTime;
  data['expired'] = entity.expired;
  data['role'] = entity.role?.name;
  data['organization'] = entity.organization?.toJson();
  data['invitor'] = entity.invitor?.toJson();
  data['editionFlag'] = entity.editionFlag?.name;
  data['currentOrgUserCount'] = entity.currentOrgUserCount;
  data['currentGroupUserCount'] = entity.currentGroupUserCount;
  data['allowExternalUser'] = entity.allowExternalUser;
  data['hasJoined'] = entity.hasJoined;

  return data;
}

SMHOrganizationInviteInfoOrganization
    $SMHOrganizationInviteInfoOrganizationFromJson(Map<String, dynamic> json) {
  final SMHOrganizationInviteInfoOrganization
      sMHOrganizationInviteInfoOrganization =
      SMHOrganizationInviteInfoOrganization();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHOrganizationInviteInfoOrganization.name = name;
  }
  final String? logo = jsonConvert.convert<String>(json['logo']);
  if (logo != null) {
    sMHOrganizationInviteInfoOrganization.logo = logo;
  }
  return sMHOrganizationInviteInfoOrganization;
}

Map<String, dynamic> $SMHOrganizationInviteInfoOrganizationToJson(
    SMHOrganizationInviteInfoOrganization entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['logo'] = entity.logo;
  return data;
}

SMHOrganizationInviteInfoInvitor $SMHOrganizationInviteInfoInvitorFromJson(
    Map<String, dynamic> json) {
  final SMHOrganizationInviteInfoInvitor sMHOrganizationInviteInfoInvitor =
      SMHOrganizationInviteInfoInvitor();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHOrganizationInviteInfoInvitor.id = id;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHOrganizationInviteInfoInvitor.orgId = orgId;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    sMHOrganizationInviteInfoInvitor.avatar = avatar;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHOrganizationInviteInfoInvitor.nickname = nickname;
  }
  return sMHOrganizationInviteInfoInvitor;
}

Map<String, dynamic> $SMHOrganizationInviteInfoInvitorToJson(
    SMHOrganizationInviteInfoInvitor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['orgId'] = entity.orgId;
  data['avatar'] = entity.avatar;
  data['nickname'] = entity.nickname;
  return data;
}

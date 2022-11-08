import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_invite_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

SMHGroupInviteInfoEntity $SMHGroupInviteInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHGroupInviteInfoEntity sMHGroupInviteInfoEntity =
      SMHGroupInviteInfoEntity();
  final int? groupId = jsonConvert.convert<int>(json['groupId']);
  if (groupId != null) {
    sMHGroupInviteInfoEntity.groupId = groupId;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHGroupInviteInfoEntity.orgId = orgId;
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHGroupInviteInfoEntity.userId = userId;
  }
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    sMHGroupInviteInfoEntity.code = code;
  }
  final int? invitedCount = jsonConvert.convert<int>(json['invitedCount']);
  if (invitedCount != null) {
    sMHGroupInviteInfoEntity.invitedCount = invitedCount;
  }
  final bool? enabled = jsonConvert.convert<bool>(json['enabled']);
  if (enabled != null) {
    sMHGroupInviteInfoEntity.enabled = enabled;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHGroupInviteInfoEntity.type = SMHInviteType.values.byName(type);
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHGroupInviteInfoEntity.creationTime = creationTime;
  }
  final String? expireTime = jsonConvert.convert<String>(json['expireTime']);
  if (expireTime != null) {
    sMHGroupInviteInfoEntity.expireTime = expireTime;
  }
  final bool? expired = jsonConvert.convert<bool>(json['expired']);
  if (expired != null) {
    sMHGroupInviteInfoEntity.expired = expired;
  }
  final SMHGroupInviteInfoOrganization? organization =
      jsonConvert.convert<SMHGroupInviteInfoOrganization>(json['organization']);
  if (organization != null) {
    sMHGroupInviteInfoEntity.organization = organization;
  }
  final bool? allowExternalUser =
      jsonConvert.convert<bool>(json['allowExternalUser']);
  if (allowExternalUser != null) {
    sMHGroupInviteInfoEntity.allowExternalUser = allowExternalUser;
  }
  final SMHGroupInviteInfoInvitor? invitor =
      jsonConvert.convert<SMHGroupInviteInfoInvitor>(json['invitor']);
  if (invitor != null) {
    sMHGroupInviteInfoEntity.invitor = invitor;
  }
  final SMHFileDetailGroup? group =
      jsonConvert.convert<SMHFileDetailGroup>(json['group']);
  if (group != null) {
    sMHGroupInviteInfoEntity.group = group;
  }
  final String? editionFlag = jsonConvert.convert<String>(json['editionFlag']);
  if (editionFlag != null) {
    sMHGroupInviteInfoEntity.editionFlag =
        SMHEditionFlag.values.byName(editionFlag);
  }
  final int? currentGroupUserCount =
      jsonConvert.convert<int>(json['currentGroupUserCount']);
  if (currentGroupUserCount != null) {
    sMHGroupInviteInfoEntity.currentGroupUserCount = currentGroupUserCount;
  }
  return sMHGroupInviteInfoEntity;
}

Map<String, dynamic> $SMHGroupInviteInfoEntityToJson(
    SMHGroupInviteInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['groupId'] = entity.groupId;
  data['orgId'] = entity.orgId;
  data['userId'] = entity.userId;
  data['code'] = entity.code;
  data['invitedCount'] = entity.invitedCount;
  data['enabled'] = entity.enabled;
  data['type'] = entity.type?.name;
  data['creationTime'] = entity.creationTime;
  data['expireTime'] = entity.expireTime;
  data['expired'] = entity.expired;
  data['organization'] = entity.organization?.toJson();
  data['allowExternalUser'] = entity.allowExternalUser;
  data['invitor'] = entity.invitor?.toJson();
  data['group'] = entity.group?.toJson();
  data['editionFlag'] = entity.editionFlag?.name;
  data['currentGroupUserCount'] = entity.currentGroupUserCount;
  return data;
}

SMHGroupInviteInfoOrganization $SMHGroupInviteInfoOrganizationFromJson(
    Map<String, dynamic> json) {
  final SMHGroupInviteInfoOrganization sMHGroupInviteInfoOrganization =
      SMHGroupInviteInfoOrganization();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHGroupInviteInfoOrganization.name = name;
  }
  final String? logo = jsonConvert.convert<String>(json['logo']);
  if (logo != null) {
    sMHGroupInviteInfoOrganization.logo = logo;
  }
  return sMHGroupInviteInfoOrganization;
}

Map<String, dynamic> $SMHGroupInviteInfoOrganizationToJson(
    SMHGroupInviteInfoOrganization entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['logo'] = entity.logo;
  return data;
}

SMHGroupInviteInfoInvitor $SMHGroupInviteInfoInvitorFromJson(
    Map<String, dynamic> json) {
  final SMHGroupInviteInfoInvitor sMHGroupInviteInfoInvitor =
      SMHGroupInviteInfoInvitor();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHGroupInviteInfoInvitor.id = id;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHGroupInviteInfoInvitor.orgId = orgId;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    sMHGroupInviteInfoInvitor.avatar = avatar;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHGroupInviteInfoInvitor.nickname = nickname;
  }
  return sMHGroupInviteInfoInvitor;
}

Map<String, dynamic> $SMHGroupInviteInfoInvitorToJson(
    SMHGroupInviteInfoInvitor entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['orgId'] = entity.orgId;
  data['avatar'] = entity.avatar;
  data['nickname'] = entity.nickname;
  return data;
}

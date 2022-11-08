import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_detail_entity.dart';

SMHGroupDetailEntity $SMHGroupDetailEntityFromJson(Map<String, dynamic> json) {
  final SMHGroupDetailEntity sMHGroupDetailEntity = SMHGroupDetailEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHGroupDetailEntity.id = id;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHGroupDetailEntity.orgId = orgId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHGroupDetailEntity.name = name;
  }
  final bool? allowExternalUser =
      jsonConvert.convert<bool>(json['allowExternalUser']);
  if (allowExternalUser != null) {
    sMHGroupDetailEntity.allowExternalUser = allowExternalUser;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHGroupDetailEntity.spaceId = spaceId;
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHGroupDetailEntity.userId = userId;
  }
  final SMHGroupDetailOwner? owner =
      jsonConvert.convert<SMHGroupDetailOwner>(json['owner']);
  if (owner != null) {
    sMHGroupDetailEntity.owner = owner;
  }
  final int? fileCount = jsonConvert.convert<int>(json['fileCount']);
  if (fileCount != null) {
    sMHGroupDetailEntity.fileCount = fileCount;
  }
  final int? userCount = jsonConvert.convert<int>(json['userCount']);
  if (userCount != null) {
    sMHGroupDetailEntity.userCount = userCount;
  }
  final bool? isExternal = jsonConvert.convert<bool>(json['isExternal']);
  if (isExternal != null) {
    sMHGroupDetailEntity.isExternal = isExternal;
  }
  final bool? hasCrossOrgUser =
      jsonConvert.convert<bool>(json['hasCrossOrgUser']);
  if (hasCrossOrgUser != null) {
    sMHGroupDetailEntity.hasCrossOrgUser = hasCrossOrgUser;
  }
  final List<SMHGroupDetailRoleList>? roleList =
      jsonConvert.convertListNotNull<SMHGroupDetailRoleList>(json['roleList']);
  if (roleList != null) {
    sMHGroupDetailEntity.roleList = roleList;
  }
  return sMHGroupDetailEntity;
}

Map<String, dynamic> $SMHGroupDetailEntityToJson(SMHGroupDetailEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['orgId'] = entity.orgId;
  data['name'] = entity.name;
  data['allowExternalUser'] = entity.allowExternalUser;
  data['spaceId'] = entity.spaceId;
  data['userId'] = entity.userId;
  data['owner'] = entity.owner?.toJson();
  data['fileCount'] = entity.fileCount;
  data['userCount'] = entity.userCount;
  data['isExternal'] = entity.isExternal;
  data['hasCrossOrgUser'] = entity.hasCrossOrgUser;
  data['roleList'] = entity.roleList?.map((v) => v.toJson()).toList();
  return data;
}

SMHGroupDetailOwner $SMHGroupDetailOwnerFromJson(Map<String, dynamic> json) {
  final SMHGroupDetailOwner sMHGroupDetailOwner = SMHGroupDetailOwner();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHGroupDetailOwner.id = id;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHGroupDetailOwner.orgId = orgId;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHGroupDetailOwner.nickname = nickname;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    sMHGroupDetailOwner.avatar = avatar;
  }
  final bool? isExternal = jsonConvert.convert<bool>(json['isExternal']);
  if (isExternal != null) {
    sMHGroupDetailOwner.isExternal = isExternal;
  }
  return sMHGroupDetailOwner;
}

Map<String, dynamic> $SMHGroupDetailOwnerToJson(SMHGroupDetailOwner entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['orgId'] = entity.orgId;
  data['nickname'] = entity.nickname;
  data['avatar'] = entity.avatar;
  data['isExternal'] = entity.isExternal;
  return data;
}

SMHGroupDetailRoleList $SMHGroupDetailRoleListFromJson(
    Map<String, dynamic> json) {
  final SMHGroupDetailRoleList sMHGroupDetailRoleList =
      SMHGroupDetailRoleList();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHGroupDetailRoleList.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHGroupDetailRoleList.name = name;
  }
  final String? roleDesc = jsonConvert.convert<String>(json['roleDesc']);
  if (roleDesc != null) {
    sMHGroupDetailRoleList.roleDesc = roleDesc;
  }
  final bool? isDefault = jsonConvert.convert<bool>(json['isDefault']);
  if (isDefault != null) {
    sMHGroupDetailRoleList.isDefault = isDefault;
  }
  final bool? isUsable = jsonConvert.convert<bool>(json['isUsable']);
  if (isUsable != null) {
    sMHGroupDetailRoleList.isUsable = isUsable;
  }
  return sMHGroupDetailRoleList;
}

Map<String, dynamic> $SMHGroupDetailRoleListToJson(
    SMHGroupDetailRoleList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['roleDesc'] = entity.roleDesc;
  data['isDefault'] = entity.isDefault;
  data['isUsable'] = entity.isUsable;
  return data;
}

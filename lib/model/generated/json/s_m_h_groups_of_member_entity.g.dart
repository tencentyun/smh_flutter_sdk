import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_groups_of_member_entity.dart';

SMHGroupsOfMemberEntity $SMHGroupsOfMemberEntityFromJson(
    Map<String, dynamic> json) {
  final SMHGroupsOfMemberEntity sMHGroupsOfMemberEntity =
      SMHGroupsOfMemberEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHGroupsOfMemberEntity.totalNum = totalNum;
  }
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    sMHGroupsOfMemberEntity.page = page;
  }
  final int? pageSize = jsonConvert.convert<int>(json['pageSize']);
  if (pageSize != null) {
    sMHGroupsOfMemberEntity.pageSize = pageSize;
  }
  final List<SMHGroupsOfMemberContents>? contents = jsonConvert
      .convertListNotNull<SMHGroupsOfMemberContents>(json['contents']);
  if (contents != null) {
    sMHGroupsOfMemberEntity.contents = contents;
  }
  return sMHGroupsOfMemberEntity;
}

Map<String, dynamic> $SMHGroupsOfMemberEntityToJson(
    SMHGroupsOfMemberEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['page'] = entity.page;
  data['pageSize'] = entity.pageSize;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHGroupsOfMemberContents $SMHGroupsOfMemberContentsFromJson(
    Map<String, dynamic> json) {
  final SMHGroupsOfMemberContents sMHGroupsOfMemberContents =
      SMHGroupsOfMemberContents();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHGroupsOfMemberContents.id = id;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHGroupsOfMemberContents.orgId = orgId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHGroupsOfMemberContents.name = name;
  }
  final bool? allowExternalUser =
      jsonConvert.convert<bool>(json['allowExternalUser']);
  if (allowExternalUser != null) {
    sMHGroupsOfMemberContents.allowExternalUser = allowExternalUser;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHGroupsOfMemberContents.spaceId = spaceId;
  }
  final String? groupRole = jsonConvert.convert<String>(json['groupRole']);
  if (groupRole != null) {
    sMHGroupsOfMemberContents.groupRole = SMHGroupRole.values.byName(groupRole);
  }
  final bool? isExternal = jsonConvert.convert<bool>(json['isExternal']);
  if (isExternal != null) {
    sMHGroupsOfMemberContents.isExternal = isExternal;
  }
  final bool? hasCrossOrgUser =
      jsonConvert.convert<bool>(json['hasCrossOrgUser']);
  if (hasCrossOrgUser != null) {
    sMHGroupsOfMemberContents.hasCrossOrgUser = hasCrossOrgUser;
  }
  final int? userCount = jsonConvert.convert<int>(json['userCount']);
  if (userCount != null) {
    sMHGroupsOfMemberContents.userCount = userCount;
  }
  final int? fileCount = jsonConvert.convert<int>(json['fileCount']);
  if (fileCount != null) {
    sMHGroupsOfMemberContents.fileCount = fileCount;
  }
  final String? joinTime = jsonConvert.convert<String>(json['joinTime']);
  if (joinTime != null) {
    sMHGroupsOfMemberContents.joinTime = joinTime;
  }
  final String? orgName = jsonConvert.convert<String>(json['orgName']);
  if (orgName != null) {
    sMHGroupsOfMemberContents.orgName = orgName;
  }
  final String? orgEditionFlag =
      jsonConvert.convert<String>(json['orgEditionFlag']);
  if (orgEditionFlag != null) {
    sMHGroupsOfMemberContents.orgEditionFlag = orgEditionFlag;
  }
  final int? ownerId = jsonConvert.convert<int>(json['ownerId']);
  if (ownerId != null) {
    sMHGroupsOfMemberContents.ownerId = ownerId;
  }
  final String? ownerName = jsonConvert.convert<String>(json['ownerName']);
  if (ownerName != null) {
    sMHGroupsOfMemberContents.ownerName = ownerName;
  }
  final List<SMHGroupsOfMemberContentsUsers>? users = jsonConvert
      .convertListNotNull<SMHGroupsOfMemberContentsUsers>(json['users']);
  if (users != null) {
    sMHGroupsOfMemberContents.users = users;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHGroupsOfMemberContents.authorityList = authorityList;
  }
  final List<SMHGroupsOfMemberContentsDirectoryList>? directoryList =
      jsonConvert.convertListNotNull<SMHGroupsOfMemberContentsDirectoryList>(
          json['directoryList']);
  if (directoryList != null) {
    sMHGroupsOfMemberContents.directoryList = directoryList;
  }
  return sMHGroupsOfMemberContents;
}

Map<String, dynamic> $SMHGroupsOfMemberContentsToJson(
    SMHGroupsOfMemberContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['orgId'] = entity.orgId;
  data['name'] = entity.name;
  data['allowExternalUser'] = entity.allowExternalUser;
  data['spaceId'] = entity.spaceId;
  data['groupRole'] = entity.groupRole?.name;
  data['isExternal'] = entity.isExternal;
  data['hasCrossOrgUser'] = entity.hasCrossOrgUser;
  data['userCount'] = entity.userCount;
  data['fileCount'] = entity.fileCount;
  data['joinTime'] = entity.joinTime;
  data['orgName'] = entity.orgName;
  data['orgEditionFlag'] = entity.orgEditionFlag;
  data['ownerId'] = entity.ownerId;
  data['ownerName'] = entity.ownerName;
  data['users'] = entity.users?.map((v) => v.toJson()).toList();
  data['authorityList'] = entity.authorityList?.toJson();
  data['directoryList'] = entity.directoryList?.map((v) => v.toJson()).toList();
  return data;
}

SMHGroupsOfMemberContentsUsers $SMHGroupsOfMemberContentsUsersFromJson(
    Map<String, dynamic> json) {
  final SMHGroupsOfMemberContentsUsers sMHGroupsOfMemberContentsUsers =
      SMHGroupsOfMemberContentsUsers();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHGroupsOfMemberContentsUsers.id = id;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHGroupsOfMemberContentsUsers.orgId = orgId;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHGroupsOfMemberContentsUsers.nickname = nickname;
  }
  final String? groupRole = jsonConvert.convert<String>(json['groupRole']);
  if (groupRole != null) {
    sMHGroupsOfMemberContentsUsers.groupRole = groupRole;
  }
  final bool? enabled = jsonConvert.convert<bool>(json['enabled']);
  if (enabled != null) {
    sMHGroupsOfMemberContentsUsers.enabled = enabled;
  }
  final bool? isExternal = jsonConvert.convert<bool>(json['isExternal']);
  if (isExternal != null) {
    sMHGroupsOfMemberContentsUsers.isExternal = isExternal;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    sMHGroupsOfMemberContentsUsers.avatar = avatar;
  }
  return sMHGroupsOfMemberContentsUsers;
}

Map<String, dynamic> $SMHGroupsOfMemberContentsUsersToJson(
    SMHGroupsOfMemberContentsUsers entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['orgId'] = entity.orgId;
  data['nickname'] = entity.nickname;
  data['groupRole'] = entity.groupRole;
  data['enabled'] = entity.enabled;
  data['isExternal'] = entity.isExternal;
  data['avatar'] = entity.avatar;
  return data;
}

SMHGroupsOfMemberContentsDirectoryList
    $SMHGroupsOfMemberContentsDirectoryListFromJson(Map<String, dynamic> json) {
  final SMHGroupsOfMemberContentsDirectoryList
      sMHGroupsOfMemberContentsDirectoryList =
      SMHGroupsOfMemberContentsDirectoryList();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHGroupsOfMemberContentsDirectoryList.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHGroupsOfMemberContentsDirectoryList.type = SMHFileType.byName(type);
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHGroupsOfMemberContentsDirectoryList.userId = userId;
  }
  final int? userOrgId = jsonConvert.convert<int>(json['userOrgId']);
  if (userOrgId != null) {
    sMHGroupsOfMemberContentsDirectoryList.userOrgId = userOrgId;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHGroupsOfMemberContentsDirectoryList.creationTime = creationTime;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHGroupsOfMemberContentsDirectoryList.modificationTime = modificationTime;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHGroupsOfMemberContentsDirectoryList.fileType =
        SMHFileType.byName(fileType);
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHGroupsOfMemberContentsDirectoryList.previewAsIcon = previewAsIcon;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHGroupsOfMemberContentsDirectoryList.previewByCI = previewByCI;
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHGroupsOfMemberContentsDirectoryList.previewByDoc = previewByDoc;
  }
  return sMHGroupsOfMemberContentsDirectoryList;
}

Map<String, dynamic> $SMHGroupsOfMemberContentsDirectoryListToJson(
    SMHGroupsOfMemberContentsDirectoryList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type?.name;
  data['userId'] = entity.userId;
  data['userOrgId'] = entity.userOrgId;
  data['creationTime'] = entity.creationTime;
  data['modificationTime'] = entity.modificationTime;
  data['fileType'] = entity.fileType?.name;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['previewByCI'] = entity.previewByCI;
  data['previewByDoc'] = entity.previewByDoc;
  return data;
}

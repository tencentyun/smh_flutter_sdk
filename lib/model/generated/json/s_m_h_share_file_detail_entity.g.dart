import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

SMHShareFileDetailEntity $SMHShareFileDetailEntityFromJson(
    Map<String, dynamic> json) {
  final SMHShareFileDetailEntity sMHShareFileDetailEntity =
      SMHShareFileDetailEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHShareFileDetailEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHShareFileDetailEntity.name = name;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHShareFileDetailEntity.orgId = orgId;
  }
  final String? extractionCode =
      jsonConvert.convert<String>(json['extractionCode']);
  if (extractionCode != null) {
    sMHShareFileDetailEntity.extractionCode = extractionCode;
  }
  final bool? linkToLatestVersion =
      jsonConvert.convert<bool>(json['linkToLatestVersion']);
  if (linkToLatestVersion != null) {
    sMHShareFileDetailEntity.linkToLatestVersion = linkToLatestVersion;
  }
  final String? expireTime = jsonConvert.convert<String>(json['expireTime']);
  if (expireTime != null) {
    sMHShareFileDetailEntity.expireTime = expireTime;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHShareFileDetailEntity.creationTime = creationTime;
  }
  final bool? disabled = jsonConvert.convert<bool>(json['disabled']);
  if (disabled != null) {
    sMHShareFileDetailEntity.disabled = disabled;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    sMHShareFileDetailEntity.status = status;
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHShareFileDetailEntity.userId = userId;
  }
  final String? userNickname =
      jsonConvert.convert<String>(json['userNickname']);
  if (userNickname != null) {
    sMHShareFileDetailEntity.userNickname = userNickname;
  }
  final String? userAvatar = jsonConvert.convert<String>(json['userAvatar']);
  if (userAvatar != null) {
    sMHShareFileDetailEntity.userAvatar = userAvatar;
  }
  final bool? canModify = jsonConvert.convert<bool>(json['canModify']);
  if (canModify != null) {
    sMHShareFileDetailEntity.canModify = canModify;
  }
  final bool? canPreview = jsonConvert.convert<bool>(json['canPreview']);
  if (canPreview != null) {
    sMHShareFileDetailEntity.canPreview = canPreview;
  }
  final bool? canDownload = jsonConvert.convert<bool>(json['canDownload']);
  if (canDownload != null) {
    sMHShareFileDetailEntity.canDownload = canDownload;
  }
  final bool? canSaveToNetDisc =
      jsonConvert.convert<bool>(json['canSaveToNetDisc']);
  if (canSaveToNetDisc != null) {
    sMHShareFileDetailEntity.canSaveToNetDisc = canSaveToNetDisc;
  }
  final int? previewCountUsed =
      jsonConvert.convert<int>(json['previewCountUsed']);
  if (previewCountUsed != null) {
    sMHShareFileDetailEntity.previewCountUsed = previewCountUsed;
  }
  final int? downloadCountUsed =
      jsonConvert.convert<int>(json['downloadCountUsed']);
  if (downloadCountUsed != null) {
    sMHShareFileDetailEntity.downloadCountUsed = downloadCountUsed;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHShareFileDetailEntity.path = path;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHShareFileDetailEntity.size = size;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHShareFileDetailEntity.fileType = SMHFileType.byName(fileType);
  }
  final SMHFileDetailTeam? team =
      jsonConvert.convert<SMHFileDetailTeam>(json['team']);
  if (team != null) {
    sMHShareFileDetailEntity.team = team;
  }
  final SMHFileDetailGroup? group =
      jsonConvert.convert<SMHFileDetailGroup>(json['group']);
  if (group != null) {
    sMHShareFileDetailEntity.group = group;
  }
  final SMHFileDetailUser? user =
      jsonConvert.convert<SMHFileDetailUser>(json['user']);
  if (user != null) {
    sMHShareFileDetailEntity.user = user;
  }
  final String? spaceTag = jsonConvert.convert<String>(json['spaceTag']);
  if (spaceTag != null) {
    sMHShareFileDetailEntity.spaceTag = SMHSpaceTag.values.byName(spaceTag);
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    sMHShareFileDetailEntity.url = url;
  }
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    sMHShareFileDetailEntity.code = code;
  }
  final bool? isPermanent = jsonConvert.convert<bool>(json['isPermanent']);
  if (isPermanent != null) {
    sMHShareFileDetailEntity.isPermanent = isPermanent;
  }

  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHShareFileDetailEntity.authorityList = authorityList;
  }
  return sMHShareFileDetailEntity;
}

Map<String, dynamic> $SMHShareFileDetailEntityToJson(
    SMHShareFileDetailEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['orgId'] = entity.orgId;
  data['extractionCode'] = entity.extractionCode;
  data['linkToLatestVersion'] = entity.linkToLatestVersion;
  data['expireTime'] = entity.expireTime;
  data['creationTime'] = entity.creationTime;
  data['disabled'] = entity.disabled;
  data['status'] = entity.status;
  data['userId'] = entity.userId;
  data['userNickname'] = entity.userNickname;
  data['userAvatar'] = entity.userAvatar;
  data['canModify'] = entity.canModify;
  data['canPreview'] = entity.canPreview;
  data['canDownload'] = entity.canDownload;
  data['canSaveToNetDisc'] = entity.canSaveToNetDisc;
  data['previewCountUsed'] = entity.previewCountUsed;
  data['downloadCountUsed'] = entity.downloadCountUsed;
  data['path'] = entity.path;
  data['size'] = entity.size;
  data['fileType'] = entity.fileType?.name;
  data['team'] = entity.team?.toJson();
  data['group'] = entity.group?.toJson();
  data['user'] = entity.user?.toJson();
  data['spaceTag'] = entity.spaceTag?.name;
  data['url'] = entity.url;
  data['code'] = entity.code;
  data['isPermanent'] = entity.isPermanent;
  data['authorityList'] = entity.authorityList?.toJson();
  return data;
}

SMHFileDetailTeam $SMHFileDetailTeamFromJson(Map<String, dynamic> json) {
  final SMHFileDetailTeam sMHFileDetailTeam = SMHFileDetailTeam();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHFileDetailTeam.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHFileDetailTeam.name = name;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHFileDetailTeam.spaceId = spaceId;
  }
  final int? parentId = jsonConvert.convert<int>(json['parentId']);
  if (parentId != null) {
    sMHFileDetailTeam.parentId = parentId;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHFileDetailTeam.orgId = orgId;
  }
  return sMHFileDetailTeam;
}

Map<String, dynamic> $SMHFileDetailTeamToJson(SMHFileDetailTeam entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['spaceId'] = entity.spaceId;
  data['parentId'] = entity.parentId;
  data['orgId'] = entity.orgId;
  return data;
}

SMHFileDetailGroup $SMHFileDetailGroupFromJson(Map<String, dynamic> json) {
  final SMHFileDetailGroup sMHFileDetailGroup = SMHFileDetailGroup();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHFileDetailGroup.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHFileDetailGroup.name = name;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHFileDetailGroup.spaceId = spaceId;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHFileDetailGroup.orgId = orgId;
  }
  return sMHFileDetailGroup;
}

Map<String, dynamic> $SMHFileDetailGroupToJson(SMHFileDetailGroup entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['spaceId'] = entity.spaceId;
  data['orgId'] = entity.orgId;
  return data;
}

SMHFileDetailUser $SMHFileDetailUserFromJson(Map<String, dynamic> json) {
  final SMHFileDetailUser sMHFileDetailUser = SMHFileDetailUser();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHFileDetailUser.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHFileDetailUser.name = name;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHFileDetailUser.orgId = orgId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHFileDetailUser.spaceId = spaceId;
  }
  return sMHFileDetailUser;
}

Map<String, dynamic> $SMHFileDetailUserToJson(SMHFileDetailUser entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['orgId'] = entity.orgId;
  data['spaceId'] = entity.spaceId;
  return data;
}

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_directory_detail_entity.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_related_authorization_file_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

SMHRelatedAuthorizationFileListEntity
    $SMHRelatedAuthorizationFileListEntityFromJson(Map<String, dynamic> json) {
  final SMHRelatedAuthorizationFileListEntity
      sMHRelatedAuthorizationFileListEntity =
      SMHRelatedAuthorizationFileListEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHRelatedAuthorizationFileListEntity.totalNum = totalNum;
  }
  final List<SMHRelatedAuthorizationFileListContents>? contents =
      jsonConvert.convertListNotNull<SMHRelatedAuthorizationFileListContents>(
          json['contents']);
  if (contents != null) {
    sMHRelatedAuthorizationFileListEntity.contents = contents;
  }
  return sMHRelatedAuthorizationFileListEntity;
}

Map<String, dynamic> $SMHRelatedAuthorizationFileListEntityToJson(
    SMHRelatedAuthorizationFileListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHRelatedAuthorizationFileListContents
    $SMHRelatedAuthorizationFileListContentsFromJson(
        Map<String, dynamic> json) {
  final SMHRelatedAuthorizationFileListContents
      sMHRelatedAuthorizationFileListContents =
      SMHRelatedAuthorizationFileListContents();
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHRelatedAuthorizationFileListContents.spaceId = spaceId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHRelatedAuthorizationFileListContents.name = name;
  }
  final String? authType = jsonConvert.convert<String>(json['authType']);
  if (authType != null) {
    sMHRelatedAuthorizationFileListContents.authType = authType;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHRelatedAuthorizationFileListContents.type =
        SMHFileType.byName(type);
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHRelatedAuthorizationFileListContents.userId = userId;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHRelatedAuthorizationFileListContents.creationTime = creationTime;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHRelatedAuthorizationFileListContents.modificationTime = modificationTime;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHRelatedAuthorizationFileListContents.path = path;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHRelatedAuthorizationFileListContents.fileType =
        SMHFileType.byName(fileType);
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHRelatedAuthorizationFileListContents.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHRelatedAuthorizationFileListContents.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHRelatedAuthorizationFileListContents.previewAsIcon = previewAsIcon;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHRelatedAuthorizationFileListContents.authorityList = authorityList;
  }
  final SMHDirectoryDetailLocalSync? localSync =
      jsonConvert.convert<SMHDirectoryDetailLocalSync>(json['localSync']);
  if (localSync != null) {
    sMHRelatedAuthorizationFileListContents.localSync = localSync;
  }
  final SMHFileDetailUser? user =
      jsonConvert.convert<SMHFileDetailUser>(json['user']);
  if (user != null) {
    sMHRelatedAuthorizationFileListContents.user = user;
  }
  final SMHFileDetailGroup? group =
      jsonConvert.convert<SMHFileDetailGroup>(json['group']);
  if (group != null) {
    sMHRelatedAuthorizationFileListContents.group = group;
  }
  final SMHFileDetailTeam? team =
      jsonConvert.convert<SMHFileDetailTeam>(json['team']);
  if (team != null) {
    sMHRelatedAuthorizationFileListContents.team = team;
  }
  final String? spaceTag = jsonConvert.convert<String>(json['spaceTag']);
  if (spaceTag != null) {
    sMHRelatedAuthorizationFileListContents.spaceTag =
        SMHSpaceTag.values.byName(spaceTag);
  }
  return sMHRelatedAuthorizationFileListContents;
}

Map<String, dynamic> $SMHRelatedAuthorizationFileListContentsToJson(
    SMHRelatedAuthorizationFileListContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['spaceId'] = entity.spaceId;
  data['name'] = entity.name;
  data['authType'] = entity.authType;
  data['type'] = entity.type?.name;
  data['userId'] = entity.userId;
  data['creationTime'] = entity.creationTime;
  data['modificationTime'] = entity.modificationTime;
  data['path'] = entity.path;
  data['fileType'] = entity.fileType?.name;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['authorityList'] = entity.authorityList?.toJson();
  data['localSync'] = entity.localSync?.toJson();
  data['user'] = entity.user?.toJson();
  data['group'] = entity.group?.toJson();
  data['team'] = entity.team?.toJson();
  data['spaceTag'] = entity.spaceTag?.name;
  return data;
}

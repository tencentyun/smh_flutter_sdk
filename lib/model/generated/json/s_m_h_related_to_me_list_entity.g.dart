import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_directory_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_related_to_me_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

SMHRelatedToMeListEntity $SMHRelatedToMeListEntityFromJson(
    Map<String, dynamic> json) {
  final SMHRelatedToMeListEntity sMHRelatedToMeListEntity =
      SMHRelatedToMeListEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHRelatedToMeListEntity.totalNum = totalNum;
  }
  final String? nextMarker = jsonConvert.convert<String>(json['nextMarker']);
  if (nextMarker != null) {
    sMHRelatedToMeListEntity.nextMarker = nextMarker;
  }
  final List<SMHRelatedToMeListContents>? contents = jsonConvert
      .convertListNotNull<SMHRelatedToMeListContents>(json['contents']);
  if (contents != null) {
    sMHRelatedToMeListEntity.contents = contents;
  }
  return sMHRelatedToMeListEntity;
}

Map<String, dynamic> $SMHRelatedToMeListEntityToJson(
    SMHRelatedToMeListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['nextMarker'] = entity.nextMarker;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHRelatedToMeListContents $SMHRelatedToMeListContentsFromJson(
    Map<String, dynamic> json) {
  final SMHRelatedToMeListContents sMHRelatedToMeListContents =
      SMHRelatedToMeListContents();
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    sMHRelatedToMeListContents.description = description;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHRelatedToMeListContents.spaceId = spaceId;
  }
  final int? spaceOrgId = jsonConvert.convert<int>(json['spaceOrgId']);
  if (spaceOrgId != null) {
    sMHRelatedToMeListContents.spaceOrgId = spaceOrgId;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHRelatedToMeListContents.type = SMHFileType.byName(type);
  }
  final bool? visible = jsonConvert.convert<bool>(json['visible']);
  if (visible != null) {
    sMHRelatedToMeListContents.visible = visible;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHRelatedToMeListContents.modificationTime = modificationTime;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHRelatedToMeListContents.fileType = SMHFileType.byName(fileType);
  }
  final String? contentType = jsonConvert.convert<String>(json['contentType']);
  if (contentType != null) {
    sMHRelatedToMeListContents.contentType = contentType;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHRelatedToMeListContents.name = name;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHRelatedToMeListContents.size = size;
  }
  final String? crc64 = jsonConvert.convert<String>(json['crc64']);
  if (crc64 != null) {
    sMHRelatedToMeListContents.crc64 = crc64;
  }
  final String? eTag = jsonConvert.convert<String>(json['eTag']);
  if (eTag != null) {
    sMHRelatedToMeListContents.eTag = eTag;
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHRelatedToMeListContents.userId = userId;
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHRelatedToMeListContents.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHRelatedToMeListContents.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHRelatedToMeListContents.previewAsIcon = previewAsIcon;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHRelatedToMeListContents.authorityList = authorityList;
  }
  final SMHDirectoryDetailLocalSync? localSync =
      jsonConvert.convert<SMHDirectoryDetailLocalSync>(json['localSync']);
  if (localSync != null) {
    sMHRelatedToMeListContents.localSync = localSync;
  }
  final SMHFileDetailTeam? team =
      jsonConvert.convert<SMHFileDetailTeam>(json['team']);
  if (team != null) {
    sMHRelatedToMeListContents.team = team;
  }
  final SMHFileDetailGroup? group =
      jsonConvert.convert<SMHFileDetailGroup>(json['group']);
  if (group != null) {
    sMHRelatedToMeListContents.group = group;
  }
  final SMHFileDetailUser? user =
      jsonConvert.convert<SMHFileDetailUser>(json['user']);
  if (user != null) {
    sMHRelatedToMeListContents.user = user;
  }
  final bool? isUserBelongSpace =
      jsonConvert.convert<bool>(json['isUserBelongSpace']);
  if (isUserBelongSpace != null) {
    sMHRelatedToMeListContents.isUserBelongSpace = isUserBelongSpace;
  }
  return sMHRelatedToMeListContents;
}

Map<String, dynamic> $SMHRelatedToMeListContentsToJson(
    SMHRelatedToMeListContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['description'] = entity.description;
  data['spaceId'] = entity.spaceId;
  data['spaceOrgId'] = entity.spaceOrgId;
  data['type'] = entity.type?.name;
  data['visible'] = entity.visible;
  data['modificationTime'] = entity.modificationTime;
  data['fileType'] = entity.fileType?.name;
  data['contentType'] = entity.contentType;
  data['name'] = entity.name;
  data['size'] = entity.size;
  data['crc64'] = entity.crc64;
  data['eTag'] = entity.eTag;
  data['userId'] = entity.userId;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['authorityList'] = entity.authorityList?.toJson();
  data['localSync'] = entity.localSync?.toJson();
  data['team'] = entity.team?.toJson();
  data['group'] = entity.group?.toJson();
  data['user'] = entity.user?.toJson();
  data['isUserBelongSpace'] = entity.isUserBelongSpace;
  return data;
}

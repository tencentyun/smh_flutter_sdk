import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_directory_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_favorite_file_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

SMHFileListEntity $SMHFileListEntityFromJson(Map<String, dynamic> json) {
  final SMHFileListEntity sMHFileListEntity = SMHFileListEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHFileListEntity.totalNum = totalNum;
  }
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    sMHFileListEntity.page = page;
  }
  final int? pageSize = jsonConvert.convert<int>(json['pageSize']);
  if (pageSize != null) {
    sMHFileListEntity.pageSize = pageSize;
  }
  final List<SMHFileListContent>? contents =
      jsonConvert.convertListNotNull<SMHFileListContent>(json['contents']);
  if (contents != null) {
    sMHFileListEntity.contents = contents;
  }
  return sMHFileListEntity;
}

Map<String, dynamic> $SMHFileListEntityToJson(SMHFileListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['page'] = entity.page;
  data['pageSize'] = entity.pageSize;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHFileListContent $SMHFileListContentFromJson(Map<String, dynamic> json) {
  final SMHFileListContent sMHFileListContent = SMHFileListContent();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHFileListContent.id = id;
  }
  final int? favoriteGroupId =
      jsonConvert.convert<int>(json['favoriteGroupId']);
  if (favoriteGroupId != null) {
    sMHFileListContent.favoriteGroupId = favoriteGroupId;
  }
  final int? spaceOrgId = jsonConvert.convert<int>(json['spaceOrgId']);
  if (spaceOrgId != null) {
    sMHFileListContent.spaceOrgId = spaceOrgId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHFileListContent.spaceId = spaceId;
  }
  final String? libraryId = jsonConvert.convert<String>(json['libraryId']);
  if (libraryId != null) {
    sMHFileListContent.libraryId = libraryId;
  }
  final bool? visible = jsonConvert.convert<bool>(json['visible']);
  if (visible != null) {
    sMHFileListContent.visible = visible;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHFileListContent.type = SMHFileType.byName(type);
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHFileListContent.modificationTime = modificationTime;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHFileListContent.path = path;
  }

  final List<String>? relatedToMePath =
      jsonConvert.convertListNotNull<String>(json['relatedToMePath']);
  if (relatedToMePath != null) {
    sMHFileListContent.relatedToMePath = relatedToMePath;
  }

  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHFileListContent.name = name;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHFileListContent.fileType = SMHFileType.byName(fileType);
  }
  final String? contentType = jsonConvert.convert<String>(json['contentType']);
  if (contentType != null) {
    sMHFileListContent.contentType = contentType;
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHFileListContent.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHFileListContent.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHFileListContent.previewAsIcon = previewAsIcon;
  }

  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHFileListContent.size = size;
  }
  final String? crc64 = jsonConvert.convert<String>(json['crc64']);
  if (crc64 != null) {
    sMHFileListContent.crc64 = crc64;
  }
  final String? eTag = jsonConvert.convert<String>(json['eTag']);
  if (eTag != null) {
    sMHFileListContent.eTag = eTag;
  }
  final SMHDirectoryDetailLocalSync? localSync =
      jsonConvert.convert<SMHDirectoryDetailLocalSync>(json['localSync']);
  if (localSync != null) {
    sMHFileListContent.localSync = localSync;
  }
  final SMHFileDetailTeam? team =
      jsonConvert.convert<SMHFileDetailTeam>(json['team']);
  if (team != null) {
    sMHFileListContent.team = team;
  }
  final SMHFileDetailGroup? group =
      jsonConvert.convert<SMHFileDetailGroup>(json['group']);
  if (group != null) {
    sMHFileListContent.group = group;
  }
  final SMHFileDetailUser? user =
      jsonConvert.convert<SMHFileDetailUser>(json['user']);
  if (user != null) {
    sMHFileListContent.user = user;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHFileListContent.authorityList = authorityList;
  }
  final bool? isUserBelongSpace =
      jsonConvert.convert<bool>(json['isUserBelongSpace']);
  if (isUserBelongSpace != null) {
    sMHFileListContent.isUserBelongSpace = isUserBelongSpace;
  }
  return sMHFileListContent;
}

Map<String, dynamic> $SMHFileListContentToJson(SMHFileListContent entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['favoriteGroupId'] = entity.favoriteGroupId;
  data['spaceOrgId'] = entity.spaceOrgId;
  data['spaceId'] = entity.spaceId;
  data['libraryId'] = entity.libraryId;
  data['visible'] = entity.visible;
  data['type'] = entity.type?.name;
  data['modificationTime'] = entity.modificationTime;
  data['path'] = entity.path;
  data['relatedToMePath'] = entity.relatedToMePath;
  data['name'] = entity.name;
  data['fileType'] = entity.fileType?.name;
  data['contentType'] = entity.contentType;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['size'] = entity.size;
  data['crc64'] = entity.crc64;
  data['eTag'] = entity.eTag;
  data['localSync'] = entity.localSync?.toJson();
  data['team'] = entity.team?.toJson();
  data['group'] = entity.group?.toJson();
  data['user'] = entity.user?.toJson();
  data['authorityList'] = entity.authorityList?.toJson();
  data['isUserBelongSpace'] = entity.isUserBelongSpace;
  return data;
}

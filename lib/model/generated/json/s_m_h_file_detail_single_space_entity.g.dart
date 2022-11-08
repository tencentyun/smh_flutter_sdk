import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_single_space_entity.dart';

SMHFileDetailSingleSpaceEntity $SMHFileDetailSingleSpaceEntityFromJson(
    Map<String, dynamic> json) {
  final SMHFileDetailSingleSpaceEntity sMHFileDetailSingleSpaceEntity =
      SMHFileDetailSingleSpaceEntity();
  final bool? isExist = jsonConvert.convert<bool>(json['isExist']);
  if (isExist != null) {
    sMHFileDetailSingleSpaceEntity.isExist = isExist;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHFileDetailSingleSpaceEntity.name = name;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHFileDetailSingleSpaceEntity.path = path;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHFileDetailSingleSpaceEntity.type = SMHFileType.byName(type);
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHFileDetailSingleSpaceEntity.creationTime = creationTime;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHFileDetailSingleSpaceEntity.modificationTime = modificationTime;
  }
  final int? versionId = jsonConvert.convert<int>(json['versionId']);
  if (versionId != null) {
    sMHFileDetailSingleSpaceEntity.versionId = versionId;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHFileDetailSingleSpaceEntity.authorityList = authorityList;
  }
  final String? contentType = jsonConvert.convert<String>(json['contentType']);
  if (contentType != null) {
    sMHFileDetailSingleSpaceEntity.contentType = contentType;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHFileDetailSingleSpaceEntity.size = size;
  }
  final String? eTag = jsonConvert.convert<String>(json['eTag']);
  if (eTag != null) {
    sMHFileDetailSingleSpaceEntity.eTag = eTag;
  }
  final String? crc64 = jsonConvert.convert<String>(json['crc64']);
  if (crc64 != null) {
    sMHFileDetailSingleSpaceEntity.crc64 = crc64;
  }
  sMHFileDetailSingleSpaceEntity.metaData = json['metaData'];
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHFileDetailSingleSpaceEntity.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHFileDetailSingleSpaceEntity.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHFileDetailSingleSpaceEntity.previewAsIcon = previewAsIcon;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHFileDetailSingleSpaceEntity.fileType = SMHFileType.byName(fileType);
  }
  final List<SMHFileDetailContentsTagList>? tagList = jsonConvert
      .convertListNotNull<SMHFileDetailContentsTagList>(json['tagList']);
  if (tagList != null) {
    sMHFileDetailSingleSpaceEntity.tagList = tagList;
  }
  return sMHFileDetailSingleSpaceEntity;
}

Map<String, dynamic> $SMHFileDetailSingleSpaceEntityToJson(
    SMHFileDetailSingleSpaceEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['isExist'] = entity.isExist;
  data['name'] = entity.name;
  data['path'] = entity.path;
  data['type'] = entity.type?.name;
  data['creationTime'] = entity.creationTime;
  data['modificationTime'] = entity.modificationTime;
  data['versionId'] = entity.versionId;
  data['authorityList'] = entity.authorityList?.toJson();
  data['contentType'] = entity.contentType;
  data['size'] = entity.size;
  data['eTag'] = entity.eTag;
  data['crc64'] = entity.crc64;
  data['metaData'] = entity.metaData;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['fileType'] = entity.fileType?.name;
  data['tagList'] = entity.tagList?.map((v) => v.toJson()).toList();
  return data;
}

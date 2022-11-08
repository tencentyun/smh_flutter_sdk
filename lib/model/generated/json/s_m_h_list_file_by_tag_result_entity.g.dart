import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_list_file_by_tag_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';

SMHListFileByTagResultEntity $SMHListFileByTagResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHListFileByTagResultEntity sMHListFileByTagResultEntity =
      SMHListFileByTagResultEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHListFileByTagResultEntity.totalNum = totalNum;
  }
  final List<SMHListFileByTagResultContents>? contents = jsonConvert
      .convertListNotNull<SMHListFileByTagResultContents>(json['contents']);
  if (contents != null) {
    sMHListFileByTagResultEntity.contents = contents;
  }
  return sMHListFileByTagResultEntity;
}

Map<String, dynamic> $SMHListFileByTagResultEntityToJson(
    SMHListFileByTagResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHListFileByTagResultContents $SMHListFileByTagResultContentsFromJson(
    Map<String, dynamic> json) {
  final SMHListFileByTagResultContents sMHListFileByTagResultContents =
      SMHListFileByTagResultContents();
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHListFileByTagResultContents.path = path;
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHListFileByTagResultContents.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHListFileByTagResultContents.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHListFileByTagResultContents.previewAsIcon = previewAsIcon;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHListFileByTagResultContents.fileType =
        SMHFileType.byName(fileType);
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHListFileByTagResultContents.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHListFileByTagResultContents.type = SMHFileType.byName(type);
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHListFileByTagResultContents.userId = userId;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHListFileByTagResultContents.creationTime = creationTime;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHListFileByTagResultContents.modificationTime = modificationTime;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHListFileByTagResultContents.authorityList = authorityList;
  }
  final dynamic versionId = jsonConvert.convert<dynamic>(json['versionId']);
  if (versionId != null) {
    sMHListFileByTagResultContents.versionId = versionId;
  }
  final String? contentType = jsonConvert.convert<String>(json['contentType']);
  if (contentType != null) {
    sMHListFileByTagResultContents.contentType = contentType;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHListFileByTagResultContents.size = size;
  }
  final String? eTag = jsonConvert.convert<String>(json['eTag']);
  if (eTag != null) {
    sMHListFileByTagResultContents.eTag = eTag;
  }
  final String? crc64 = jsonConvert.convert<String>(json['crc64']);
  if (crc64 != null) {
    sMHListFileByTagResultContents.crc64 = crc64;
  }
  final Map<String, dynamic>? metaData =
      jsonConvert.convert<Map<String, dynamic>>(json['metaData']);
  if (metaData != null) {
    sMHListFileByTagResultContents.metaData = metaData;
  }
  return sMHListFileByTagResultContents;
}

Map<String, dynamic> $SMHListFileByTagResultContentsToJson(
    SMHListFileByTagResultContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['path'] = entity.path;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['fileType'] = entity.fileType?.name;
  data['name'] = entity.name;
  data['type'] = entity.type?.name;
  data['userId'] = entity.userId;
  data['creationTime'] = entity.creationTime;
  data['modificationTime'] = entity.modificationTime;
  data['authorityList'] = entity.authorityList?.toJson();
  data['versionId'] = entity.versionId;
  data['contentType'] = entity.contentType;
  data['size'] = entity.size;
  data['eTag'] = entity.eTag;
  data['crc64'] = entity.crc64;
  data['metaData'] = entity.metaData;
  return data;
}

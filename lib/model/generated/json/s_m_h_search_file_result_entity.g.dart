import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_search_file_result_entity.dart';

SMHSearchFileResultEntity $SMHSearchFileResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHSearchFileResultEntity sMHSearchFileResultEntity =
      SMHSearchFileResultEntity();
  final String? searchId = jsonConvert.convert<String>(json['searchId']);
  if (searchId != null) {
    sMHSearchFileResultEntity.searchId = searchId;
  }
  final bool? hasMore = jsonConvert.convert<bool>(json['hasMore']);
  if (hasMore != null) {
    sMHSearchFileResultEntity.hasMore = hasMore;
  }
  final String? nextMarker = jsonConvert.convert<String>(json['nextMarker']);
  if (nextMarker != null) {
    sMHSearchFileResultEntity.nextMarker = nextMarker;
  }
  final List<SMHSearchFileResultContents>? contents = jsonConvert
      .convertListNotNull<SMHSearchFileResultContents>(json['contents']);
  if (contents != null) {
    sMHSearchFileResultEntity.contents = contents;
  }
  return sMHSearchFileResultEntity;
}

Map<String, dynamic> $SMHSearchFileResultEntityToJson(
    SMHSearchFileResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['searchId'] = entity.searchId;
  data['hasMore'] = entity.hasMore;
  data['nextMarker'] = entity.nextMarker;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHSearchFileResultContents $SMHSearchFileResultContentsFromJson(
    Map<String, dynamic> json) {
  final SMHSearchFileResultContents sMHSearchFileResultContents =
      SMHSearchFileResultContents();
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHSearchFileResultContents.type = SMHFileType.byName(type);
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHSearchFileResultContents.name = name;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHSearchFileResultContents.creationTime = creationTime;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHSearchFileResultContents.modificationTime = modificationTime;
  }
  final String? contentType = jsonConvert.convert<String>(json['contentType']);
  if (contentType != null) {
    sMHSearchFileResultContents.contentType = contentType;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHSearchFileResultContents.size = size;
  }
  final String? eTag = jsonConvert.convert<String>(json['eTag']);
  if (eTag != null) {
    sMHSearchFileResultContents.eTag = eTag;
  }
  final String? crc64 = jsonConvert.convert<String>(json['crc64']);
  if (crc64 != null) {
    sMHSearchFileResultContents.crc64 = crc64;
  }
  final int? versionId = jsonConvert.convert<int>(json['versionId']);
  if (versionId != null) {
    sMHSearchFileResultContents.versionId = versionId;
  }
  final Map<String, dynamic>? metaData =
      jsonConvert.convert<Map<String, dynamic>>(json['metaData']);
  if (metaData != null) {
    sMHSearchFileResultContents.metaData = metaData;
  }
  final List<dynamic>? path =
      jsonConvert.convertListNotNull<dynamic>(json['path']);
  if (path != null) {
    sMHSearchFileResultContents.path = path;
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHSearchFileResultContents.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHSearchFileResultContents.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHSearchFileResultContents.previewAsIcon = previewAsIcon;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHSearchFileResultContents.fileType = SMHFileType.byName(fileType);
  }
  final String? modifierName =
      jsonConvert.convert<String>(json['modifierName']);
  if (modifierName != null) {
    sMHSearchFileResultContents.modifierName = modifierName;
  }
  return sMHSearchFileResultContents;
}

Map<String, dynamic> $SMHSearchFileResultContentsToJson(
    SMHSearchFileResultContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['type'] = entity.type?.name;
  data['name'] = entity.name;
  data['creationTime'] = entity.creationTime;
  data['modificationTime'] = entity.modificationTime;
  data['contentType'] = entity.contentType;
  data['size'] = entity.size;
  data['eTag'] = entity.eTag;
  data['crc64'] = entity.crc64;
  data['versionId'] = entity.versionId;
  data['metaData'] = entity.metaData;
  data['path'] = entity.path;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['fileType'] = entity.fileType?.name;
  data['modifierName'] = entity.modifierName;
  return data;
}

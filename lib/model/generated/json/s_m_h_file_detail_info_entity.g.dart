import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_file_detail_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';

SMHFileDetailInfoEntity $SMHFileDetailInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHFileDetailInfoEntity sMHFileDetailInfoEntity =
      SMHFileDetailInfoEntity();
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHFileDetailInfoEntity.path = path;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHFileDetailInfoEntity.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHFileDetailInfoEntity.type = SMHFileType.byName(type);
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHFileDetailInfoEntity.userId = userId;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHFileDetailInfoEntity.creationTime = creationTime;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHFileDetailInfoEntity.modificationTime = modificationTime;
  }
  final int? versionId = jsonConvert.convert<int>(json['versionId']);
  if (versionId != null) {
    sMHFileDetailInfoEntity.versionId = versionId;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHFileDetailInfoEntity.size = size;
  }
  final String? eTag = jsonConvert.convert<String>(json['eTag']);
  if (eTag != null) {
    sMHFileDetailInfoEntity.eTag = eTag;
  }
  final String? crc64 = jsonConvert.convert<String>(json['crc64']);
  if (crc64 != null) {
    sMHFileDetailInfoEntity.crc64 = crc64;
  }
  final String? contentType = jsonConvert.convert<String>(json['contentType']);
  if (contentType != null) {
    sMHFileDetailInfoEntity.contentType = contentType;
  }
  final Map<String, dynamic>? metaData =
      jsonConvert.convert<Map<String, dynamic>>(json['metaData']);
  if (metaData != null) {
    sMHFileDetailInfoEntity.metaData = metaData;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHFileDetailInfoEntity.authorityList = authorityList;
  }
  final String? historySize = jsonConvert.convert<String>(json['historySize']);
  if (historySize != null) {
    sMHFileDetailInfoEntity.historySize = historySize;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHFileDetailInfoEntity.fileType = SMHFileType.byName(fileType);
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHFileDetailInfoEntity.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHFileDetailInfoEntity.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHFileDetailInfoEntity.previewAsIcon = previewAsIcon;
  }
  return sMHFileDetailInfoEntity;
}

Map<String, dynamic> $SMHFileDetailInfoEntityToJson(
    SMHFileDetailInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['path'] = entity.path;
  data['name'] = entity.name;
  data['type'] = entity.type?.name;
  data['userId'] = entity.userId;
  data['creationTime'] = entity.creationTime;
  data['modificationTime'] = entity.modificationTime;
  data['versionId'] = entity.versionId;
  data['size'] = entity.size;
  data['eTag'] = entity.eTag;
  data['crc64'] = entity.crc64;
  data['contentType'] = entity.contentType;
  data['metaData'] = entity.metaData;
  data['authorityList'] = entity.authorityList?.toJson();
  data['historySize'] = entity.historySize;
  data['fileType'] = entity.fileType?.name;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  return data;
}

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_setting_history_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';

SMHSettingHistoryResultEntity $SMHSettingHistoryResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHSettingHistoryResultEntity sMHSettingHistoryResultEntity =
      SMHSettingHistoryResultEntity();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHSettingHistoryResultEntity.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHSettingHistoryResultEntity.type = SMHFileType.byName(type);
  }
  final String? objectKey = jsonConvert.convert<String>(json['objectKey']);
  if (objectKey != null) {
    sMHSettingHistoryResultEntity.objectKey = objectKey;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHSettingHistoryResultEntity.creationTime = creationTime;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHSettingHistoryResultEntity.modificationTime = modificationTime;
  }
  final String? setLatestTime =
      jsonConvert.convert<String>(json['setLatestTime']);
  if (setLatestTime != null) {
    sMHSettingHistoryResultEntity.setLatestTime = setLatestTime;
  }
  final String? contentType = jsonConvert.convert<String>(json['contentType']);
  if (contentType != null) {
    sMHSettingHistoryResultEntity.contentType = contentType;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHSettingHistoryResultEntity.size = size;
  }
  final String? eTag = jsonConvert.convert<String>(json['eTag']);
  if (eTag != null) {
    sMHSettingHistoryResultEntity.eTag = eTag;
  }
  final String? crc64 = jsonConvert.convert<String>(json['crc64']);
  if (crc64 != null) {
    sMHSettingHistoryResultEntity.crc64 = crc64;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHSettingHistoryResultEntity.authorityList = authorityList;
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHSettingHistoryResultEntity.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHSettingHistoryResultEntity.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHSettingHistoryResultEntity.previewAsIcon = previewAsIcon;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHSettingHistoryResultEntity.fileType =
        SMHFileType.byName(fileType);
  }
  return sMHSettingHistoryResultEntity;
}

Map<String, dynamic> $SMHSettingHistoryResultEntityToJson(
    SMHSettingHistoryResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type?.name;
  data['objectKey'] = entity.objectKey;
  data['creationTime'] = entity.creationTime;
  data['modificationTime'] = entity.modificationTime;
  data['setLatestTime'] = entity.setLatestTime;
  data['contentType'] = entity.contentType;
  data['size'] = entity.size;
  data['eTag'] = entity.eTag;
  data['crc64'] = entity.crc64;
  data['authorityList'] = entity.authorityList?.toJson();
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['fileType'] = entity.fileType?.name;
  return data;
}

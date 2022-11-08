import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_file_download_url_entity.dart';

SMHFileDownloadUrlEntity $SMHFileDownloadUrlEntityFromJson(
    Map<String, dynamic> json) {
  final SMHFileDownloadUrlEntity sMHFileDownloadUrlEntity =
      SMHFileDownloadUrlEntity();
  final String? cosUrl = jsonConvert.convert<String>(json['cosUrl']);
  if (cosUrl != null) {
    sMHFileDownloadUrlEntity.cosUrl = cosUrl;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHFileDownloadUrlEntity.type = SMHFileType.byName(type);
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHFileDownloadUrlEntity.creationTime = creationTime;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHFileDownloadUrlEntity.modificationTime = modificationTime;
  }
  final String? contentType = jsonConvert.convert<String>(json['contentType']);
  if (contentType != null) {
    sMHFileDownloadUrlEntity.contentType = contentType;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHFileDownloadUrlEntity.size = size;
  }
  final String? eTag = jsonConvert.convert<String>(json['eTag']);
  if (eTag != null) {
    sMHFileDownloadUrlEntity.eTag = eTag;
  }
  final String? crc64 = jsonConvert.convert<String>(json['crc64']);
  if (crc64 != null) {
    sMHFileDownloadUrlEntity.crc64 = crc64;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHFileDownloadUrlEntity.fileType = SMHFileType.byName(fileType);
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHFileDownloadUrlEntity.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHFileDownloadUrlEntity.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHFileDownloadUrlEntity.previewAsIcon = previewAsIcon;
  }
  final Map<String, dynamic>? metaData =
      jsonConvert.convert<Map<String, dynamic>>(json['metaData']);
  if (metaData != null) {
    sMHFileDownloadUrlEntity.metaData = metaData;
  }
  return sMHFileDownloadUrlEntity;
}

Map<String, dynamic> $SMHFileDownloadUrlEntityToJson(
    SMHFileDownloadUrlEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['cosUrl'] = entity.cosUrl;
  data['type'] = entity.type?.name;
  data['creationTime'] = entity.creationTime;
  data['modificationTime'] = entity.modificationTime;
  data['contentType'] = entity.contentType;
  data['size'] = entity.size;
  data['eTag'] = entity.eTag;
  data['crc64'] = entity.crc64;
  data['fileType'] = entity.fileType?.name;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['metaData'] = entity.metaData;
  return data;
}

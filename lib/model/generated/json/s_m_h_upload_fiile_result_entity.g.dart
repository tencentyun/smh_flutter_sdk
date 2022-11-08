import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_upload_fiile_result_entity.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

SMHUploadFileResultEntity $SMHUploadFileResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHUploadFileResultEntity sMHUploadFileResultEntity =
      SMHUploadFileResultEntity();
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHUploadFileResultEntity.path = path;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHUploadFileResultEntity.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHUploadFileResultEntity.type = SMHFileType.byName(type);
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHUploadFileResultEntity.creationTime = creationTime;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHUploadFileResultEntity.modificationTime = modificationTime;
  }
  final String? contentType = jsonConvert.convert<String>(json['contentType']);
  if (contentType != null) {
    sMHUploadFileResultEntity.contentType = contentType;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHUploadFileResultEntity.size = size;
  }
  final String? eTag = jsonConvert.convert<String>(json['eTag']);
  if (eTag != null) {
    sMHUploadFileResultEntity.eTag = eTag;
  }
  final String? crc64 = jsonConvert.convert<String>(json['crc64']);
  if (crc64 != null) {
    sMHUploadFileResultEntity.crc64 = crc64;
  }
  sMHUploadFileResultEntity.metaData = json['metaData'];
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHUploadFileResultEntity.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHUploadFileResultEntity.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHUploadFileResultEntity.previewAsIcon = previewAsIcon;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHUploadFileResultEntity.fileType = SMHFileType.byName(fileType);
  }
  final int? virusAuditStatus =
      jsonConvert.convert<int>(json['virusAuditStatus']);
  if (virusAuditStatus != null) {
    sMHUploadFileResultEntity.virusAuditStatus =
        SMHVirusAuditStatus.values[virusAuditStatus];
  }
  return sMHUploadFileResultEntity;
}

Map<String, dynamic> $SMHUploadFileResultEntityToJson(
    SMHUploadFileResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['path'] = entity.path;
  data['name'] = entity.name;
  data['type'] = entity.type?.name;
  data['creationTime'] = entity.creationTime;
  data['modificationTime'] = entity.modificationTime;
  data['contentType'] = entity.contentType;
  data['size'] = entity.size;
  data['eTag'] = entity.eTag;
  data['crc64'] = entity.crc64;
  data['metaData'] = entity.metaData;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['fileType'] = entity.fileType?.name;
  data['virusAuditStatus'] = entity.virusAuditStatus?.index;
  return data;
}

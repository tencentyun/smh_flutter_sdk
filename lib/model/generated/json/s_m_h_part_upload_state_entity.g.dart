import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_part_upload_state_entity.dart';

SMHPartUploadStateEntity $SMHPartUploadStateEntityFromJson(
    Map<String, dynamic> json) {
  final SMHPartUploadStateEntity sMHPartUploadStateEntity =
      SMHPartUploadStateEntity();
  final bool? confirmed = jsonConvert.convert<bool>(json['confirmed']);
  if (confirmed != null) {
    sMHPartUploadStateEntity.confirmed = confirmed;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHPartUploadStateEntity.path = path;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHPartUploadStateEntity.type = SMHFileType.byName(type);
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHPartUploadStateEntity.creationTime = creationTime;
  }
  final bool? force = jsonConvert.convert<bool>(json['force']);
  if (force != null) {
    sMHPartUploadStateEntity.force = force;
  }
  final List<SMHPartUploadStateParts>? parts =
      jsonConvert.convertListNotNull<SMHPartUploadStateParts>(json['parts']);
  if (parts != null) {
    sMHPartUploadStateEntity.parts = parts;
  }
  final SMHPartUploadStateUploadPartInfo? uploadPartInfo = jsonConvert
      .convert<SMHPartUploadStateUploadPartInfo>(json['uploadPartInfo']);
  if (uploadPartInfo != null) {
    sMHPartUploadStateEntity.uploadPartInfo = uploadPartInfo;
  }
  return sMHPartUploadStateEntity;
}

Map<String, dynamic> $SMHPartUploadStateEntityToJson(
    SMHPartUploadStateEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['confirmed'] = entity.confirmed;
  data['path'] = entity.path;
  data['type'] = entity.type?.name;
  data['creationTime'] = entity.creationTime;
  data['force'] = entity.force;
  data['parts'] = entity.parts?.map((v) => v.toJson()).toList();
  data['uploadPartInfo'] = entity.uploadPartInfo?.toJson();
  return data;
}

SMHPartUploadStateParts $SMHPartUploadStatePartsFromJson(
    Map<String, dynamic> json) {
  final SMHPartUploadStateParts sMHPartUploadStateParts =
      SMHPartUploadStateParts();
  final int? partNumber = jsonConvert.convert<int>(json['PartNumber']);
  if (partNumber != null) {
    sMHPartUploadStateParts.partNumber = partNumber;
  }
  final String? lastModified =
      jsonConvert.convert<String>(json['LastModified']);
  if (lastModified != null) {
    sMHPartUploadStateParts.lastModified = lastModified;
  }
  final String? eTag = jsonConvert.convert<String>(json['ETag']);
  if (eTag != null) {
    sMHPartUploadStateParts.eTag = eTag;
  }
  final int? size = jsonConvert.convert<int>(json['Size']);
  if (size != null) {
    sMHPartUploadStateParts.size = size;
  }
  return sMHPartUploadStateParts;
}

Map<String, dynamic> $SMHPartUploadStatePartsToJson(
    SMHPartUploadStateParts entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['PartNumber'] = entity.partNumber;
  data['LastModified'] = entity.lastModified;
  data['ETag'] = entity.eTag;
  data['Size'] = entity.size;
  return data;
}

SMHPartUploadStateUploadPartInfo $SMHPartUploadStateUploadPartInfoFromJson(
    Map<String, dynamic> json) {
  final SMHPartUploadStateUploadPartInfo sMHPartUploadStateUploadPartInfo =
      SMHPartUploadStateUploadPartInfo();
  final String? domain = jsonConvert.convert<String>(json['domain']);
  if (domain != null) {
    sMHPartUploadStateUploadPartInfo.domain = domain;
  }
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    sMHPartUploadStateUploadPartInfo.path = path;
  }
  final String? uploadId = jsonConvert.convert<String>(json['uploadId']);
  if (uploadId != null) {
    sMHPartUploadStateUploadPartInfo.uploadId = uploadId;
  }
  final SMHPartUploadStateUploadPartInfoHeaders? headers = jsonConvert
      .convert<SMHPartUploadStateUploadPartInfoHeaders>(json['headers']);
  if (headers != null) {
    sMHPartUploadStateUploadPartInfo.headers = headers;
  }
  final String? expiration = jsonConvert.convert<String>(json['expiration']);
  if (expiration != null) {
    sMHPartUploadStateUploadPartInfo.expiration = expiration;
  }
  return sMHPartUploadStateUploadPartInfo;
}

Map<String, dynamic> $SMHPartUploadStateUploadPartInfoToJson(
    SMHPartUploadStateUploadPartInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['domain'] = entity.domain;
  data['path'] = entity.path;
  data['uploadId'] = entity.uploadId;
  data['headers'] = entity.headers?.toJson();
  data['expiration'] = entity.expiration;
  return data;
}

SMHPartUploadStateUploadPartInfoHeaders
    $SMHPartUploadStateUploadPartInfoHeadersFromJson(
        Map<String, dynamic> json) {
  final SMHPartUploadStateUploadPartInfoHeaders
      sMHPartUploadStateUploadPartInfoHeaders =
      SMHPartUploadStateUploadPartInfoHeaders();
  final String? contentType = jsonConvert.convert<String>(json['Content-Type']);
  if (contentType != null) {
    sMHPartUploadStateUploadPartInfoHeaders.contentType = contentType;
  }
  final String? authorization =
      jsonConvert.convert<String>(json['Authorization']);
  if (authorization != null) {
    sMHPartUploadStateUploadPartInfoHeaders.authorization = authorization;
  }
  final String? xCosSecurityToken =
      jsonConvert.convert<String>(json['x-cos-security-token']);
  if (xCosSecurityToken != null) {
    sMHPartUploadStateUploadPartInfoHeaders.xCosSecurityToken =
        xCosSecurityToken;
  }
  return sMHPartUploadStateUploadPartInfoHeaders;
}

Map<String, dynamic> $SMHPartUploadStateUploadPartInfoHeadersToJson(
    SMHPartUploadStateUploadPartInfoHeaders entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['Content-Type'] = entity.contentType;
  data['Authorization'] = entity.authorization;
  data['x-cos-security-token'] = entity.xCosSecurityToken;
  return data;
}

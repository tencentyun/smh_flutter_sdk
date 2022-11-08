import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_begin_part_upload_entity.dart';

SMHBeginPartUploadEntity $SMHBeginPartUploadEntityFromJson(
    Map<String, dynamic> json) {
  final SMHBeginPartUploadEntity sMHBeginPartUploadEntity =
      SMHBeginPartUploadEntity();
  final String? domain = jsonConvert.convert<String>(json['domain']);
  if (domain != null) {
    sMHBeginPartUploadEntity.domain = domain;
  }
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    sMHBeginPartUploadEntity.path = path;
  }
  final String? uploadId = jsonConvert.convert<String>(json['uploadId']);
  if (uploadId != null) {
    sMHBeginPartUploadEntity.uploadId = uploadId;
  }
  final SMHBeginPartUploadHeaders? headers =
      jsonConvert.convert<SMHBeginPartUploadHeaders>(json['headers']);
  if (headers != null) {
    sMHBeginPartUploadEntity.headers = headers;
  }
  final String? confirmKey = jsonConvert.convert<String>(json['confirmKey']);
  if (confirmKey != null) {
    sMHBeginPartUploadEntity.confirmKey = confirmKey;
  }
  final String? expiration = jsonConvert.convert<String>(json['expiration']);
  if (expiration != null) {
    sMHBeginPartUploadEntity.expiration = expiration;
  }
  return sMHBeginPartUploadEntity;
}

Map<String, dynamic> $SMHBeginPartUploadEntityToJson(
    SMHBeginPartUploadEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['domain'] = entity.domain;
  data['path'] = entity.path;
  data['uploadId'] = entity.uploadId;
  data['headers'] = entity.headers?.toJson();
  data['confirmKey'] = entity.confirmKey;
  data['expiration'] = entity.expiration;
  return data;
}

SMHBeginPartUploadHeaders $SMHBeginPartUploadHeadersFromJson(
    Map<String, dynamic> json) {
  final SMHBeginPartUploadHeaders sMHBeginPartUploadHeaders =
      SMHBeginPartUploadHeaders();
  final String? contentType = jsonConvert.convert<String>(json['Content-Type']);
  if (contentType != null) {
    sMHBeginPartUploadHeaders.contentType = contentType;
  }
  final String? authorization =
      jsonConvert.convert<String>(json['Authorization']);
  if (authorization != null) {
    sMHBeginPartUploadHeaders.authorization = authorization;
  }
  final String? xCosSecurityToken =
      jsonConvert.convert<String>(json['x-cos-security-token']);
  if (xCosSecurityToken != null) {
    sMHBeginPartUploadHeaders.xCosSecurityToken = xCosSecurityToken;
  }
  return sMHBeginPartUploadHeaders;
}

Map<String, dynamic> $SMHBeginPartUploadHeadersToJson(
    SMHBeginPartUploadHeaders entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['Content-Type'] = entity.contentType;
  data['Authorization'] = entity.authorization;
  data['x-cos-security-token'] = entity.xCosSecurityToken;
  return data;
}

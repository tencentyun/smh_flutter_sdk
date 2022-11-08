import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_simple_upload_params_entity.dart';

SMHSimpleUploadParamsEntity $SMHSimpleUploadParamsEntityFromJson(
    Map<String, dynamic> json) {
  final SMHSimpleUploadParamsEntity sMHSimpleUploadParamsEntity =
      SMHSimpleUploadParamsEntity();
  final String? domain = jsonConvert.convert<String>(json['domain']);
  if (domain != null) {
    sMHSimpleUploadParamsEntity.domain = domain;
  }
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    sMHSimpleUploadParamsEntity.path = path;
  }
  final SMHSimpleUploadParamsHeaders? headers =
      jsonConvert.convert<SMHSimpleUploadParamsHeaders>(json['headers']);
  if (headers != null) {
    sMHSimpleUploadParamsEntity.headers = headers;
  }
  final String? confirmKey = jsonConvert.convert<String>(json['confirmKey']);
  if (confirmKey != null) {
    sMHSimpleUploadParamsEntity.confirmKey = confirmKey;
  }
  final String? expiration = jsonConvert.convert<String>(json['expiration']);
  if (expiration != null) {
    sMHSimpleUploadParamsEntity.expiration = expiration;
  }
  return sMHSimpleUploadParamsEntity;
}

Map<String, dynamic> $SMHSimpleUploadParamsEntityToJson(
    SMHSimpleUploadParamsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['domain'] = entity.domain;
  data['path'] = entity.path;
  data['headers'] = entity.headers?.toJson();
  data['confirmKey'] = entity.confirmKey;
  data['expiration'] = entity.expiration;
  return data;
}

SMHSimpleUploadParamsHeaders $SMHSimpleUploadParamsHeadersFromJson(
    Map<String, dynamic> json) {
  final SMHSimpleUploadParamsHeaders sMHSimpleUploadParamsHeaders =
      SMHSimpleUploadParamsHeaders();
  final String? cacheControl =
      jsonConvert.convert<String>(json['Cache-Control']);
  if (cacheControl != null) {
    sMHSimpleUploadParamsHeaders.cacheControl = cacheControl;
  }
  final String? contentType = jsonConvert.convert<String>(json['Content-Type']);
  if (contentType != null) {
    sMHSimpleUploadParamsHeaders.contentType = contentType;
  }
  final String? xCosAcl = jsonConvert.convert<String>(json['x-cos-acl']);
  if (xCosAcl != null) {
    sMHSimpleUploadParamsHeaders.xCosAcl = xCosAcl;
  }
  final String? xCosStorageClass =
      jsonConvert.convert<String>(json['x-cos-storage-class']);
  if (xCosStorageClass != null) {
    sMHSimpleUploadParamsHeaders.xCosStorageClass = xCosStorageClass;
  }
  final String? authorization =
      jsonConvert.convert<String>(json['Authorization']);
  if (authorization != null) {
    sMHSimpleUploadParamsHeaders.authorization = authorization;
  }
  final String? xCosSecurityToken =
      jsonConvert.convert<String>(json['x-cos-security-token']);
  if (xCosSecurityToken != null) {
    sMHSimpleUploadParamsHeaders.xCosSecurityToken = xCosSecurityToken;
  }
  return sMHSimpleUploadParamsHeaders;
}

Map<String, dynamic> $SMHSimpleUploadParamsHeadersToJson(
    SMHSimpleUploadParamsHeaders entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['Cache-Control'] = entity.cacheControl;
  data['Content-Type'] = entity.contentType;
  data['x-cos-acl'] = entity.xCosAcl;
  data['x-cos-storage-class'] = entity.xCosStorageClass;
  data['Authorization'] = entity.authorization;
  data['x-cos-security-token'] = entity.xCosSecurityToken;
  return data;
}

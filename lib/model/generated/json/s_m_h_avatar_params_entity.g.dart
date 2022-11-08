import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_avatar_params_entity.dart';

SMHAvatarParamsEntity $SMHAvatarParamsEntityFromJson(
    Map<String, dynamic> json) {
  final SMHAvatarParamsEntity sMHAvatarParamsEntity = SMHAvatarParamsEntity();
  final String? domain = jsonConvert.convert<String>(json['domain']);
  if (domain != null) {
    sMHAvatarParamsEntity.domain = domain;
  }
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    sMHAvatarParamsEntity.path = path;
  }
  final SMHAvatarParamsHeaders? headers =
      jsonConvert.convert<SMHAvatarParamsHeaders>(json['headers']);
  if (headers != null) {
    sMHAvatarParamsEntity.headers = headers;
  }
  return sMHAvatarParamsEntity;
}

Map<String, dynamic> $SMHAvatarParamsEntityToJson(
    SMHAvatarParamsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['domain'] = entity.domain;
  data['path'] = entity.path;
  data['headers'] = entity.headers?.toJson();
  return data;
}

SMHAvatarParamsHeaders $SMHAvatarParamsHeadersFromJson(
    Map<String, dynamic> json) {
  final SMHAvatarParamsHeaders sMHAvatarParamsHeaders =
      SMHAvatarParamsHeaders();
  final String? cacheControl =
      jsonConvert.convert<String>(json['Cache-Control']);
  if (cacheControl != null) {
    sMHAvatarParamsHeaders.cacheControl = cacheControl;
  }
  final String? contentType = jsonConvert.convert<String>(json['Content-Type']);
  if (contentType != null) {
    sMHAvatarParamsHeaders.contentType = contentType;
  }
  final String? xCosAcl = jsonConvert.convert<String>(json['x-cos-acl']);
  if (xCosAcl != null) {
    sMHAvatarParamsHeaders.xCosAcl = xCosAcl;
  }
  final String? xCosStorageClass =
      jsonConvert.convert<String>(json['x-cos-storage-class']);
  if (xCosStorageClass != null) {
    sMHAvatarParamsHeaders.xCosStorageClass = xCosStorageClass;
  }
  final String? authorization =
      jsonConvert.convert<String>(json['Authorization']);
  if (authorization != null) {
    sMHAvatarParamsHeaders.authorization = authorization;
  }
  final String? xCosSecurityToken =
      jsonConvert.convert<String>(json['x-cos-security-token']);
  if (xCosSecurityToken != null) {
    sMHAvatarParamsHeaders.xCosSecurityToken = xCosSecurityToken;
  }
  return sMHAvatarParamsHeaders;
}

Map<String, dynamic> $SMHAvatarParamsHeadersToJson(
    SMHAvatarParamsHeaders entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['Cache-Control'] = entity.cacheControl;
  data['Content-Type'] = entity.contentType;
  data['x-cos-acl'] = entity.xCosAcl;
  data['x-cos-storage-class'] = entity.xCosStorageClass;
  data['Authorization'] = entity.authorization;
  data['x-cos-security-token'] = entity.xCosSecurityToken;
  return data;
}

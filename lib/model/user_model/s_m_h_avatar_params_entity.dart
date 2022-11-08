import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_avatar_params_entity.g.dart';

@JsonSerializable()
class SMHAvatarParamsEntity {
  /// domain: 字符串，实际上传文件时的域名；
  String? domain;

  /// path: 字符串，实际文件上传时的 URL 路径；
  String? path;

  /// headers: 键值对，实际上传时需指定的请求头部；
  SMHAvatarParamsHeaders? headers;

  SMHAvatarParamsEntity();

  factory SMHAvatarParamsEntity.fromJson(Map<String, dynamic> json) =>
      $SMHAvatarParamsEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHAvatarParamsEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHAvatarParamsHeaders {
  @JSONField(name: "Cache-Control")
  String? cacheControl;
  @JSONField(name: "Content-Type")
  String? contentType;
  @JSONField(name: "x-cos-acl")
  String? xCosAcl;
  @JSONField(name: "x-cos-storage-class")
  String? xCosStorageClass;
  @JSONField(name: "Authorization")
  String? authorization;
  @JSONField(name: "x-cos-security-token")
  String? xCosSecurityToken;

  SMHAvatarParamsHeaders();

  factory SMHAvatarParamsHeaders.fromJson(Map<String, dynamic> json) =>
      $SMHAvatarParamsHeadersFromJson(json);

  Map<String, dynamic> toJson() => $SMHAvatarParamsHeadersToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

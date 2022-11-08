import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_simple_upload_params_entity.g.dart';

@JsonSerializable()
class SMHSimpleUploadParamsEntity {
  /// domain: 字符串，实际上传文件时的域名；
  String? domain;

  /// path: 字符串，实际文件上传时的 URL 路径；
  String? path;

  /// headers: 键值对，实际上传时需指定的请求头部；
  SMHSimpleUploadParamsHeaders? headers;

  /// confirmKey: 字符串，用于完成文件上传的确认参数；
  String? confirmKey;

  /// expiration: 上传信息有效期，超过有效期后将失效，需要重新调用本接口获取新的上传参数；
  String? expiration;

  SMHSimpleUploadParamsEntity();

  factory SMHSimpleUploadParamsEntity.fromJson(Map<String, dynamic> json) =>
      $SMHSimpleUploadParamsEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHSimpleUploadParamsEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHSimpleUploadParamsHeaders {
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

  SMHSimpleUploadParamsHeaders();

  factory SMHSimpleUploadParamsHeaders.fromJson(Map<String, dynamic> json) =>
      $SMHSimpleUploadParamsHeadersFromJson(json);

  Map<String, dynamic> toJson() => $SMHSimpleUploadParamsHeadersToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

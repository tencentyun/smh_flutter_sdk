import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_begin_part_upload_entity.g.dart';

@JsonSerializable()
class SMHBeginPartUploadEntity {
  ///  字符串，实际上传文件时的域名；
  String? domain;

  /// 字符串，实际文件上传时的 URL 路径；
  String? path;
  String? uploadId;

  /// 键值对，实际上传时需指定的请求头部；
  SMHBeginPartUploadHeaders? headers;

  /// 字符串，用于完成文件上传的确认参数；
  String? confirmKey;

  /// 上传信息有效期，超过有效期后将失效，需要调用分块上传任务续期接口获取新的上传参数；
  String? expiration;

  SMHBeginPartUploadEntity();

  factory SMHBeginPartUploadEntity.fromJson(Map<String, dynamic> json) =>
      $SMHBeginPartUploadEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHBeginPartUploadEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHBeginPartUploadHeaders {
  @JSONField(name: "Content-Type")
  String? contentType;
  @JSONField(name: "Authorization")
  String? authorization;
  @JSONField(name: "x-cos-security-token")
  String? xCosSecurityToken;

  SMHBeginPartUploadHeaders();

  factory SMHBeginPartUploadHeaders.fromJson(Map<String, dynamic> json) =>
      $SMHBeginPartUploadHeadersFromJson(json);

  Map<String, dynamic> toJson() => $SMHBeginPartUploadHeadersToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

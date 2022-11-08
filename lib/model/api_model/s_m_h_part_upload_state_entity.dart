import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_part_upload_state_entity.g.dart';

@JsonSerializable()
class SMHPartUploadStateEntity {
  /// confirmed: 布尔型，代表当前上传任务是否为已完成；
  bool? confirmed;

  /// path: 字符串数组 或 null，如果是字符串数组则表示最终的文件路径，数组中的最后一个元素代表最终的文件名，其他元素代表每一级目录名，因为可能存在同名文件自动重命名，所以这里的最终路径可能不等同于开始上传时指定的路径；如果是 null 则表示该文件所在的目录或其某个父级目录已被删除，该文件已经无法访问；
  List<String>? path;

  /// type: 类型；
  SMHFileType? type;

  /// creationTime: 上传任务创建时间；
  String? creationTime;

  /// force: 是否强制覆盖同路径文件；
  bool? force;

  /// parts: 如果为分块上传则返回该字段，包含已上传的分块信息；否则不返回该字段；
  List<SMHPartUploadStateParts>? parts;

  /// uploadPartInfo: 如果为分块上传则返回该字段，包含继续进行分块上传的信息（可参阅开始分块上传文件接口）；否则不返回该字段；
  SMHPartUploadStateUploadPartInfo? uploadPartInfo;

  SMHPartUploadStateEntity();

  factory SMHPartUploadStateEntity.fromJson(Map<String, dynamic> json) =>
      $SMHPartUploadStateEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHPartUploadStateEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHPartUploadStateParts {
  @JSONField(name: "PartNumber")
  int? partNumber;
  @JSONField(name: "LastModified")
  String? lastModified;
  @JSONField(name: "ETag")
  String? eTag;
  @JSONField(name: "Size")
  int? size;

  SMHPartUploadStateParts();

  factory SMHPartUploadStateParts.fromJson(Map<String, dynamic> json) =>
      $SMHPartUploadStatePartsFromJson(json);

  Map<String, dynamic> toJson() => $SMHPartUploadStatePartsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHPartUploadStateUploadPartInfo {
  /// domain: 字符串，实际上传文件时的域名；
  String? domain;

  /// path: 字符串，实际文件上传时的 URL 路径；
  String? path;
  String? uploadId;

  /// headers: 键值对，实际上传时需指定的请求头部；
  SMHPartUploadStateUploadPartInfoHeaders? headers;

  /// 上传信息有效期，超过有效期后将失效，需要调用分块上传任务续期接口获取新的上传参数；
  String? expiration;

  SMHPartUploadStateUploadPartInfo();

  factory SMHPartUploadStateUploadPartInfo.fromJson(
          Map<String, dynamic> json) =>
      $SMHPartUploadStateUploadPartInfoFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHPartUploadStateUploadPartInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHPartUploadStateUploadPartInfoHeaders {
  @JSONField(name: "Content-Type")
  String? contentType;
  @JSONField(name: "Authorization")
  String? authorization;
  @JSONField(name: "x-cos-security-token")
  String? xCosSecurityToken;

  SMHPartUploadStateUploadPartInfoHeaders();

  factory SMHPartUploadStateUploadPartInfoHeaders.fromJson(
          Map<String, dynamic> json) =>
      $SMHPartUploadStateUploadPartInfoHeadersFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHPartUploadStateUploadPartInfoHeadersToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

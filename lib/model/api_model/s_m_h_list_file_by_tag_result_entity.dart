import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_list_file_by_tag_result_entity.g.dart';

import '../enum/smh_string_enum.dart';
import '../user_model/s_m_h_authority_role_item_entity.dart';

///   isSyncRootFolder: 当前文件夹是否为同步盘，如果是同步盘根目录返回 true，如果是同步盘子级节点，返回 false，如果不是同步盘，不返回该字段
///   strategy: 当该文件夹为同步盘时，返回同步方式，local_to_cloud，非必返
///   syncId: 当该文件夹为同步盘时，返回同步任务 ID
///   syncUserId: 当该文件夹为同步盘时，返回设置同步任务的 userId

@JsonSerializable()
class SMHListFileByTagResultEntity {
  /// totalNum: 整数，当前目录中的所有文件和子目录数量（不包含孙子级）；
  int? totalNum;

  /// contents: 对象数组，目录或相簿内的具体内容：
  List<SMHListFileByTagResultContents>? contents;

  SMHListFileByTagResultEntity();

  factory SMHListFileByTagResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHListFileByTagResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHListFileByTagResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHListFileByTagResultContents {
  ///   path: 文件具体目录；
  List<String>? path;

  ///   previewByDoc: 是否可通过 wps 预览；
  bool? previewByDoc;

  ///   previewByCI: 是否可通过万象预览；
  bool? previewByCI;

  ///   previewAsIcon: 是否可用预览图作为 icon；
  bool? previewAsIcon;

  ///   fileType: 文件类型：excel、powerpoint 等；
  SMHFileType? fileType;

  ///   name: 字符串，目录或相簿名或文件名；
  String? name;

  ///   type: 字符串，条目类型：
  ///     dir: 目录或相簿；
  ///     file: 文件，仅用于文件类型媒体库；
  ///     image: 图片，仅用于媒体类型媒体库；
  ///     video: 视频，仅用于媒体类型媒体库；
  ///     symlink: 符号链接；
  SMHFileType? type;
  String? userId;

  ///   creationTime: ISO 8601格式的日期与时间字符串，表示目录或相簿的创建时间或文件的上传时间，例如 2020-10-14T10:17:57.953Z；
  String? creationTime;

  ///   modificationTime: 文件最近一次被覆盖的时间，或者目录内最近一次增删子目录或文件的时间；
  String? modificationTime;

  ///   authorityList 允许操作的权限（团队空间文件才返，个人空间及管理员拥有所有权限）
  SMHAuthorityRoleItemEntity? authorityList;

  ///   versionId: 版本号；
  String? versionId;

  ///   contentType: 媒体类型；
  String? contentType;

  ///   size: 文件大小，为了避免数字精度问题，这里为字符串格式；
  String? size;

  ///   eTag: 文件 ETag；
  String? eTag;

  ///   crc64: 文件的 CRC64-ECMA182 校验值，为了避免数字精度问题，这里为字符串格式；
  String? crc64;

  ///   metaData: 文件元数据信息；
  Map<String, dynamic>? metaData;

  SMHListFileByTagResultContents();

  factory SMHListFileByTagResultContents.fromJson(Map<String, dynamic> json) =>
      $SMHListFileByTagResultContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHListFileByTagResultContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

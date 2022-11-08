import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_directory_detail_info_entity.g.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_directory_detail_entity.dart';

import '../user_model/s_m_h_authority_role_item_entity.dart';
import '../user_model/s_m_h_file_detail_entity.dart';

@JsonSerializable()
class SMHDirectoryDetailInfoEntity {
  /// path: 字符串数组，完整路径；
  List<String>? path;

  /// name: 字符串，目录或相簿名或文件名；
  String? name;

  /// type: 字符串，条目类型：
  ///   dir: 目录或相簿；
  ///   file: 文件，仅用于文件类型媒体库；
  ///   image: 图片，仅用于媒体类型媒体库；
  ///   video: 视频，仅用于媒体类型媒体库；
  ///   symlink: 符号链接；
  SMHFileType? type;

  /// userId: 字符串，创建人 ID；
  String? userId;

  /// creationTime: ISO 8601格式的日期与时间字符串，表示目录或相簿的创建时间或文件的上传时间，例如 2020-10-14T10:17:57.953Z；
  String? creationTime;

  /// modificationTime: 文件最近一次被覆盖的时间，或者目录内最近一次增删子目录或文件的时间；
  String? modificationTime;

  /// eTag: 目录或文件的 ETag；
  String? eTag;
  SMHAuthorityRoleItemEntity? authorityList;

  /// localSync: 当该文件夹是同步盘，或是同步盘的子级文件目录时，返回该字段，否则为 null：
  SMHDirectoryDetailLocalSync? localSync;

  /// tagList: 标签列表
  List<SMHFileDetailContentsTagList>? tagList;

  /// isAuthorized: 是否被共享
  bool? isAuthorized;

  SMHDirectoryDetailInfoEntity();

  factory SMHDirectoryDetailInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHDirectoryDetailInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHDirectoryDetailInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

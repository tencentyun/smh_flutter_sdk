import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_favorite_file_list_entity.g.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

import '../api_model/s_m_h_directory_detail_entity.dart';

@JsonSerializable()
class SMHFileListEntity {
  /// totalNum: 整数，当前目录中的所有文件和子目录数量（不包含孙子级）；
  int? totalNum;
  int? page;
  int? pageSize;

  /// contents: 对象数组，目录或相簿内的具体内容：
  List<SMHFileListContent>? contents;

  SMHFileListEntity();

  factory SMHFileListEntity.fromJson(Map<String, dynamic> json) =>
      $SMHFileListEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHFileListContent {
  int? id;
  int? favoriteGroupId;
  int? spaceOrgId;
  String? spaceId;
  String? libraryId;
  bool? visible;

  ///   type: 字符串，条目类型：
  ///     dir: 目录或相簿；
  ///     file: 文件，仅用于文件类型媒体库；
  ///     image: 图片，仅用于媒体类型媒体库；
  ///     video: 视频，仅用于媒体类型媒体库；
  SMHFileType? type;

  ///   modificationTime: 文件最近一次被覆盖的时间，或者目录内最近一次增删子目录或文件的时间；
  String? modificationTime;

  /// path: 字符串数组，返回当前请求的目录结构，如果当前请求的是根目录，则该字段为空数组；
  List<String>? path;

  /// name: 字符串，目录或相簿名或文件名；
  String? name;

  /// fileType: 文件类型：excel、powerpoint 等；
  SMHFileType? fileType;
  String? contentType;

  ///   previewByDoc: 是否可通过 wps 预览；
  bool? previewByDoc;

  ///   previewAsIcon: 是否可用预览图作为 icon；
  bool? previewAsIcon;

  ///   previewByCI: 是否可通过万象预览；
  bool? previewByCI;

  ///   size: 文件大小，为了避免数字精度问题，这里为字符串格式；
  String? size;

  ///   crc64: 文件的 CRC64-ECMA182 校验值，为了避免数字精度问题，这里为字符串格式；
  String? crc64;

  ///   eTag: 子目录或文件的 ETag；
  String? eTag;
  SMHDirectoryDetailLocalSync? localSync;
  SMHFileDetailTeam? team;
  SMHFileDetailGroup? group;
  SMHFileDetailUser? user;

  ///   authorityList 当前目录权限
  SMHAuthorityRoleItemEntity? authorityList;

  bool? isUserBelongSpace;
  List<String>? relatedToMePath;
  SMHFileListContent();

  factory SMHFileListContent.fromJson(Map<String, dynamic> json) =>
      $SMHFileListContentFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileListContentToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

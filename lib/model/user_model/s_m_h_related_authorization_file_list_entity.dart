import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_related_authorization_file_list_entity.g.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

import '../api_model/s_m_h_directory_detail_entity.dart';

@JsonSerializable()
class SMHRelatedAuthorizationFileListEntity {
  /// totalNum: 整数，当前目录中的所有文件和子目录数量（不包含孙子级）
  int? totalNum;

  /// contents: 对象数组，目录或相簿内的具体内容：
  List<SMHRelatedAuthorizationFileListContents>? contents;

  SMHRelatedAuthorizationFileListEntity();

  factory SMHRelatedAuthorizationFileListEntity.fromJson(
          Map<String, dynamic> json) =>
      $SMHRelatedAuthorizationFileListEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHRelatedAuthorizationFileListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHRelatedAuthorizationFileListContents {
  ///   spaceId：字符串，空间 ID；
  String? spaceId;

  ///   name: 字符串，目录或相簿名或文件名；
  String? name;

  ///   authType: 0（共享给我） | 1（我共享的）；
  String? authType;

  ///   type: 字符串，条目类型：
  ///   dir: 目录或相簿；
  ///   file: 文件；
  SMHFileType? type;

  ///   userId: 字符串，创建人ID；
  String? userId;

  ///   creationTime: ISO 8601格式的日期与时间字符串，表示目录或相簿的创建时间或文件的上传时间，例如 2020-10-14T10:17:57.953Z；
  String? creationTime;

  ///   modificationTime: ISO 8601格式的日期与时间字符串，文件最近一次被覆盖的时间，或者目录内最近一次增删子目录或文件的时间；
  String? modificationTime;

  ///   path: 字符串数组，文件路径，用于跳转到对应的目录；
  List<String>? path;

  SMHFileType? fileType;

  ///   previewByDoc: 布尔值，是否可通过 wps 预览；
  bool? previewByDoc;

  ///   previewByCI: 布尔值，是否可通过万象预览；
  bool? previewByCI;

  ///   previewAsIcon: 布尔值，是否可用预览图做 icon；
  bool? previewAsIcon;

  ///   authorityList 具体权限
  SMHAuthorityRoleItemEntity? authorityList;
  SMHDirectoryDetailLocalSync? localSync;

  ///   user：所属个人空间信息，非必返，和 group、team 三选一返回
  SMHFileDetailUser? user;

  ///   group：所属群组信息，非必返，和 team、user 三选一返回
  SMHFileDetailGroup? group;

  ///   team: 所属团队信息，非必返，和 group、user 三选一返回
  SMHFileDetailTeam? team;

  ///   spaceTag：空间标识；
  SMHSpaceTag? spaceTag;

  SMHRelatedAuthorizationFileListContents();

  factory SMHRelatedAuthorizationFileListContents.fromJson(
          Map<String, dynamic> json) =>
      $SMHRelatedAuthorizationFileListContentsFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHRelatedAuthorizationFileListContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_file_detail_entity.g.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

import '../api_model/s_m_h_directory_detail_entity.dart';

@JsonSerializable()
class SMHFileDetailEntity {
  /// totalNum: 总数
  int? totalNum;
  String? nextMarker;

  /// contents: 列表项
  List<SMHFileDetailContents>? contents;

  SMHFileDetailEntity();

  factory SMHFileDetailEntity.fromJson(Map<String, dynamic> json) =>
      $SMHFileDetailEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileDetailEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHFileDetailContents {
  String? organizationName;

  ///   name: 字符串，文件名称；
  String? name;

  ///   type: 字符串，文件类型；
  SMHFileType? type;

  ///   creationPerson: 创建人昵称；
  String? creationPerson;

  ///   size: 字符串，文件大小；
  String? size;

  ///   historySize: 字符串，历史版本文件大小；
  String? historySize;

  ///   creationTime: 日期字符串，创建时间；
  String? creationTime;

  ///   modificationTime: 日期字符串，修改时间；
  String? modificationTime;

  ///   path: 字符串数组，文件路径；
  List<String>? path;

  ///   previewByDoc: 布尔值，是否可通过 wps 预览；
  bool? previewByDoc;

  ///   previewByCI: 布尔值，是否可通过万象预览；
  bool? previewByCI;

  ///   previewAsIcon: 布尔值，是否可用预览图做 icon；
  bool? previewAsIcon;
  bool? canMarkAsNonVirus;
  bool? virusName;

  ///   fileType: 字符串，文件类型：excel、powerpoint 等；
  SMHFileType? fileType;

  ///   spaceTag: 字符串，personal | team | user；
  SMHSpaceTag? spaceTag;

  ///   team 团队空间信息； 和共享群组空间信息、用户空间信息三选一返回
  SMHFileDetailContentsTeam? team;

  ///   user: 用户空间信息；和共享群组空间信息、团队空间信息三选一返回
  SMHFileDetailUser? user;

  ///   group: 共享群组空间信息；和 用户空间信息、团队空间信息三选一返回
  SMHFileDetailGroup? group;

  ///   localSync: 如果是同步盘 or 同步盘的子文件目录，返回该字段
  SMHDirectoryDetailLocalSync? localSync;

  /// 标签列表
  List<SMHFileDetailContentsTagList>? tagList;

  SMHFileDetailContents();

  factory SMHFileDetailContents.fromJson(Map<String, dynamic> json) =>
      $SMHFileDetailContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileDetailContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHFileDetailContentsTeam {
  ///     id: 团队 ID
  int? id;

  ///     name: 团队名称
  String? name;

  /// 路径
  List<String>? path;

  SMHFileDetailContentsTeam();

  factory SMHFileDetailContentsTeam.fromJson(Map<String, dynamic> json) =>
      $SMHFileDetailContentsTeamFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileDetailContentsTeamToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHFileDetailContentsLocalSyncUser {
  int? id;
  String? name;

  SMHFileDetailContentsLocalSyncUser();

  factory SMHFileDetailContentsLocalSyncUser.fromJson(
          Map<String, dynamic> json) =>
      $SMHFileDetailContentsLocalSyncUserFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHFileDetailContentsLocalSyncUserToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHFileDetailContentsTagList {
  /// tag Id
  int? id;

  /// tag 名称
  String? tagName;

  /// tag 类型
  int? tagType;

  SMHFileDetailContentsTagList();

  factory SMHFileDetailContentsTagList.fromJson(Map<String, dynamic> json) =>
      $SMHFileDetailContentsTagListFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileDetailContentsTagListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_history_list_entity.g.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';

@JsonSerializable()
class SMHHistoryListEntity {
  /// totalNum: 整数，当前目录中的所有文件和子目录数量（不包含孙子级）
  int? totalNum;

  /// contents: 对象数组，目录或相簿内的具体内容：
  List<SMHHistoryListContents>? contents;

  SMHHistoryListEntity();

  factory SMHHistoryListEntity.fromJson(Map<String, dynamic> json) =>
      $SMHHistoryListEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHHistoryListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHHistoryListContents {
  /// id：整数，历史版本 ID；
  int? id;

  /// createdBy：整数，创建人 ID；
  int? createdBy;

  /// creationWay：整数，创建方式，0：创建，1：更新；2：恢复；
  int? creationWay;

  /// createdUserId：整数，创建人 ID；
  int? createdUserId;

  /// createdUserNickname：字符串，创建人昵称；
  String? createdUserNickname;

  /// createdUserAvatar：字符串，创建人头像链接；
  String? createdUserAvatar;

  /// version: 整数，版本号；
  int? version;

  /// isLatestVersion: 布尔型，是否最新版本；
  bool? isLatestVersion;

  /// name: 字符串，目录或相簿名或文件名；
  String? name;
  String? size;

  /// creationTime: ISO 8601格式的日期与时间字符串，表示目录或相簿的创建时间或文件的上传时间，例如 2020-10-14T10:17:57.953Z；
  String? creationTime;

  /// authorityList：允许操作的权限
  SMHAuthorityRoleItemEntity? authorityList;

  /// path: 字符串，文件路径，用于跳转到对应的目录；
  List<String>? path;

  SMHHistoryListContents();

  factory SMHHistoryListContents.fromJson(Map<String, dynamic> json) =>
      $SMHHistoryListContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHHistoryListContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_received_authorization_entity.g.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

@JsonSerializable()
class SMHReceivedAuthorizationEntity {
  /// totalNum: 整数，当前目录中的所有文件和子目录数量（不包含孙子级）
  int? totalNum;

  /// contents: 对象数组，目录或相簿内的具体内容：
  List<SMHReceivedAuthorizationContents>? contents;

  SMHReceivedAuthorizationEntity();

  factory SMHReceivedAuthorizationEntity.fromJson(Map<String, dynamic> json) =>
      $SMHReceivedAuthorizationEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHReceivedAuthorizationEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHReceivedAuthorizationContents {
  int? id;

  /// name：字符串，团队名称；
  String? name;

  String? libraryId;
  String? spaceId;

  /// type: 字符串，条目类型：
  /// dir: 目录或相簿；
  /// file: 文件；
  SMHFileType? type;

  /// creationTime: ISO 8601格式的日期与时间字符串，表示目录或相簿的创建时间或文件的上传时间，例如 2020-10-14T10:17:57.953Z；
  String? creationTime;

  /// modificationTime: ISO 8601格式的日期与时间字符串，文件最近一次被覆盖的时间，或者目录内最近一次增删子目录或文件的时间；
  String? modificationTime;

  /// authorityList 具体权限
  SMHAuthorityRoleItemEntity? authorityList;

  /// path：字符串数组，团队的层级目录，假设团层级为 T1/T2/T3，则 T3 的 path 为 ['T1','T2','T3']，仅当 WithPath = ture 时返回；
  List<String>? path;

  /// user: 具体授权的用户信息，仅当授权对象是用户时返回
  SMHFileDetailUser? user;

  /// team：对象，具体授权的团队信息，仅当授权对象是团队时返回
  SMHFileDetailContentsTeam? team;

  SMHReceivedAuthorizationContents();

  factory SMHReceivedAuthorizationContents.fromJson(
          Map<String, dynamic> json) =>
      $SMHReceivedAuthorizationContentsFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHReceivedAuthorizationContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

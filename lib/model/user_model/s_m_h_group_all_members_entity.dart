import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_group_all_members_entity.g.dart';

@JsonSerializable()
class SMHGroupAllMembersEntity {
  /// totalNum: 整数，满足条件的用户总数；
  int? totalNum;

  /// page: 整数，分页码；
  int? page;

  /// pageSize: 整数，分页大小；
  int? pageSize;

  /// contents: 对象数组，用户具体信息：
  List<SMHGroupAllMembersContents>? contents;

  SMHGroupAllMembersEntity();

  factory SMHGroupAllMembersEntity.fromJson(Map<String, dynamic> json) =>
      $SMHGroupAllMembersEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHGroupAllMembersEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHGroupAllMembersContents {
  /// id: 整数，用户 ID；
  int? id;

  /// nickname: 字符串，昵称；
  String? nickname;

  /// avatar: 字符串，用户头像链接；
  String? avatar;

  /// teamIds: 整数数组，用户所属的 TeamId 集合，包含所有父级团队的 TeamId；
  List<int>? teamIds;

  SMHGroupAllMembersContents();

  factory SMHGroupAllMembersContents.fromJson(Map<String, dynamic> json) =>
      $SMHGroupAllMembersContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHGroupAllMembersContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_all_team_member_entity.g.dart';

@JsonSerializable()
class SMHAllTeamMemberEntity {
  /// totalNum: 整数，满足条件的用户总数；
  int? totalNum;

  /// page: 整数，分页码；
  int? page;

  /// pageSize: 整数，分页大小；
  int? pageSize;

  /// contents: 对象数组，用户具体信息：
  List<SMHAllTeamMemberContents>? contents;

  SMHAllTeamMemberEntity();

  factory SMHAllTeamMemberEntity.fromJson(Map<String, dynamic> json) =>
      $SMHAllTeamMemberEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHAllTeamMemberEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHAllTeamMemberContents {
  /// id: 整数，用户 ID；
  int? id;

  /// nickname: 字符串，昵称；
  String? nickname;

  /// avatar: 字符串，用户头像链接；
  String? avatar;

  /// inactive: 布尔值，用户是否未激活；
  bool? inactive;

  /// teamIds: 整数数组，用户所属的 TeamId 集合，包含所有父级团队的 TeamId；
  List<int>? teamIds;

  SMHAllTeamMemberContents();

  factory SMHAllTeamMemberContents.fromJson(Map<String, dynamic> json) =>
      $SMHAllTeamMemberContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHAllTeamMemberContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_team_member_info_entity.g.dart';

@JsonSerializable()
class SMHTeamMemberInfoEntity {
  /// totalNum: 整数，满足条件的用户总数
  int? totalNum;

  /// page: 整数，分页码；
  /// pageSize: 整数，分页大小；
  int? page;
  int? pageSize;

  /// contents: 对象数组，用户具体信息：
  List<SMHTeamMemberInfoContents>? contents;

  SMHTeamMemberInfoEntity();

  factory SMHTeamMemberInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHTeamMemberInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHTeamMemberInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHTeamMemberInfoContents {
  /// id: 整数，用户 ID
  int? id;
  int? orgId;

  /// countryCode: 字符串，手机号国家码
  String? countryCode;

  /// phoneNumber: 字符串，手机号码
  String? phoneNumber;

  /// nickname: 字符串，昵称
  String? nickname;

  /// email: 字符串，邮箱
  String? email;

  /// comment: 字符串，备注
  String? comment;

  /// enabled: 布尔值，是否禁用
  bool? enabled;

  /// role: 字符串，用户角色，'superAdmin' | 'admin' | 'user'
  SMHAdminUserRole? role;

  /// teamRole: 团队角色名，user 普通成员 | teamAdmin 团队管理员，可选参数；
  SMHTeamUserRole? teamRole;

  /// avatar: 字符串，用户头像链接
  String? avatar;

  /// allowPersonalSpace: 布尔值, 是否允许分配个人空间；
  bool? allowPersonalSpace;

  /// capacity: 字符串，个人空间存储额度，单位 Byte，仅当 WithSpaceUsage = true 时返回
  String? capacity;

  /// availableSpace: 字符串，个人空间剩余可使用存储额度，单位 Byte，仅当 WithSpaceUsage = true 时返回
  String? availableSpace;

  /// teamRoleId: 整数，团队角色 ID，表示对应的权限；
  int? teamRoleId;

  /// teams：对象数组，用户所属团队列表，仅当 WithBelongingTeams = true 时返回
  List<SMHTeamMemberInfoContentsTeams>? teams;
  List<int>? canManageTeams;
  SMHTeamMemberInfoContents();

  factory SMHTeamMemberInfoContents.fromJson(Map<String, dynamic> json) =>
      $SMHTeamMemberInfoContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHTeamMemberInfoContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHTeamMemberInfoContentsTeams {
  /// id：整数，团队 ID；
  int? id;

  /// name：字符串，团队名称；
  String? name;

  SMHTeamMemberInfoContentsTeams();

  factory SMHTeamMemberInfoContentsTeams.fromJson(Map<String, dynamic> json) =>
      $SMHTeamMemberInfoContentsTeamsFromJson(json);

  Map<String, dynamic> toJson() => $SMHTeamMemberInfoContentsTeamsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

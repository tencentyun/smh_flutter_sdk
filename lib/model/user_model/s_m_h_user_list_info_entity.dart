import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_user_list_info_entity.g.dart';

@JsonSerializable()
class SMHUserListInfoEntity {
  int? totalNum;
  List<SMHUserListInfoContents>? contents;

  SMHUserListInfoEntity();

  factory SMHUserListInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHUserListInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHUserListInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHUserListInfoContents {
  /// id: 整数，用户 ID
  int? id;

  /// countryCode: 字符串，手机号国家码
  String? countryCode;

  /// phoneNumber: 字符串，手机号码
  String? phoneNumber;

  /// email: 字符串，邮箱
  String? email;

  /// nickname: 字符串，昵称
  String? nickname;

  /// role: 字符串，用户角色，'superAdmin' | 'admin' | 'user'
  SMHAdminUserRole? role;
  bool? inactive;

  /// deregister: 布尔值，是否注销中
  bool? deregister;

  /// comment: 字符串，备注
  String? comment;

  /// avatar: 字符串，用户头像链接
  String? avatar;

  /// expireTime: null 或日期字符串，用户待删除时间
  String? expireTime;

  /// enabled: 布尔值，是否禁用
  bool? enabled;
  int? teamRoleId;

  /// allowPersonalSpace: 布尔值, 是否允许分配个人空间；
  bool? allowPersonalSpace;
  List<SMHUserListInfoContentsTeams>? teams;

  /// canManageTeams: 能够管理的团队 ID 集合；
  List<String>? canManageTeams;

  /// capacity: 字符串，个人空间存储额度，单位 Byte，仅当 WithSpaceUsage = true 时返回
  int? capacity;
  int? size;

  /// availableSpace: 字符串，个人空间剩余可使用存储额度，单位 Byte，仅当 WithSpaceUsage = true 时返回
  int? availableSpace;

  SMHUserListInfoContents();

  factory SMHUserListInfoContents.fromJson(Map<String, dynamic> json) =>
      $SMHUserListInfoContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHUserListInfoContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHUserListInfoContentsTeams {
  int? id;
  String? name;

  SMHUserListInfoContentsTeams();

  factory SMHUserListInfoContentsTeams.fromJson(Map<String, dynamic> json) =>
      $SMHUserListInfoContentsTeamsFromJson(json);

  Map<String, dynamic> toJson() => $SMHUserListInfoContentsTeamsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

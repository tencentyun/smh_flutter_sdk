import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_group_members_entity.g.dart';

@JsonSerializable()
class SMHGroupMembersEntity {
  /// totalNum: 整数，满足条件的群组用户总数
  int? totalNum;

  /// contents: 对象数组，群组用户具体信息：
  List<SMHGroupMembersContents>? contents;

  SMHGroupMembersEntity();

  factory SMHGroupMembersEntity.fromJson(Map<String, dynamic> json) =>
      $SMHGroupMembersEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHGroupMembersEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHGroupMembersContents {
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

  /// groupRole: 字符串，用户在群组中的角色，'ownwer' | 'groupAdmin' | 'user'
  SMHGroupRole? groupRole;

  /// comment: 字符串，备注
  String? comment;

  /// avatar: 字符串，用户头像链接
  String? avatar;
  String? expireTime;
  int? authRoleId;

  /// enabled: 布尔值，是否禁用
  bool? enabled;

  /// deregister: 布尔值，是否注销中
  bool? deregister;

  SMHGroupMembersContents();

  factory SMHGroupMembersContents.fromJson(Map<String, dynamic> json) =>
      $SMHGroupMembersContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHGroupMembersContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

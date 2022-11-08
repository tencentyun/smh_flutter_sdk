import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_directory_authority_entity.g.dart';

@JsonSerializable()
class SMHDirectoryAuthorityEntity {
  /// userId：整数或 null，具体授权的用户 ID，当授权给用户时返回整數，授权给团队时返回 null；
  String? userId;
  String? name;

  /// spaceId：字符串或 null，具体授权的团队空间 ID，当授权给团队时返回字符串，授权给用户时返回 null；
  String? spaceId;

  /// roleId：整数，角色id
  int? roleId;

  /// tag：整数，权限标签，0 无标签，1 继承标签，2 默认标签
  int? tag;

  /// user: 具体授权的用户信息，仅当授权给用户时返回，非必返；
  SMHDirectoryAuthorityUser? user;
  SMHDirectoryAuthorityTeam? team;

  SMHDirectoryAuthorityEntity();

  factory SMHDirectoryAuthorityEntity.fromJson(Map<String, dynamic> json) =>
      $SMHDirectoryAuthorityEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHDirectoryAuthorityEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHDirectoryAuthorityUser {
  /// id: 整数，用户 ID
  int? id;

  /// orgId: 整数，用户所属组织 ID
  int? orgId;

  /// countryCode: 字符串，手机号国家码
  String? countryCode;

  /// phoneNumber: 字符串，手机号码
  String? phoneNumber;

  /// email: 字符串，邮箱
  String? email;

  /// nickname: 字符串，昵称
  String? nickname;

  /// role: 字符串，用户角色，'superAdmin' | 'admin' | 'user'
  String? role;

  /// 是否可用
  String? enabled;

  /// comment: 字符串，备注
  String? comment;

  /// 是否有个人空间
  String? allowPersonalSpace;
  bool? deregister;

  /// avatar: 字符串，用户头像链接
  String? avatar;

  SMHDirectoryAuthorityUser();

  factory SMHDirectoryAuthorityUser.fromJson(Map<String, dynamic> json) =>
      $SMHDirectoryAuthorityUserFromJson(json);

  Map<String, dynamic> toJson() => $SMHDirectoryAuthorityUserToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHDirectoryAuthorityTeam {
  /// id：整数，团队 ID；
  int? id;

  /// parentId：整数，父团队 ID；
  int? parentId;

  /// name：字符串，团队名称；
  String? name;

  /// spaceId：字符串，团队空间 ID；
  String? spaceId;

  /// userCount：整数，团队成员数量；
  int? userCount;

  SMHDirectoryAuthorityTeam();

  factory SMHDirectoryAuthorityTeam.fromJson(Map<String, dynamic> json) =>
      $SMHDirectoryAuthorityTeamFromJson(json);

  Map<String, dynamic> toJson() => $SMHDirectoryAuthorityTeamToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

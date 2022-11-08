import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_organization_invite_info_entity.g.dart';

/// groupId：整数，群组 ID，仅群组邀请码返回，非必返；

@JsonSerializable()
class SMHOrganizationInviteInfoEntity {
  /// orgId: 整数，邀请的组织 ID；
  int? orgId;

  /// userId: 整数，发起邀请用户 ID；
  String? userId;

  /// code: 字符串，邀请码；
  String? code;

  /// invitedCount: 整数，通过邀请链接加入的人数；
  int? invitedCount;

  /// enabled: 布尔值，邀请码是否启用；
  bool? enabled;

  /// type: 字符串，邀请类型，org | group；
  SMHInviteType? type;

  /// creationTime：时间戳字符串，邀请码创建时间；
  String? creationTime;

  /// expireTime：时间戳字符串，邀请码过期时间；
  String? expireTime;

  /// expired: 布尔值，邀请码是否已过期；
  bool? expired;
  SMHAdminUserRole? role;

  /// allowExternalUser: 布尔值，是否允许外部人员加入群组，企业邀请码固定返回 true；
  bool? allowExternalUser;

  /// organization：组织信息
  SMHOrganizationInviteInfoOrganization? organization;

  /// invitor：邀请者信息
  SMHOrganizationInviteInfoInvitor? invitor;

  /// editionFlag：字符串，邀请主体所属的版本，team | enterprise | personal；
  SMHEditionFlag? editionFlag;

  /// currentOrgUserCount：整数，当前企业的人数，仅企业邀请码返回，非必返；
  int? currentOrgUserCount;

  /// currentGroupUserCount：整数，当前群组的人数，仅群组邀请码返回，非必返；
  int? currentGroupUserCount;

  /// hasJoined: 布尔值，是否已加入邀请对象，未登录用户固定为 false；
  bool? hasJoined;
  SMHOrganizationInviteInfoEntity();

  factory SMHOrganizationInviteInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHOrganizationInviteInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHOrganizationInviteInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationInviteInfoOrganization {
  /// name：字符串，组织名称
  String? name;

  /// logo: 字符串，所在组织 logo 链接
  String? logo;

  SMHOrganizationInviteInfoOrganization();

  factory SMHOrganizationInviteInfoOrganization.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationInviteInfoOrganizationFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationInviteInfoOrganizationToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationInviteInfoInvitor {
  /// id：整数，邀请者用户 ID;
  int? id;

  /// orgId：整数，邀请者所属组织 ID;
  int? orgId;

  /// avatar：字符串，邀请者头像链接；
  String? avatar;

  /// nickname：字符串，邀请者昵称；
  String? nickname;

  SMHOrganizationInviteInfoInvitor();

  factory SMHOrganizationInviteInfoInvitor.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationInviteInfoInvitorFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationInviteInfoInvitorToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

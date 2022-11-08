import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_organization_info.g.dart';

/// id: 组织 ID
/// name: 组织名称

/// libraryCert: 字符串，组织认证方式，'person' | 'enterprise' | ''；

///     userCountLimit: 整数，企业用户上限，非必返
///     quotaLimit: 字符串，以 Byte 为单位，企业存储空间上限，非必返
///     enableTeamSpace: 布尔值，是否允许团队空间、企业空间，非必返
///     shareSpaceLimit: 整数，共享空间数量上限，非必返
///     shareSpaceUserCountLimit: 整数，共享空间人数上限，非必返
///     enableShareSpaceDynamics: 布尔值，是否允许共享空间动态，非必返
///     enableSyncDirectory: 布尔值，是否允许同步盘，非必返
///     enableManageShareDirectory: 布尔值，是否可进行外链管理，外链次数限制 or 查看已分享的外链，非必返

///     shareLinkLimit: 整数，外链条数限制，非必返
///     enableManageWatermark: 布尔值，是否可管理水印配置，非必返
///     watermarkDefaultText: 字符串，固定水印信息，非必返
///     enableDirectoryHistory: 布尔值，是否可后台管理历史版本，非必返
///     restoreRecycledDays: 整数，可恢复回收站天数，非必返
///     enabledResignationTransfer: 布尔值，是否可以离职转接，非必返
///     enableLog: 布尔值，是否允许管理操作日志，非必返
///     enableStatisticalReport: 布尔值，是否允许查看统计报表，非必返
///     enableTeamAdmin: 布尔值，是否允许团队管理员（多级管理员设置），非必返
///     enableWechatIntegration: 布尔值，是否允许企业微信导入，非必返

@JsonSerializable()
class SMHOrganizationInfoEntity {
  /// 整数，用户 ID
  String? userId;

  /// 布尔值，该用户是否申请过个人版（注销过的也算）
  bool? hasAppliedPersonalOrg;

  /// 字符串，用户令牌，必选参数（区别于 SMH 的 Access Token 访问令牌）
  String? userToken;

  /// 整数，过期时间（秒）
  int? expiresIn;

  /// 当前登录用户所属组织
  List<SMHOrganizationInfoOrganizations>? organizations;

  /// 布尔值，绑定的手机号是否为新手机号
  bool? isNewUser;

  SMHOrganizationInfoEntity();

  factory SMHOrganizationInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHOrganizationInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHOrganizationInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationInfoOrganizations {
  /// 整数，组织 ID
  int? id;

  ///  字符串，组织名称
  String? name;

  /// 组织配置参数
  SMHOrganizationInfoOrganizationsExtensionData? extensionData;

  /// libraryId: 组织的媒体库 libraryId
  String? libraryId;

  /// 字符串，组织认证方式，'person' | 'enterprise' | ''；
  String? libraryCert;

  /// orgUser: 用户在该组织的成员信息
  SMHOrganizationInfoOrganizationsOrgUser? orgUser;

  /// isLastSignedIn: 是否为最后一次登录的组织
  bool? isLastSignedIn;

  /// expired: 组织服务时间是否已到期
  bool? expired;

  SMHOrganizationInfoOrganizations();

  factory SMHOrganizationInfoOrganizations.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationInfoOrganizationsFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationInfoOrganizationsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationInfoOrganizationsExtensionData {
  String? logo;
  String? syncWay;
  int? userLimit;
  String? expireTime;

  ///   enableShare: 布尔值，是否允许分享；
  bool? enableShare;
  String? allowProduct;
  SMHOrganizationInfoOrganizationsExtensionDataEditionConfig? editionConfig;

  ///   enableYufuLogin: 布尔值，是否允许玉符 SSO 登录；
  bool? enableYufuLogin;

  ///   showOrgNameInUI: 布尔值，是否在 UI 上展示企业名称；
  bool? showOrgNameInUI;

  ///   watermarkOptions：水印配置信息；
  SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions?
      watermarkOptions;

  ///   enableWeworkLogin: 布尔值，是否允许企业微信扫码登录；
  bool? enableWeworkLogin;
  bool? showWeworkAppLink;

  ///   defaultTeamOptions：新建团队时的默认配置；
  SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions?
      defaultTeamOptions;

  ///   defaultUserOptions：新建用户时的默认配置；
  SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions?
      defaultUserOptions;
  bool? ensurePersonalSpace;

  SMHOrganizationInfoOrganizationsExtensionData();

  factory SMHOrganizationInfoOrganizationsExtensionData.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationInfoOrganizationsExtensionDataFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationInfoOrganizationsExtensionDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationInfoOrganizationsExtensionDataEditionConfig {
  ///     editionFlag: 字符串，版本信息 enterprise | team | personal
  SMHEditionFlag? editionFlag;

  ///     enableOverseasPhoneNumber: 布尔值，是否允许海外手机号，非必返
  bool? enableOverseasPhoneNumber;

  SMHOrganizationInfoOrganizationsExtensionDataEditionConfig();

  factory SMHOrganizationInfoOrganizationsExtensionDataEditionConfig.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationInfoOrganizationsExtensionDataEditionConfigFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationInfoOrganizationsExtensionDataEditionConfigToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions {
  ///     shareWatermarkType： 整数，1 企业名称水印，非必返
  int? shareWatermarkType;

  ///     enablePreviewWatermark：布尔值，是否开启预览水印，非必返
  bool? enableShareWatermark;

  ///     previewWatermarkType： 整数，0 用户昵称+uid水印，1 企业名称水印，非必返
  int? previewWatermarkType;

  ///     downloadWatermarkType： 整数，0 用户昵称+uid水印，1 企业名称水印，非必返
  int? downloadWatermarkType;

  ///     enableShareWatermark： 布尔值，是否开启预览水印，非必返
  bool? enablePreviewWatermark;

  ///     enableDownloadWatermark： 布尔值，是否开启下载水印，非必返
  bool? enableDownloadWatermark;

  SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions();

  factory SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptionsFromJson(
          json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptionsToJson(
          this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions {
  int? defaultRoleId;
  int? spaceQuotaSize;

  SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions();

  factory SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptionsFromJson(
          json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptionsToJson(
          this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions {
  ///     enabled：布尔值，是否启用，非必返
  bool? enabled;

  ///     allowPersonalSpace：布尔值，是否分配个人空间，非必返
  bool? allowPersonalSpace;

  ///     personalSpaceQuotaSize：字符串，个人空间额度，非必返
  String? personalSpaceQuotaSize;

  SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions();

  factory SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptionsFromJson(
          json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptionsToJson(
          this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationInfoOrganizationsOrgUser {
  ///   nickname: 字符串，昵称；
  String? nickname;

  ///   role: 字符串，superAdmin|admin|user 角色；
  SMHAdminUserRole? role;

  ///   avatar: 字符串，用户头像；
  String? avatar;

  ///   deregister: 布尔值，是否注销中；
  bool? deregister;

  ///   enabled: 布尔值，账号是否启用；
  bool? enabled;

  SMHOrganizationInfoOrganizationsOrgUser();

  factory SMHOrganizationInfoOrganizationsOrgUser.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationInfoOrganizationsOrgUserFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationInfoOrganizationsOrgUserToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

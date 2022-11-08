import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_organization_detail_info_entity.g.dart';

@JsonSerializable()
class SMHOrganizationDetailInfoEntity {
  /// id: 整数，组织 ID
  int? id;

  /// name: 字符串，组织名称
  String? name;

  /// libraryCert: 字符串，组织认证方式，'person' | 'enterprise' | ''；
  String? libraryCert;

  /// domains: 对象数组，专属域名列表
  List<SMHOrganizationDetailInfoDomains>? domains;

  /// extensionData: 组织配置参数
  SMHOrganizationDetailInfoExtensionData? extensionData;

  SMHOrganizationDetailInfoEntity();

  factory SMHOrganizationDetailInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHOrganizationDetailInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHOrganizationDetailInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationDetailInfoDomains {
  ///   isCustom：布尔值，是否用户自定义域名
  bool? isCustom;

  ///   domain：字符串，专属域名
  String? domain;

  SMHOrganizationDetailInfoDomains();

  factory SMHOrganizationDetailInfoDomains.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationDetailInfoDomainsFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationDetailInfoDomainsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationDetailInfoExtensionData {
  String? logo;
  bool? ensurePersonalSpace;

  ///   enableWeworkLogin: 布尔值，是否允许企业微信扫码登录；
  bool? enableWeworkLogin;

  ///   enableYufuLogin: 布尔值，是否允许玉符 SSO 登录；
  bool? enableYufuLogin;

  ///   enableShare: 布尔值，是否允许分享；
  bool? enableShare;

  ///   syncWay: 字符串，企业架构同步方式，wework | yufu 可选参数；
  String? syncWay;

  ///   showOrgNameInUI: 布尔值，是否在 UI 上展示企业名称；
  bool? showOrgNameInUI;

  ///   defaultTeamOptions：新建团队时的默认配置；
  SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions? defaultTeamOptions;

  ///   defaultUserOptions：新建用户时的默认配置；
  SMHOrganizationDetailInfoExtensionDataDefaultUserOptions? defaultUserOptions;

  ///   watermarkOptions：水印配置信息；
  SMHOrganizationDetailInfoExtensionDataWatermarkOptions? watermarkOptions;
  String? expireTime;

  ///   editionConfig: JSON 对象，组织的版本信息；
  SMHOrganizationDetailInfoExtensionDataEditionConfig? editionConfig;

  SMHOrganizationDetailInfoExtensionData();

  factory SMHOrganizationDetailInfoExtensionData.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationDetailInfoExtensionDataFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationDetailInfoExtensionDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions {
  ///     defaultRoleId：整数，枚举类型，团队成员对团队空间的默认操作权限；
  int? defaultRoleId;

  ///     spaceQuotaSize：字符串，团队空间额度；
  String? spaceQuotaSize;

  SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions();

  factory SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationDetailInfoExtensionDataDefaultTeamOptionsFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationDetailInfoExtensionDataDefaultTeamOptionsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationDetailInfoExtensionDataDefaultUserOptions {
  ///   enabled：布尔值，是否启用；
  bool? enabled;

  ///   allowPersonalSpace：布尔值，是否分配个人空间；
  bool? allowPersonalSpace;

  ///   personalSpaceQuotaSize：字符串，个人空间额度；
  String? personalSpaceQuotaSize;

  SMHOrganizationDetailInfoExtensionDataDefaultUserOptions();

  factory SMHOrganizationDetailInfoExtensionDataDefaultUserOptions.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationDetailInfoExtensionDataDefaultUserOptionsFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationDetailInfoExtensionDataDefaultUserOptionsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationDetailInfoExtensionDataWatermarkOptions {
  ///     enablePreviewWatermark：布尔值，是否开启预览水印；
  bool? enablePreviewWatermark;

  ///     previewWatermarkType： 整数，0 用户昵称+uid水印，1 企业名称水印；
  int? previewWatermarkType;

  ///     enableDownloadWatermark： 布尔值，是否开启下载水印；
  bool? enableDownloadWatermark;

  ///     downloadWatermarkType： 整数，0 用户昵称+uid水印，1 企业名称水印；
  int? downloadWatermarkType;

  ///     enableShareWatermark： 布尔值，是否开启预览水印；
  bool? enableShareWatermark;

  ///     shareWatermarkType： 整数，1 企业名称水印；
  int? shareWatermarkType;

  SMHOrganizationDetailInfoExtensionDataWatermarkOptions();

  factory SMHOrganizationDetailInfoExtensionDataWatermarkOptions.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationDetailInfoExtensionDataWatermarkOptionsFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationDetailInfoExtensionDataWatermarkOptionsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationDetailInfoExtensionDataEditionConfig {
  ///     editionFlag: 字符串，版本信息 enterprise | team | personal
  SMHEditionFlag? editionFlag;

  ///     userCountLimit: 整数，企业用户上限，非必返
  int? userCountLimit;

  ///     quotaLimit: 字符串，以 Byte 为单位，企业存储空间上限，非必返
  int? quotaLimit;

  ///     enableTeamSpace: 布尔值，是否允许团队空间、企业空间，非必返
  bool? enableTeamSpace;

  ///     shareSpaceLimit: 整数，共享空间数量上限，非必返
  int? shareSpaceLimit;

  ///     shareSpaceUserCountLimit: 整数，共享空间人数上限，非必返
  int? shareSpaceUserCountLimit;

  ///     enableShareSpaceDynamics: 布尔值，是否允许共享空间动态，非必返
  bool? enableShareSpaceDynamics;

  ///     enableSyncDirectory: 布尔值，是否允许同步盘，非必返
  bool? enableSyncDirectory;

  ///     enableManageShareDirectory: 布尔值，是否可进行外链管理，外链次数限制 or 查看已分享的外链，非必返
  bool? enableManageShareDirectory;

  ///     enableOverseasPhoneNumber: 布尔值，是否允许海外手机号，非必返
  bool? enableOverseasPhoneNumber;

  ///     shareLinkLimit: 整数，外链条数限制，非必返
  int? shareLinkLimit;

  ///     enableManageWatermark: 布尔值，是否可管理水印配置，非必返
  bool? enableManageWatermark;

  ///     watermarkDefaultText: 字符串，固定水印信息，非必返
  String? watermarkDefaultText;

  ///     enableDirectoryHistory: 布尔值，是否可后台管理历史版本，非必返
  bool? enableDirectoryHistory;

  ///     restoreRecycledDays: 整数，可恢复回收站天数，非必返
  int? restoreRecycledDays;

  ///     enabledResignationTransfer: 布尔值，是否可以离职转接，非必返
  bool? enabledResignationTransfer;

  ///     enableLog: 布尔值，是否允许管理操作日志，非必返
  bool? enableLog;

  ///     enableStatisticalReport: 布尔值，是否允许查看统计报表，非必返
  bool? enableStatisticalReport;

  ///     enableTeamAdmin: 布尔值，是否允许团队管理员（多级管理员设置），非必返
  bool? enableTeamAdmin;

  ///     enableWechatIntegration: 布尔值，是否允许企业微信导入，非必返
  bool? enableWechatIntegration;

  SMHOrganizationDetailInfoExtensionDataEditionConfig();

  factory SMHOrganizationDetailInfoExtensionDataEditionConfig.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationDetailInfoExtensionDataEditionConfigFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationDetailInfoExtensionDataEditionConfigToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

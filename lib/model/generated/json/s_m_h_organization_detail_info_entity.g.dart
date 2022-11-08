import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_organization_detail_info_entity.dart';

SMHOrganizationDetailInfoEntity $SMHOrganizationDetailInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHOrganizationDetailInfoEntity sMHOrganizationDetailInfoEntity =
      SMHOrganizationDetailInfoEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHOrganizationDetailInfoEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHOrganizationDetailInfoEntity.name = name;
  }
  final String? libraryCert = jsonConvert.convert<String>(json['libraryCert']);
  if (libraryCert != null) {
    sMHOrganizationDetailInfoEntity.libraryCert = libraryCert;
  }
  final List<SMHOrganizationDetailInfoDomains>? domains = jsonConvert
      .convertListNotNull<SMHOrganizationDetailInfoDomains>(json['domains']);
  if (domains != null) {
    sMHOrganizationDetailInfoEntity.domains = domains;
  }
  final SMHOrganizationDetailInfoExtensionData? extensionData = jsonConvert
      .convert<SMHOrganizationDetailInfoExtensionData>(json['extensionData']);
  if (extensionData != null) {
    sMHOrganizationDetailInfoEntity.extensionData = extensionData;
  }
  return sMHOrganizationDetailInfoEntity;
}

Map<String, dynamic> $SMHOrganizationDetailInfoEntityToJson(
    SMHOrganizationDetailInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['libraryCert'] = entity.libraryCert;
  data['domains'] = entity.domains?.map((v) => v.toJson()).toList();
  data['extensionData'] = entity.extensionData?.toJson();
  return data;
}

SMHOrganizationDetailInfoDomains $SMHOrganizationDetailInfoDomainsFromJson(
    Map<String, dynamic> json) {
  final SMHOrganizationDetailInfoDomains sMHOrganizationDetailInfoDomains =
      SMHOrganizationDetailInfoDomains();
  final bool? isCustom = jsonConvert.convert<bool>(json['isCustom']);
  if (isCustom != null) {
    sMHOrganizationDetailInfoDomains.isCustom = isCustom;
  }
  final String? domain = jsonConvert.convert<String>(json['domain']);
  if (domain != null) {
    sMHOrganizationDetailInfoDomains.domain = domain;
  }
  return sMHOrganizationDetailInfoDomains;
}

Map<String, dynamic> $SMHOrganizationDetailInfoDomainsToJson(
    SMHOrganizationDetailInfoDomains entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['isCustom'] = entity.isCustom;
  data['domain'] = entity.domain;
  return data;
}

SMHOrganizationDetailInfoExtensionData
    $SMHOrganizationDetailInfoExtensionDataFromJson(Map<String, dynamic> json) {
  final SMHOrganizationDetailInfoExtensionData
      sMHOrganizationDetailInfoExtensionData =
      SMHOrganizationDetailInfoExtensionData();
  final String? logo = jsonConvert.convert<String>(json['logo']);
  if (logo != null) {
    sMHOrganizationDetailInfoExtensionData.logo = logo;
  }
  final bool? ensurePersonalSpace =
      jsonConvert.convert<bool>(json['ensurePersonalSpace']);
  if (ensurePersonalSpace != null) {
    sMHOrganizationDetailInfoExtensionData.ensurePersonalSpace =
        ensurePersonalSpace;
  }
  final bool? enableWeworkLogin =
      jsonConvert.convert<bool>(json['enableWeworkLogin']);
  if (enableWeworkLogin != null) {
    sMHOrganizationDetailInfoExtensionData.enableWeworkLogin =
        enableWeworkLogin;
  }
  final bool? enableYufuLogin =
      jsonConvert.convert<bool>(json['enableYufuLogin']);
  if (enableYufuLogin != null) {
    sMHOrganizationDetailInfoExtensionData.enableYufuLogin = enableYufuLogin;
  }
  final bool? enableShare = jsonConvert.convert<bool>(json['enableShare']);
  if (enableYufuLogin != null) {
    sMHOrganizationDetailInfoExtensionData.enableShare = enableShare;
  }

  final String? syncWay = jsonConvert.convert<String>(json['syncWay']);
  if (syncWay != null) {
    sMHOrganizationDetailInfoExtensionData.syncWay = syncWay;
  }
  final bool? showOrgNameInUI =
      jsonConvert.convert<bool>(json['showOrgNameInUI']);
  if (showOrgNameInUI != null) {
    sMHOrganizationDetailInfoExtensionData.showOrgNameInUI = showOrgNameInUI;
  }
  final SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions?
      defaultTeamOptions = jsonConvert
          .convert<SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions>(
              json['defaultTeamOptions']);
  if (defaultTeamOptions != null) {
    sMHOrganizationDetailInfoExtensionData.defaultTeamOptions =
        defaultTeamOptions;
  }
  final SMHOrganizationDetailInfoExtensionDataDefaultUserOptions?
      defaultUserOptions = jsonConvert
          .convert<SMHOrganizationDetailInfoExtensionDataDefaultUserOptions>(
              json['defaultUserOptions']);
  if (defaultUserOptions != null) {
    sMHOrganizationDetailInfoExtensionData.defaultUserOptions =
        defaultUserOptions;
  }
  final SMHOrganizationDetailInfoExtensionDataWatermarkOptions?
      watermarkOptions = jsonConvert
          .convert<SMHOrganizationDetailInfoExtensionDataWatermarkOptions>(
              json['watermarkOptions']);
  if (watermarkOptions != null) {
    sMHOrganizationDetailInfoExtensionData.watermarkOptions = watermarkOptions;
  }
  final String? expireTime = jsonConvert.convert<String>(json['expireTime']);
  if (expireTime != null) {
    sMHOrganizationDetailInfoExtensionData.expireTime = expireTime;
  }
  final SMHOrganizationDetailInfoExtensionDataEditionConfig? editionConfig =
      jsonConvert.convert<SMHOrganizationDetailInfoExtensionDataEditionConfig>(
          json['editionConfig']);
  if (editionConfig != null) {
    sMHOrganizationDetailInfoExtensionData.editionConfig = editionConfig;
  }
  return sMHOrganizationDetailInfoExtensionData;
}

Map<String, dynamic> $SMHOrganizationDetailInfoExtensionDataToJson(
    SMHOrganizationDetailInfoExtensionData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['logo'] = entity.logo;
  data['ensurePersonalSpace'] = entity.ensurePersonalSpace;
  data['enableWeworkLogin'] = entity.enableWeworkLogin;
  data['enableYufuLogin'] = entity.enableYufuLogin;
  data['syncWay'] = entity.syncWay;
  data['showOrgNameInUI'] = entity.showOrgNameInUI;
  data['defaultTeamOptions'] = entity.defaultTeamOptions?.toJson();
  data['defaultUserOptions'] = entity.defaultUserOptions?.toJson();
  data['watermarkOptions'] = entity.watermarkOptions?.toJson();
  data['expireTime'] = entity.expireTime;
  data['editionConfig'] = entity.editionConfig?.toJson();
  return data;
}

SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions
    $SMHOrganizationDetailInfoExtensionDataDefaultTeamOptionsFromJson(
        Map<String, dynamic> json) {
  final SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions
      sMHOrganizationDetailInfoExtensionDataDefaultTeamOptions =
      SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions();
  final int? defaultRoleId = jsonConvert.convert<int>(json['defaultRoleId']);
  if (defaultRoleId != null) {
    sMHOrganizationDetailInfoExtensionDataDefaultTeamOptions.defaultRoleId =
        defaultRoleId;
  }
  final String? spaceQuotaSize =
      jsonConvert.convert<String>(json['spaceQuotaSize']);
  if (spaceQuotaSize != null) {
    sMHOrganizationDetailInfoExtensionDataDefaultTeamOptions.spaceQuotaSize =
        spaceQuotaSize;
  }
  return sMHOrganizationDetailInfoExtensionDataDefaultTeamOptions;
}

Map<String, dynamic>
    $SMHOrganizationDetailInfoExtensionDataDefaultTeamOptionsToJson(
        SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['defaultRoleId'] = entity.defaultRoleId;
  data['spaceQuotaSize'] = entity.spaceQuotaSize;
  return data;
}

SMHOrganizationDetailInfoExtensionDataDefaultUserOptions
    $SMHOrganizationDetailInfoExtensionDataDefaultUserOptionsFromJson(
        Map<String, dynamic> json) {
  final SMHOrganizationDetailInfoExtensionDataDefaultUserOptions
      sMHOrganizationDetailInfoExtensionDataDefaultUserOptions =
      SMHOrganizationDetailInfoExtensionDataDefaultUserOptions();
  final bool? enabled = jsonConvert.convert<bool>(json['enabled']);
  if (enabled != null) {
    sMHOrganizationDetailInfoExtensionDataDefaultUserOptions.enabled = enabled;
  }
  final bool? allowPersonalSpace =
      jsonConvert.convert<bool>(json['allowPersonalSpace']);
  if (allowPersonalSpace != null) {
    sMHOrganizationDetailInfoExtensionDataDefaultUserOptions
        .allowPersonalSpace = allowPersonalSpace;
  }
  final String? personalSpaceQuotaSize =
      jsonConvert.convert<String>(json['personalSpaceQuotaSize']);
  if (personalSpaceQuotaSize != null) {
    sMHOrganizationDetailInfoExtensionDataDefaultUserOptions
        .personalSpaceQuotaSize = personalSpaceQuotaSize;
  }
  return sMHOrganizationDetailInfoExtensionDataDefaultUserOptions;
}

Map<String, dynamic>
    $SMHOrganizationDetailInfoExtensionDataDefaultUserOptionsToJson(
        SMHOrganizationDetailInfoExtensionDataDefaultUserOptions entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enabled'] = entity.enabled;
  data['allowPersonalSpace'] = entity.allowPersonalSpace;
  data['personalSpaceQuotaSize'] = entity.personalSpaceQuotaSize;
  return data;
}

SMHOrganizationDetailInfoExtensionDataWatermarkOptions
    $SMHOrganizationDetailInfoExtensionDataWatermarkOptionsFromJson(
        Map<String, dynamic> json) {
  final SMHOrganizationDetailInfoExtensionDataWatermarkOptions
      sMHOrganizationDetailInfoExtensionDataWatermarkOptions =
      SMHOrganizationDetailInfoExtensionDataWatermarkOptions();
  final bool? enablePreviewWatermark =
      jsonConvert.convert<bool>(json['enablePreviewWatermark']);
  if (enablePreviewWatermark != null) {
    sMHOrganizationDetailInfoExtensionDataWatermarkOptions
        .enablePreviewWatermark = enablePreviewWatermark;
  }
  final int? previewWatermarkType =
      jsonConvert.convert<int>(json['previewWatermarkType']);
  if (previewWatermarkType != null) {
    sMHOrganizationDetailInfoExtensionDataWatermarkOptions
        .previewWatermarkType = previewWatermarkType;
  }
  final bool? enableDownloadWatermark =
      jsonConvert.convert<bool>(json['enableDownloadWatermark']);
  if (enableDownloadWatermark != null) {
    sMHOrganizationDetailInfoExtensionDataWatermarkOptions
        .enableDownloadWatermark = enableDownloadWatermark;
  }
  final int? downloadWatermarkType =
      jsonConvert.convert<int>(json['downloadWatermarkType']);
  if (downloadWatermarkType != null) {
    sMHOrganizationDetailInfoExtensionDataWatermarkOptions
        .downloadWatermarkType = downloadWatermarkType;
  }
  final bool? enableShareWatermark =
      jsonConvert.convert<bool>(json['enableShareWatermark']);
  if (enableShareWatermark != null) {
    sMHOrganizationDetailInfoExtensionDataWatermarkOptions
        .enableShareWatermark = enableShareWatermark;
  }
  final int? shareWatermarkType =
      jsonConvert.convert<int>(json['shareWatermarkType']);
  if (shareWatermarkType != null) {
    sMHOrganizationDetailInfoExtensionDataWatermarkOptions.shareWatermarkType =
        shareWatermarkType;
  }
  return sMHOrganizationDetailInfoExtensionDataWatermarkOptions;
}

Map<String, dynamic>
    $SMHOrganizationDetailInfoExtensionDataWatermarkOptionsToJson(
        SMHOrganizationDetailInfoExtensionDataWatermarkOptions entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enablePreviewWatermark'] = entity.enablePreviewWatermark;
  data['previewWatermarkType'] = entity.previewWatermarkType;
  data['enableDownloadWatermark'] = entity.enableDownloadWatermark;
  data['downloadWatermarkType'] = entity.downloadWatermarkType;
  data['enableShareWatermark'] = entity.enableShareWatermark;
  data['shareWatermarkType'] = entity.shareWatermarkType;
  return data;
}

SMHOrganizationDetailInfoExtensionDataEditionConfig
    $SMHOrganizationDetailInfoExtensionDataEditionConfigFromJson(
        Map<String, dynamic> json) {
  final SMHOrganizationDetailInfoExtensionDataEditionConfig
      sMHOrganizationDetailInfoExtensionDataEditionConfig =
      SMHOrganizationDetailInfoExtensionDataEditionConfig();
  final String? editionFlag = jsonConvert.convert<String>(json['editionFlag']);
  if (editionFlag != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig.editionFlag =
        SMHEditionFlag.values.byName(editionFlag);
  }
  final int? userCountLimit = jsonConvert.convert<int>(json['userCountLimit']);
  if (userCountLimit != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig.userCountLimit =
        userCountLimit;
  }
  final int? quotaLimit = jsonConvert.convert<int>(json['quotaLimit']);
  if (quotaLimit != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig.quotaLimit = quotaLimit;
  }
  final bool? enableTeamSpace =
      jsonConvert.convert<bool>(json['enableTeamSpace']);
  if (enableTeamSpace != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig.enableTeamSpace =
        enableTeamSpace;
  }
  final int? shareSpaceLimit =
      jsonConvert.convert<int>(json['shareSpaceLimit']);
  if (shareSpaceLimit != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig.shareSpaceLimit =
        shareSpaceLimit;
  }
  final int? shareSpaceUserCountLimit =
      jsonConvert.convert<int>(json['shareSpaceUserCountLimit']);
  if (shareSpaceUserCountLimit != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig
        .shareSpaceUserCountLimit = shareSpaceUserCountLimit;
  }
  final bool? enableShareSpaceDynamics =
      jsonConvert.convert<bool>(json['enableShareSpaceDynamics']);
  if (enableShareSpaceDynamics != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig
        .enableShareSpaceDynamics = enableShareSpaceDynamics;
  }
  final bool? enableSyncDirectory =
      jsonConvert.convert<bool>(json['enableSyncDirectory']);
  if (enableSyncDirectory != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig.enableSyncDirectory =
        enableSyncDirectory;
  }
  final bool? enableManageShareDirectory =
      jsonConvert.convert<bool>(json['enableManageShareDirectory']);
  if (enableManageShareDirectory != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig
        .enableManageShareDirectory = enableManageShareDirectory;
  }
  final int? shareLinkLimit = jsonConvert.convert<int>(json['shareLinkLimit']);
  if (shareLinkLimit != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig.shareLinkLimit =
        shareLinkLimit;
  }
  final bool? enableManageWatermark =
      jsonConvert.convert<bool>(json['enableManageWatermark']);
  if (enableManageWatermark != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig.enableManageWatermark =
        enableManageWatermark;
  }
  final String? watermarkDefaultText =
      jsonConvert.convert<String>(json['watermarkDefaultText']);
  if (watermarkDefaultText != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig.watermarkDefaultText =
        watermarkDefaultText;
  }
  final bool? enableDirectoryHistory =
      jsonConvert.convert<bool>(json['enableDirectoryHistory']);
  if (enableDirectoryHistory != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig.enableDirectoryHistory =
        enableDirectoryHistory;
  }
  final int? restoreRecycledDays =
      jsonConvert.convert<int>(json['restoreRecycledDays']);
  if (restoreRecycledDays != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig.restoreRecycledDays =
        restoreRecycledDays;
  }
  final bool? enabledResignationTransfer =
      jsonConvert.convert<bool>(json['enabledResignationTransfer']);
  if (enabledResignationTransfer != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig
        .enabledResignationTransfer = enabledResignationTransfer;
  }
  final bool? enableLog = jsonConvert.convert<bool>(json['enableLog']);
  if (enableLog != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig.enableLog = enableLog;
  }
  final bool? enableStatisticalReport =
      jsonConvert.convert<bool>(json['enableStatisticalReport']);
  if (enableStatisticalReport != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig
        .enableStatisticalReport = enableStatisticalReport;
  }
  final bool? enableTeamAdmin =
      jsonConvert.convert<bool>(json['enableTeamAdmin']);
  if (enableTeamAdmin != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig.enableTeamAdmin =
        enableTeamAdmin;
  }
  final bool? enableWechatIntegration =
      jsonConvert.convert<bool>(json['enableWechatIntegration']);
  if (enableWechatIntegration != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig
        .enableWechatIntegration = enableWechatIntegration;
  }

  final bool? enableOverseasPhoneNumber =
      jsonConvert.convert<bool>(json['enableOverseasPhoneNumber']);
  if (enableOverseasPhoneNumber != null) {
    sMHOrganizationDetailInfoExtensionDataEditionConfig
        .enableOverseasPhoneNumber = enableOverseasPhoneNumber;
  }

  return sMHOrganizationDetailInfoExtensionDataEditionConfig;
}

Map<String, dynamic> $SMHOrganizationDetailInfoExtensionDataEditionConfigToJson(
    SMHOrganizationDetailInfoExtensionDataEditionConfig entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['editionFlag'] = entity.editionFlag?.name;
  data['userCountLimit'] = entity.userCountLimit;
  data['quotaLimit'] = entity.quotaLimit;
  data['enableTeamSpace'] = entity.enableTeamSpace;
  data['shareSpaceLimit'] = entity.shareSpaceLimit;
  data['shareSpaceUserCountLimit'] = entity.shareSpaceUserCountLimit;
  data['enableShareSpaceDynamics'] = entity.enableShareSpaceDynamics;
  data['enableSyncDirectory'] = entity.enableSyncDirectory;
  data['enableManageShareDirectory'] = entity.enableManageShareDirectory;
  data['shareLinkLimit'] = entity.shareLinkLimit;
  data['enableManageWatermark'] = entity.enableManageWatermark;
  data['watermarkDefaultText'] = entity.watermarkDefaultText;
  data['enableDirectoryHistory'] = entity.enableDirectoryHistory;
  data['restoreRecycledDays'] = entity.restoreRecycledDays;
  data['enabledResignationTransfer'] = entity.enabledResignationTransfer;
  data['enableLog'] = entity.enableLog;
  data['enableStatisticalReport'] = entity.enableStatisticalReport;
  data['enableTeamAdmin'] = entity.enableTeamAdmin;
  data['enableWechatIntegration'] = entity.enableWechatIntegration;
  return data;
}

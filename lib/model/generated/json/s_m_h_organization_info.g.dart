import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_organization_info.dart';

SMHOrganizationInfoEntity $SMHOrganizationInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHOrganizationInfoEntity sMHOrganizationInfoEntity =
      SMHOrganizationInfoEntity();
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHOrganizationInfoEntity.userId = userId;
  }
  final bool? hasAppliedPersonalOrg =
      jsonConvert.convert<bool>(json['hasAppliedPersonalOrg']);
  if (hasAppliedPersonalOrg != null) {
    sMHOrganizationInfoEntity.hasAppliedPersonalOrg = hasAppliedPersonalOrg;
  }
  final String? userToken = jsonConvert.convert<String>(json['userToken']);
  if (userToken != null) {
    sMHOrganizationInfoEntity.userToken = userToken;
  }
  final int? expiresIn = jsonConvert.convert<int>(json['expiresIn']);
  if (expiresIn != null) {
    sMHOrganizationInfoEntity.expiresIn = expiresIn;
  }
  final List<SMHOrganizationInfoOrganizations>? organizations =
      jsonConvert.convertListNotNull<SMHOrganizationInfoOrganizations>(
          json['organizations']);
  if (organizations != null) {
    sMHOrganizationInfoEntity.organizations = organizations;
  }
  final bool? isNewUser = jsonConvert.convert<bool>(json['isNewUser']);
  if (isNewUser != null) {
    sMHOrganizationInfoEntity.isNewUser = isNewUser;
  }
  return sMHOrganizationInfoEntity;
}

Map<String, dynamic> $SMHOrganizationInfoEntityToJson(
    SMHOrganizationInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['userId'] = entity.userId;
  data['hasAppliedPersonalOrg'] = entity.hasAppliedPersonalOrg;
  data['userToken'] = entity.userToken;
  data['expiresIn'] = entity.expiresIn;
  data['organizations'] = entity.organizations?.map((v) => v.toJson()).toList();
  data['isNewUser'] = entity.isNewUser;
  return data;
}

SMHOrganizationInfoOrganizations $SMHOrganizationInfoOrganizationsFromJson(
    Map<String, dynamic> json) {
  final SMHOrganizationInfoOrganizations sMHOrganizationInfoOrganizations =
      SMHOrganizationInfoOrganizations();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHOrganizationInfoOrganizations.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHOrganizationInfoOrganizations.name = name;
  }
  final SMHOrganizationInfoOrganizationsExtensionData? extensionData =
      jsonConvert.convert<SMHOrganizationInfoOrganizationsExtensionData>(
          json['extensionData']);
  if (extensionData != null) {
    sMHOrganizationInfoOrganizations.extensionData = extensionData;
  }
  final String? libraryId = jsonConvert.convert<String>(json['libraryId']);
  if (libraryId != null) {
    sMHOrganizationInfoOrganizations.libraryId = libraryId;
  }
  final String? libraryCert = jsonConvert.convert<String>(json['libraryCert']);
  if (libraryCert != null) {
    sMHOrganizationInfoOrganizations.libraryCert = libraryCert;
  }
  final SMHOrganizationInfoOrganizationsOrgUser? orgUser = jsonConvert
      .convert<SMHOrganizationInfoOrganizationsOrgUser>(json['orgUser']);
  if (orgUser != null) {
    sMHOrganizationInfoOrganizations.orgUser = orgUser;
  }
  final bool? isLastSignedIn =
      jsonConvert.convert<bool>(json['isLastSignedIn']);
  if (isLastSignedIn != null) {
    sMHOrganizationInfoOrganizations.isLastSignedIn = isLastSignedIn;
  }
  final bool? expired = jsonConvert.convert<bool>(json['expired']);
  if (expired != null) {
    sMHOrganizationInfoOrganizations.expired = expired;
  }
  return sMHOrganizationInfoOrganizations;
}

Map<String, dynamic> $SMHOrganizationInfoOrganizationsToJson(
    SMHOrganizationInfoOrganizations entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['extensionData'] = entity.extensionData?.toJson();
  data['libraryId'] = entity.libraryId;
  data['libraryCert'] = entity.libraryCert;
  data['orgUser'] = entity.orgUser?.toJson();
  data['isLastSignedIn'] = entity.isLastSignedIn;
  data['expired'] = entity.expired;
  return data;
}

SMHOrganizationInfoOrganizationsExtensionData
    $SMHOrganizationInfoOrganizationsExtensionDataFromJson(
        Map<String, dynamic> json) {
  final SMHOrganizationInfoOrganizationsExtensionData
      sMHOrganizationInfoOrganizationsExtensionData =
      SMHOrganizationInfoOrganizationsExtensionData();
  final String? logo = jsonConvert.convert<String>(json['logo']);
  if (logo != null) {
    sMHOrganizationInfoOrganizationsExtensionData.logo = logo;
  }
  final String? syncWay = jsonConvert.convert<String>(json['syncWay']);
  if (syncWay != null) {
    sMHOrganizationInfoOrganizationsExtensionData.syncWay = syncWay;
  }
  final int? userLimit = jsonConvert.convert<int>(json['userLimit']);
  if (userLimit != null) {
    sMHOrganizationInfoOrganizationsExtensionData.userLimit = userLimit;
  }
  final String? expireTime = jsonConvert.convert<String>(json['expireTime']);
  if (expireTime != null) {
    sMHOrganizationInfoOrganizationsExtensionData.expireTime = expireTime;
  }
  final bool? enableShare = jsonConvert.convert<bool>(json['enableShare']);
  if (enableShare != null) {
    sMHOrganizationInfoOrganizationsExtensionData.enableShare = enableShare;
  }
  final String? allowProduct =
      jsonConvert.convert<String>(json['allowProduct']);
  if (allowProduct != null) {
    sMHOrganizationInfoOrganizationsExtensionData.allowProduct = allowProduct;
  }
  final SMHOrganizationInfoOrganizationsExtensionDataEditionConfig?
      editionConfig = jsonConvert
          .convert<SMHOrganizationInfoOrganizationsExtensionDataEditionConfig>(
              json['editionConfig']);
  if (editionConfig != null) {
    sMHOrganizationInfoOrganizationsExtensionData.editionConfig = editionConfig;
  }
  final bool? enableYufuLogin =
      jsonConvert.convert<bool>(json['enableYufuLogin']);
  if (enableYufuLogin != null) {
    sMHOrganizationInfoOrganizationsExtensionData.enableYufuLogin =
        enableYufuLogin;
  }
  final bool? showOrgNameInUI =
      jsonConvert.convert<bool>(json['showOrgNameInUI']);
  if (showOrgNameInUI != null) {
    sMHOrganizationInfoOrganizationsExtensionData.showOrgNameInUI =
        showOrgNameInUI;
  }
  final SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions?
      watermarkOptions = jsonConvert.convert<
              SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions>(
          json['watermarkOptions']);
  if (watermarkOptions != null) {
    sMHOrganizationInfoOrganizationsExtensionData.watermarkOptions =
        watermarkOptions;
  }
  final bool? enableWeworkLogin =
      jsonConvert.convert<bool>(json['enableWeworkLogin']);
  if (enableWeworkLogin != null) {
    sMHOrganizationInfoOrganizationsExtensionData.enableWeworkLogin =
        enableWeworkLogin;
  }
  final bool? showWeworkAppLink =
      jsonConvert.convert<bool>(json['showWeworkAppLink']);
  if (showWeworkAppLink != null) {
    sMHOrganizationInfoOrganizationsExtensionData.showWeworkAppLink =
        showWeworkAppLink;
  }
  final SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions?
      defaultTeamOptions = jsonConvert.convert<
              SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions>(
          json['defaultTeamOptions']);
  if (defaultTeamOptions != null) {
    sMHOrganizationInfoOrganizationsExtensionData.defaultTeamOptions =
        defaultTeamOptions;
  }
  final SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions?
      defaultUserOptions = jsonConvert.convert<
              SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions>(
          json['defaultUserOptions']);
  if (defaultUserOptions != null) {
    sMHOrganizationInfoOrganizationsExtensionData.defaultUserOptions =
        defaultUserOptions;
  }
  final bool? ensurePersonalSpace =
      jsonConvert.convert<bool>(json['ensurePersonalSpace']);
  if (ensurePersonalSpace != null) {
    sMHOrganizationInfoOrganizationsExtensionData.ensurePersonalSpace =
        ensurePersonalSpace;
  }
  return sMHOrganizationInfoOrganizationsExtensionData;
}

Map<String, dynamic> $SMHOrganizationInfoOrganizationsExtensionDataToJson(
    SMHOrganizationInfoOrganizationsExtensionData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['logo'] = entity.logo;
  data['syncWay'] = entity.syncWay;
  data['userLimit'] = entity.userLimit;
  data['expireTime'] = entity.expireTime;
  data['enableShare'] = entity.enableShare;
  data['allowProduct'] = entity.allowProduct;
  data['editionConfig'] = entity.editionConfig?.toJson();
  data['enableYufuLogin'] = entity.enableYufuLogin;
  data['showOrgNameInUI'] = entity.showOrgNameInUI;
  data['watermarkOptions'] = entity.watermarkOptions?.toJson();
  data['enableWeworkLogin'] = entity.enableWeworkLogin;
  data['showWeworkAppLink'] = entity.showWeworkAppLink;
  data['defaultTeamOptions'] = entity.defaultTeamOptions?.toJson();
  data['defaultUserOptions'] = entity.defaultUserOptions?.toJson();
  data['ensurePersonalSpace'] = entity.ensurePersonalSpace;
  return data;
}

SMHOrganizationInfoOrganizationsExtensionDataEditionConfig
    $SMHOrganizationInfoOrganizationsExtensionDataEditionConfigFromJson(
        Map<String, dynamic> json) {
  final SMHOrganizationInfoOrganizationsExtensionDataEditionConfig
      sMHOrganizationInfoOrganizationsExtensionDataEditionConfig =
      SMHOrganizationInfoOrganizationsExtensionDataEditionConfig();
  final String? editionFlag = jsonConvert.convert<String>(json['editionFlag']);
  if (editionFlag != null) {
    sMHOrganizationInfoOrganizationsExtensionDataEditionConfig.editionFlag =
        SMHEditionFlag.values.byName(editionFlag);
  }
  final bool? enableOverseasPhoneNumber =
      jsonConvert.convert<bool>(json['enableOverseasPhoneNumber']);
  if (enableOverseasPhoneNumber != null) {
    sMHOrganizationInfoOrganizationsExtensionDataEditionConfig
        .enableOverseasPhoneNumber = enableOverseasPhoneNumber;
  }
  return sMHOrganizationInfoOrganizationsExtensionDataEditionConfig;
}

Map<String, dynamic>
    $SMHOrganizationInfoOrganizationsExtensionDataEditionConfigToJson(
        SMHOrganizationInfoOrganizationsExtensionDataEditionConfig entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['editionFlag'] = entity.editionFlag?.name;
  data['enableOverseasPhoneNumber'] = entity.enableOverseasPhoneNumber;
  return data;
}

SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions
    $SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptionsFromJson(
        Map<String, dynamic> json) {
  final SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions
      sMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions =
      SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions();
  final int? shareWatermarkType =
      jsonConvert.convert<int>(json['shareWatermarkType']);
  if (shareWatermarkType != null) {
    sMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions
        .shareWatermarkType = shareWatermarkType;
  }
  final bool? enableShareWatermark =
      jsonConvert.convert<bool>(json['enableShareWatermark']);
  if (enableShareWatermark != null) {
    sMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions
        .enableShareWatermark = enableShareWatermark;
  }
  final int? previewWatermarkType =
      jsonConvert.convert<int>(json['previewWatermarkType']);
  if (previewWatermarkType != null) {
    sMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions
        .previewWatermarkType = previewWatermarkType;
  }
  final int? downloadWatermarkType =
      jsonConvert.convert<int>(json['downloadWatermarkType']);
  if (downloadWatermarkType != null) {
    sMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions
        .downloadWatermarkType = downloadWatermarkType;
  }
  final bool? enablePreviewWatermark =
      jsonConvert.convert<bool>(json['enablePreviewWatermark']);
  if (enablePreviewWatermark != null) {
    sMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions
        .enablePreviewWatermark = enablePreviewWatermark;
  }
  final bool? enableDownloadWatermark =
      jsonConvert.convert<bool>(json['enableDownloadWatermark']);
  if (enableDownloadWatermark != null) {
    sMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions
        .enableDownloadWatermark = enableDownloadWatermark;
  }
  return sMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions;
}

Map<String, dynamic>
    $SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptionsToJson(
        SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['shareWatermarkType'] = entity.shareWatermarkType;
  data['enableShareWatermark'] = entity.enableShareWatermark;
  data['previewWatermarkType'] = entity.previewWatermarkType;
  data['downloadWatermarkType'] = entity.downloadWatermarkType;
  data['enablePreviewWatermark'] = entity.enablePreviewWatermark;
  data['enableDownloadWatermark'] = entity.enableDownloadWatermark;
  return data;
}

SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions
    $SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptionsFromJson(
        Map<String, dynamic> json) {
  final SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions
      sMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions =
      SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions();
  final int? defaultRoleId = jsonConvert.convert<int>(json['defaultRoleId']);
  if (defaultRoleId != null) {
    sMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions
        .defaultRoleId = defaultRoleId;
  }
  final int? spaceQuotaSize = jsonConvert.convert<int>(json['spaceQuotaSize']);
  if (spaceQuotaSize != null) {
    sMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions
        .spaceQuotaSize = spaceQuotaSize;
  }
  return sMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions;
}

Map<String, dynamic>
    $SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptionsToJson(
        SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions
            entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['defaultRoleId'] = entity.defaultRoleId;
  data['spaceQuotaSize'] = entity.spaceQuotaSize;
  return data;
}

SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions
    $SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptionsFromJson(
        Map<String, dynamic> json) {
  final SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions
      sMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions =
      SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions();
  final bool? enabled = jsonConvert.convert<bool>(json['enabled']);
  if (enabled != null) {
    sMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions.enabled =
        enabled;
  }
  final bool? allowPersonalSpace =
      jsonConvert.convert<bool>(json['allowPersonalSpace']);
  if (allowPersonalSpace != null) {
    sMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions
        .allowPersonalSpace = allowPersonalSpace;
  }
  final String? personalSpaceQuotaSize =
      jsonConvert.convert<String>(json['personalSpaceQuotaSize']);
  if (personalSpaceQuotaSize != null) {
    sMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions
        .personalSpaceQuotaSize = personalSpaceQuotaSize;
  }
  return sMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions;
}

Map<String, dynamic>
    $SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptionsToJson(
        SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions
            entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enabled'] = entity.enabled;
  data['allowPersonalSpace'] = entity.allowPersonalSpace;
  data['personalSpaceQuotaSize'] = entity.personalSpaceQuotaSize;
  return data;
}

SMHOrganizationInfoOrganizationsOrgUser
    $SMHOrganizationInfoOrganizationsOrgUserFromJson(
        Map<String, dynamic> json) {
  final SMHOrganizationInfoOrganizationsOrgUser
      sMHOrganizationInfoOrganizationsOrgUser =
      SMHOrganizationInfoOrganizationsOrgUser();
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHOrganizationInfoOrganizationsOrgUser.nickname = nickname;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    sMHOrganizationInfoOrganizationsOrgUser.role =
        SMHAdminUserRole.values.byName(role);
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    sMHOrganizationInfoOrganizationsOrgUser.avatar = avatar;
  }
  final bool? deregister = jsonConvert.convert<bool>(json['deregister']);
  if (deregister != null) {
    sMHOrganizationInfoOrganizationsOrgUser.deregister = deregister;
  }
  final bool? enabled = jsonConvert.convert<bool>(json['enabled']);
  if (enabled != null) {
    sMHOrganizationInfoOrganizationsOrgUser.enabled = enabled;
  }
  return sMHOrganizationInfoOrganizationsOrgUser;
}

Map<String, dynamic> $SMHOrganizationInfoOrganizationsOrgUserToJson(
    SMHOrganizationInfoOrganizationsOrgUser entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['nickname'] = entity.nickname;
  data['role'] = entity.role?.name;
  data['avatar'] = entity.avatar;
  data['deregister'] = entity.deregister;
  data['enabled'] = entity.enabled;
  return data;
}

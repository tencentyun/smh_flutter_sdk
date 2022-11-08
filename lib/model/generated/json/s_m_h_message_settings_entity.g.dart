import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_message_settings_entity.dart';

SMHMessageSettingsEntity $SMHMessageSettingsEntityFromJson(
    Map<String, dynamic> json) {
  final SMHMessageSettingsEntity sMHMessageSettingsEntity =
      SMHMessageSettingsEntity();
  final SMHMessageSettingsReceiveMessageConfig? receiveMessageConfig =
      jsonConvert.convert<SMHMessageSettingsReceiveMessageConfig>(
          json['receiveMessageConfig']);
  if (receiveMessageConfig != null) {
    sMHMessageSettingsEntity.receiveMessageConfig = receiveMessageConfig;
  }
  return sMHMessageSettingsEntity;
}

Map<String, dynamic> $SMHMessageSettingsEntityToJson(
    SMHMessageSettingsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['receiveMessageConfig'] = entity.receiveMessageConfig?.toJson();
  return data;
}

SMHMessageSettingsReceiveMessageConfig
    $SMHMessageSettingsReceiveMessageConfigFromJson(Map<String, dynamic> json) {
  final SMHMessageSettingsReceiveMessageConfig
      sMHMessageSettingsReceiveMessageConfig =
      SMHMessageSettingsReceiveMessageConfig();
  final bool? authorityAndSettingMsg =
      jsonConvert.convert<bool>(json['authorityAndSettingMsg']);
  if (authorityAndSettingMsg != null) {
    sMHMessageSettingsReceiveMessageConfig.authorityAndSettingMsg =
        authorityAndSettingMsg;
  }
  final bool? shareMsg = jsonConvert.convert<bool>(json['shareMsg']);
  if (shareMsg != null) {
    sMHMessageSettingsReceiveMessageConfig.shareMsg = shareMsg;
  }
  final bool? esignMsg = jsonConvert.convert<bool>(json['esignMsg']);
  if (esignMsg != null) {
    sMHMessageSettingsReceiveMessageConfig.esignMsg = esignMsg;
  }
  final bool? userManageMsg = jsonConvert.convert<bool>(json['userManageMsg']);
  if (userManageMsg != null) {
    sMHMessageSettingsReceiveMessageConfig.userManageMsg = userManageMsg;
  }
  final bool? quotaAndRenewMsg =
      jsonConvert.convert<bool>(json['quotaAndRenewMsg']);
  if (quotaAndRenewMsg != null) {
    sMHMessageSettingsReceiveMessageConfig.quotaAndRenewMsg = quotaAndRenewMsg;
  }
  final bool? securityMsg = jsonConvert.convert<bool>(json['securityMsg']);
  if (securityMsg != null) {
    sMHMessageSettingsReceiveMessageConfig.securityMsg = securityMsg;
  }
  return sMHMessageSettingsReceiveMessageConfig;
}

Map<String, dynamic> $SMHMessageSettingsReceiveMessageConfigToJson(
    SMHMessageSettingsReceiveMessageConfig entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['authorityAndSettingMsg'] = entity.authorityAndSettingMsg;
  data['shareMsg'] = entity.shareMsg;
  data['esignMsg'] = entity.esignMsg;
  data['userManageMsg'] = entity.userManageMsg;
  data['quotaAndRenewMsg'] = entity.quotaAndRenewMsg;
  data['securityMsg'] = entity.securityMsg;
  return data;
}

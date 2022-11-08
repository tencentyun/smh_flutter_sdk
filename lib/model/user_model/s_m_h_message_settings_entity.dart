import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_message_settings_entity.g.dart';

@JsonSerializable()
class SMHMessageSettingsEntity {
  SMHMessageSettingsReceiveMessageConfig? receiveMessageConfig;

  SMHMessageSettingsEntity();

  factory SMHMessageSettingsEntity.fromJson(Map<String, dynamic> json) =>
      $SMHMessageSettingsEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHMessageSettingsEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHMessageSettingsReceiveMessageConfig {
  /// authorityAndSettingMsg 是否开启权限或设置消息
  bool? authorityAndSettingMsg;

  /// shareMsg 是否开启外链消息
  bool? shareMsg;

  /// esignMsg 是否开启电子签消息
  bool? esignMsg;

  /// userManageMsg 是否开启用户管理消息
  bool? userManageMsg;

  /// quotaAndRenewMsg 是否开启扩容或续期消息
  bool? quotaAndRenewMsg;

  /// securityMsg 是否开启安全扫描消息
  bool? securityMsg;

  SMHMessageSettingsReceiveMessageConfig();

  factory SMHMessageSettingsReceiveMessageConfig.fromJson(
          Map<String, dynamic> json) =>
      $SMHMessageSettingsReceiveMessageConfigFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHMessageSettingsReceiveMessageConfigToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

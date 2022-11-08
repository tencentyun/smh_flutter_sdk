import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_virus_setting_entity.dart';

SMHVirusSettingEntity $SMHVirusSettingEntityFromJson(
    Map<String, dynamic> json) {
  final SMHVirusSettingEntity sMHVirusSettingEntity = SMHVirusSettingEntity();
  final bool? enableAntivirus =
      jsonConvert.convert<bool>(json['enableAntivirus']);
  if (enableAntivirus != null) {
    sMHVirusSettingEntity.enableAntivirus = enableAntivirus;
  }
  return sMHVirusSettingEntity;
}

Map<String, dynamic> $SMHVirusSettingEntityToJson(
    SMHVirusSettingEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enableAntivirus'] = entity.enableAntivirus;
  return data;
}

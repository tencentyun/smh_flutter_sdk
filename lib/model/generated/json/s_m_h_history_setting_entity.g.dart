import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_history_setting_entity.dart';

SMHHistorySettingEntity $SMHHistorySettingEntityFromJson(
    Map<String, dynamic> json) {
  final SMHHistorySettingEntity sMHHistorySettingEntity =
      SMHHistorySettingEntity();
  final bool? enableFileHistory =
      jsonConvert.convert<bool>(json['enableFileHistory']);
  if (enableFileHistory != null) {
    sMHHistorySettingEntity.enableFileHistory = enableFileHistory;
  }
  final int? fileHistoryCount =
      jsonConvert.convert<int>(json['fileHistoryCount']);
  if (fileHistoryCount != null) {
    sMHHistorySettingEntity.fileHistoryCount = fileHistoryCount;
  }
  final int? fileHistoryExpireDay =
      jsonConvert.convert<int>(json['fileHistoryExpireDay']);
  if (fileHistoryExpireDay != null) {
    sMHHistorySettingEntity.fileHistoryExpireDay = fileHistoryExpireDay;
  }
  return sMHHistorySettingEntity;
}

Map<String, dynamic> $SMHHistorySettingEntityToJson(
    SMHHistorySettingEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enableFileHistory'] = entity.enableFileHistory;
  data['fileHistoryCount'] = entity.fileHistoryCount;
  data['fileHistoryExpireDay'] = entity.fileHistoryExpireDay;
  return data;
}

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_organization_history_settings_entity.dart';

SMHOrganizationHistorySettingsEntity
    $SMHOrganizationHistorySettingsEntityFromJson(Map<String, dynamic> json) {
  final SMHOrganizationHistorySettingsEntity
      sMHOrganizationHistorySettingsEntity =
      SMHOrganizationHistorySettingsEntity();
  final bool? enableFileHistory =
      jsonConvert.convert<bool>(json['enableFileHistory']);
  if (enableFileHistory != null) {
    sMHOrganizationHistorySettingsEntity.enableFileHistory = enableFileHistory;
  }
  final int? fileHistoryCount =
      jsonConvert.convert<int>(json['fileHistoryCount']);
  if (fileHistoryCount != null) {
    sMHOrganizationHistorySettingsEntity.fileHistoryCount = fileHistoryCount;
  }
  final int? fileHistoryExpireDay =
      jsonConvert.convert<int>(json['fileHistoryExpireDay']);
  if (fileHistoryExpireDay != null) {
    sMHOrganizationHistorySettingsEntity.fileHistoryExpireDay =
        fileHistoryExpireDay;
  }
  return sMHOrganizationHistorySettingsEntity;
}

Map<String, dynamic> $SMHOrganizationHistorySettingsEntityToJson(
    SMHOrganizationHistorySettingsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enableFileHistory'] = entity.enableFileHistory;
  data['fileHistoryCount'] = entity.fileHistoryCount;
  data['fileHistoryExpireDay'] = entity.fileHistoryExpireDay;
  return data;
}

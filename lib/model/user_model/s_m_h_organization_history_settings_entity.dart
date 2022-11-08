import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_organization_history_settings_entity.g.dart';

@JsonSerializable()
class SMHOrganizationHistorySettingsEntity {
  /// enableFileHistory: 布尔型，是否打开历史版本；
  bool? enableFileHistory;

  /// fileHistoryCount: 数字，历史版本最大数量；
  int? fileHistoryCount;

  /// fileHistoryExpireDay: 数字，历史版本过期时间；
  int? fileHistoryExpireDay;

  SMHOrganizationHistorySettingsEntity();

  factory SMHOrganizationHistorySettingsEntity.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationHistorySettingsEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationHistorySettingsEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

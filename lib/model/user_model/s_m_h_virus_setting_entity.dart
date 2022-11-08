import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_virus_setting_entity.g.dart';

@JsonSerializable()
class SMHVirusSettingEntity {
  /// enableAntivirus 是否开启云查毒
  bool? enableAntivirus;

  SMHVirusSettingEntity();

  factory SMHVirusSettingEntity.fromJson(Map<String, dynamic> json) =>
      $SMHVirusSettingEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHVirusSettingEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

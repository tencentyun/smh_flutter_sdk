import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_setting_history_result_entity.g.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';

@JsonSerializable()
class SMHSettingHistoryResultEntity {
  String? name;
  SMHFileType? type;
  String? objectKey;
  String? creationTime;
  String? modificationTime;
  String? setLatestTime;
  String? contentType;
  String? size;
  String? eTag;
  String? crc64;
  SMHAuthorityRoleItemEntity? authorityList;
  bool? previewByDoc;
  bool? previewByCI;
  bool? previewAsIcon;
  SMHFileType? fileType;

  SMHSettingHistoryResultEntity();

  factory SMHSettingHistoryResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHSettingHistoryResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHSettingHistoryResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

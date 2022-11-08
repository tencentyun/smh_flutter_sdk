import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_login_qrcode_state_entity.g.dart';

@JsonSerializable()
class SMHLoginQrcodeStateEntity {
  String? uuid;

  /// not_scanned 未扫描
  /// scanned 已扫描
  /// confirmed 已确认登录
  SMHScanStatus? status;

  SMHLoginQrcodeStateEntity();

  factory SMHLoginQrcodeStateEntity.fromJson(Map<String, dynamic> json) =>
      $SMHLoginQrcodeStateEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHLoginQrcodeStateEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

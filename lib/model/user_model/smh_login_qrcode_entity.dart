import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_login_qrcode_entity.g.dart';

@JsonSerializable()
class SMHLoginQrcodeEntity {
  String? uuid;

  SMHLoginQrcodeEntity();

  factory SMHLoginQrcodeEntity.fromJson(Map<String, dynamic> json) =>
      $SMHLoginQrcodeEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHLoginQrcodeEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_check_wechat_auth_result_entity.g.dart';

@JsonSerializable()
class SMHCheckWechatAuthResultEntity {
  /// available：布尔型，是否有效
  bool? available;

  SMHCheckWechatAuthResultEntity();

  factory SMHCheckWechatAuthResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHCheckWechatAuthResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHCheckWechatAuthResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

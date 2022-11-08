import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_traffic_price_info_entity.g.dart';

@JsonSerializable()
class SMHTrafficPriceInfoEntity {
  /// paidTotal: 字符串，已购流量，单位 Byte
  String? paidTotal;

  /// paidRemain: 字符串，剩余已购流量，单位 Byte
  String? paidRemain;

  /// freeTotal: 字符串，赠送流量，单位 Byte
  String? freeTotal;

  /// freeRemain: 字符串，剩余赠送流量，单位 Byte
  String? freeRemain;

  SMHTrafficPriceInfoEntity();

  factory SMHTrafficPriceInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHTrafficPriceInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHTrafficPriceInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

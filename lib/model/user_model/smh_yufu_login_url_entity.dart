import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_yufu_login_url_entity.g.dart';

@JsonSerializable()
class SMHYufuLoginUrlEntity {
  /// 登录链接
  String? url;

  SMHYufuLoginUrlEntity();

  factory SMHYufuLoginUrlEntity.fromJson(Map<String, dynamic> json) =>
      $SMHYufuLoginUrlEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHYufuLoginUrlEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

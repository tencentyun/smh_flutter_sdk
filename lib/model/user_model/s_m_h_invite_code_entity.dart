import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_invite_code_entity.g.dart';

@JsonSerializable()
class SMHInviteCodeEntity {
  /// 邀请码
  String? code;

  SMHInviteCodeEntity();

  factory SMHInviteCodeEntity.fromJson(Map<String, dynamic> json) =>
      $SMHInviteCodeEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHInviteCodeEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

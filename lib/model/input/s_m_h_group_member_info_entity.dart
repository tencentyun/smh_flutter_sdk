import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_group_member_info_entity.g.dart';

@JsonSerializable()
class SMHGroupMemberInfoEntity {
  /// orgId：整数，用户所属的企业 ID，必选参数；
  int? orgId;

  /// userId：整数，用户 ID，必选参数；
  String? userId;

  SMHGroupMemberInfoEntity();

  factory SMHGroupMemberInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHGroupMemberInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHGroupMemberInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

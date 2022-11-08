import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_member_authority_entity.g.dart';

@JsonSerializable()
class SMHMemberAuthorityEntity {
  String? userId;
  String? name;
  int? roleId;

  SMHMemberAuthorityEntity();

  factory SMHMemberAuthorityEntity.fromJson(Map<String, dynamic> json) =>
      $SMHMemberAuthorityEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHMemberAuthorityEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

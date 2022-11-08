import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_user_role_info_entity.g.dart';

@JsonSerializable()
class SMHUserRoleInfoEntity {
  /// 用户id
  String? userId;

  /// 姓名
  String? name;

  /// 角色id
  int? roleId;

  SMHUserRoleInfoEntity();

  factory SMHUserRoleInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHUserRoleInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHUserRoleInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

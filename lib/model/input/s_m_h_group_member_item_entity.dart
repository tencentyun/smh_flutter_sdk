import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_group_member_item_entity.g.dart';

@JsonSerializable()
class SMHGroupMemberItemEntity {
  /// orgId：整数，用户所属的企业 ID，必选参数；
  int? orgId;

  /// userId：整数，用户 ID，必选参数；
  String? userId;

  /// role：字符串，用户角色，groupAdmin | user，必选参数；
  String? role;

  /// authRoleId: 整数，普通群组成员权限 ID，如果是普通成员，该字段是必选参数；如果是群组管理员，该字段被忽略；
  int? authRoleId;

  SMHGroupMemberItemEntity();

  factory SMHGroupMemberItemEntity.fromJson(Map<String, dynamic> json) =>
      $SMHGroupMemberItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHGroupMemberItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_space_role_info_entity.g.dart';

@JsonSerializable()
class SMHSpaceRoleInfoEntity {
  /// 空间id
  String? spaceId;

  String? name;
  int? roleId;

  SMHSpaceRoleInfoEntity();

  factory SMHSpaceRoleInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHSpaceRoleInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHSpaceRoleInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

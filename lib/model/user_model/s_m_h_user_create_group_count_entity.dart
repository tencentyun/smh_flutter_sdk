import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_user_create_group_count_entity.g.dart';

@JsonSerializable()
class SMHUserCreateGroupCountEntity {
  /// ownerId：整数，用户 ID
  int? ownerId;

  /// count：整数，创建的群组数量
  int? count;

  SMHUserCreateGroupCountEntity();

  factory SMHUserCreateGroupCountEntity.fromJson(Map<String, dynamic> json) =>
      $SMHUserCreateGroupCountEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHUserCreateGroupCountEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

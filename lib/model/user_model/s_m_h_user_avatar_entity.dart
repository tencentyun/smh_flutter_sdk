import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_user_avatar_entity.g.dart';

@JsonSerializable()
class SMHUserAvatarEntity {
  /// 用户头像
  String? avatar;

  SMHUserAvatarEntity();

  factory SMHUserAvatarEntity.fromJson(Map<String, dynamic> json) =>
      $SMHUserAvatarEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHUserAvatarEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_user_stats_info_entity.g.dart';

@JsonSerializable()
class SMHUserStatsInfoEntity {
  /// userLimit: 整数，最大用户数
  int? userLimit;

  /// currentUser: 整数，当前用户数
  int? currentUser;

  SMHUserStatsInfoEntity();

  factory SMHUserStatsInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHUserStatsInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHUserStatsInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

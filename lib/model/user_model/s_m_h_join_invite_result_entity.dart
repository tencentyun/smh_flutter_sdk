import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_join_invite_result_entity.g.dart';

@JsonSerializable()
class SMHJoinInviteResultEntity {
  /// isSuccess：布尔值，是否成功加入；
  bool? isSuccess;

  /// isNew：布尔值，是否通过本次邀请加入；false - 通过本次邀请加入， true - 以前就已加入；
  bool? isNew;

  SMHJoinInviteResultEntity();

  factory SMHJoinInviteResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHJoinInviteResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHJoinInviteResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

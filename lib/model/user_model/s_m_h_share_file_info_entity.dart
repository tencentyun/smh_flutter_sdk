import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_share_file_info_entity.g.dart';

@JsonSerializable()
class SMHShareFileInfoEntity {
  /// id：整数，分享 ID；
  int? id;

  /// url：字符串，分享链接
  String? url;

  /// code: 字符串，分享 code
  String? code;

  /// disabled：布尔值，是否被禁用
  bool? disabled;

  /// expireTime：字符串，过期时间
  String? expireTime;

  /// creationTime：字符串，创建时间
  String? creationTime;

  SMHShareFileInfoEntity();

  factory SMHShareFileInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHShareFileInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHShareFileInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

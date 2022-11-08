import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_access_token_entity.g.dart';

@JsonSerializable()
class SMHAccessTokenEntity {
  /// libraryId: 字符串，SMH 媒体库 ID
  String? libraryId;

  /// spaceId: 字符串，SMH 租户空间 ID
  String? spaceId;

  /// accessToken: 字符串，SMH 访问令牌，用于访问 https://api.tencentsmh.cn/api/v1 下的各个接口
  String? accessToken;

  /// expiresIn: 整数，SMH 访问令牌过期时间（秒）
  int? expiresIn;

  SMHAccessTokenEntity();

  factory SMHAccessTokenEntity.fromJson(Map<String, dynamic> json) =>
      $SMHAccessTokenEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHAccessTokenEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

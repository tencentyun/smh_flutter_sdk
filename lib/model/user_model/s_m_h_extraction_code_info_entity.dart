import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_extraction_code_info_entity.g.dart';

@JsonSerializable()
class SMHExtractionCodeInfoEntity {
  /// libraryId：字符串，存储库；库
  String? libraryId;

  /// spaceId：字符串，空间ID；
  String? spaceId;

  /// accessToken：字符串，访问 api 凭证，调用 api 保存至网盘接口时，当做 share_access_token 传入；
  String? accessToken;

  /// expiredIn: 整数，访问令牌的有效时长，单位为秒；
  int? expiresIn;

  SMHExtractionCodeInfoEntity();

  factory SMHExtractionCodeInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHExtractionCodeInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHExtractionCodeInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

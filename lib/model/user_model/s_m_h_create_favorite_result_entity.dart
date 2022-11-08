import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_create_favorite_result_entity.g.dart';

@JsonSerializable()
class SMHCreateFavoriteResultEntity {
  /// id: 整数，收藏夹 ID；
  int? id;

  SMHCreateFavoriteResultEntity();

  factory SMHCreateFavoriteResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHCreateFavoriteResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHCreateFavoriteResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

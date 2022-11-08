import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_favorite_group_list_entity.g.dart';

@JsonSerializable()
class SMHFavoriteGroupListEntity {
  /// totalNum: 整数，满足条件的收藏夹总数
  int? totalNum;
  List<SMHFavoriteGroupListContents>? contents;

  SMHFavoriteGroupListEntity();

  factory SMHFavoriteGroupListEntity.fromJson(Map<String, dynamic> json) =>
      $SMHFavoriteGroupListEntityFromJson(json);
  Map<String, dynamic> toJson() => $SMHFavoriteGroupListEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

class SMHFavoriteGroupListContents {
  @JsonSerializable()

  /// tag: 字符串，收藏夹 tag；
  String? tag;

  /// id: 数字，收藏夹 ID；
  int? id;

  /// name: 字符串，收藏夹名称；
  String? name;

  SMHFavoriteGroupListContents();

  factory SMHFavoriteGroupListContents.fromJson(Map<String, dynamic> json) =>
      $SMHFavoriteGroupListContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHFavoriteGroupListContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

/// contents: 对象数组，收藏夹具体信息：

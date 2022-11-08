import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_tag_item_entity.g.dart';

@JsonSerializable()
class SMHTagItemEntity {
  /// id: 整数，标签 ID；
  int? id;

  /// name: 字符串，标签名称；
  String? name;

  /// type: 标签类型，0 字符串标签，1 键值对标签；
  int? type;

  SMHTagItemEntity();

  factory SMHTagItemEntity.fromJson(Map<String, dynamic> json) =>
      $SMHTagItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHTagItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

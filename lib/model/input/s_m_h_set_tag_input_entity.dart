import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_set_tag_input_entity.g.dart';

@JsonSerializable()
class SMHSetTagInputEntity {
  /// tagId: 数字，标签 ID，可选参数，和 tagName 二选一；
  int? tagId;

  /// tagName: 字符串，标签名称，可选参数，和 tagId 二选一，如标签名称之前不存在，则会自动创建一个字符串标签；
  String? tagName;

  /// tagValue: 字符串，标签值，可选参数，键值对标签才需要传入；
  String? tagValue;

  SMHSetTagInputEntity();

  factory SMHSetTagInputEntity.fromJson(Map<String, dynamic> json) =>
      $SMHSetTagInputEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHSetTagInputEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

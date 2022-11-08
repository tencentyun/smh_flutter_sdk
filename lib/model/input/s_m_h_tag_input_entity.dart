import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_tag_input_entity.g.dart';

@JsonSerializable()
class SMHTagInputEntity {
  /// tag id
  int? id;

  /// tag 值
  String? value;

  SMHTagInputEntity();

  factory SMHTagInputEntity.fromJson(Map<String, dynamic> json) =>
      $SMHTagInputEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHTagInputEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

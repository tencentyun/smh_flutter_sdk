import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_get_file_detail_input_entity.g.dart';

@JsonSerializable()
class SMHGetFileDetailInputEntity {
  int? spaceOrgId;
  String? path;

  SMHGetFileDetailInputEntity();

  factory SMHGetFileDetailInputEntity.fromJson(Map<String, dynamic> json) =>
      $SMHGetFileDetailInputEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHGetFileDetailInputEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

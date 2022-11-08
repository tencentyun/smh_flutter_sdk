import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_space_tag_size_info_entity.g.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

@JsonSerializable()
class SMHSpaceTagSizeInfoEntity {
  String? size;
  SMHSpaceTag? spaceTag;
  String? spaceId;

  SMHSpaceTagSizeInfoEntity();

  factory SMHSpaceTagSizeInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHSpaceTagSizeInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHSpaceTagSizeInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

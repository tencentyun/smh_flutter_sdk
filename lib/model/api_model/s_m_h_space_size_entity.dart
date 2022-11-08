import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_space_size_entity.g.dart';

@JsonSerializable()
class SMHSpaceSizeEntity {
  /// size: 字符串，租户空间大小；
  String? size;

  SMHSpaceSizeEntity();

  factory SMHSpaceSizeEntity.fromJson(Map<String, dynamic> json) =>
      $SMHSpaceSizeEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHSpaceSizeEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

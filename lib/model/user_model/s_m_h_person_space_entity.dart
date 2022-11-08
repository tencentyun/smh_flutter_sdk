import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_person_space_entity.g.dart';

@JsonSerializable()
class SMHPersonSpaceEntity {
  /// hasPersonalSpace: 布尔值, 是否分配有个人空间；
  bool? hasPersonalSpace;

  /// capacity: 字符串或 null，个人空间存储额度，单位 Byte，如果为 null 则共享组织剩余未分配存储额度；
  String? capacity;

  /// availableSpace: 字符串或 null，个人空间剩余可使用存储额度，单位 Byte，如果为 null 则共享组织剩余未分配存储额度；
  String? availableSpace;

  /// size: 字符串，个人空间已使用存储额度，单位 Byte
  String? size;

  SMHPersonSpaceEntity();

  factory SMHPersonSpaceEntity.fromJson(Map<String, dynamic> json) =>
      $SMHPersonSpaceEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHPersonSpaceEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

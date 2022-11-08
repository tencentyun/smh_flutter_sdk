import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_group_space_entity.g.dart';

@JsonSerializable()
class SMHGroupSpaceEntity {
  /// shareLibraryQuota：布尔值，是否共享群组所属组织的剩余额度
  bool? shareLibraryQuota;

  /// libraryId: 字符串, 团队空间媒体库 ID
  String? libraryId;

  /// spaceId: 字符串, 团队空间 ID
  String? spaceId;

  /// capacity: 字符串，空间存储额度，单位 Byte（不会为 null）
  String? capacity;

  /// availableSpace: 字符串，空间剩余可使用存储额度，单位 Byte（不会为 null）
  String? availableSpace;

  /// size: 字符串，团队空间已使用存储额度，单位 Byte
  String? size;

  SMHGroupSpaceEntity();

  factory SMHGroupSpaceEntity.fromJson(Map<String, dynamic> json) =>
      $SMHGroupSpaceEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHGroupSpaceEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

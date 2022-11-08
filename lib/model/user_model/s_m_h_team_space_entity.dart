import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_team_space_entity.g.dart';

@JsonSerializable()
class SMHTeamSpaceEntity {
  /// libraryId: 字符串, 团队空间媒体库 ID
  String? libraryId;

  /// spaceId: 字符串, 团队空间 ID
  String? spaceId;

  /// capacity: 字符串或 null，空间存储额度，单位 Byte，如果为 null 则共享组织剩余未分配存储额度；
  String? capacity;

  /// availableSpace: 字符串或 null，空间剩余可使用存储额度，单位 Byte，如果为 null 则共享组织剩余未分配存储额度；
  String? availableSpace;

  /// size: 字符串，团队空间已使用存储额度，单位 Byte
  String? size;

  SMHTeamSpaceEntity();

  factory SMHTeamSpaceEntity.fromJson(Map<String, dynamic> json) =>
      $SMHTeamSpaceEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHTeamSpaceEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

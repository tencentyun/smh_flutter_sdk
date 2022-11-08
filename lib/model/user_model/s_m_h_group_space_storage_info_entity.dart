import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_group_space_storage_info_entity.g.dart';

@JsonSerializable()
class SMHSpaceStorageInfoEntity {
  int? totalNum;
  int? page;
  int? pageSize;
  List<SMHSpaceStorageInfoContents>? contents;

  SMHSpaceStorageInfoEntity();

  factory SMHSpaceStorageInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHSpaceStorageInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHSpaceStorageInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHSpaceStorageInfoContents {
  /// id：整数，团队 ID
  int? id;
  int? parentId;

  /// name：字符串，团队名称
  String? name;

  /// spaceId：字符串，团队 SpaceId
  String? spaceId;
  List<String>? path;

  /// userCount：整数，团队成员数
  int? userCount;

  /// capacity：字符串，团队空间配额，单位 Byte
  String? capacity;

  /// availableSpace：字符串，团队空间可用容量，单位 Byte
  String? availableSpace;

  /// size：字符串，团队空间已使用存储量，单位 Byte
  String? size;

  /// internetTraffic：字符串，团队空间下行流量，单位 Byte
  String? internetTraffic;

  SMHSpaceStorageInfoContents();

  factory SMHSpaceStorageInfoContents.fromJson(Map<String, dynamic> json) =>
      $SMHSpaceStorageInfoContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHSpaceStorageInfoContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

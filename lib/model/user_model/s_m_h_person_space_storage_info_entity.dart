import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_person_space_storage_info_entity.g.dart';

@JsonSerializable()
class SMHPersonSpaceStorageInfoEntity {
  int? totalNum;
  int? page;
  int? pageSize;
  List<SMHPersonSpaceStorageInfoContents>? contents;

  SMHPersonSpaceStorageInfoEntity();

  factory SMHPersonSpaceStorageInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHPersonSpaceStorageInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHPersonSpaceStorageInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHPersonSpaceStorageInfoContents {
  /// id：整数，用户 ID
  int? id;

  /// countryCode：字符串，用户手机号国家码
  String? countryCode;

  /// phoneNumber：字符串，用户手机号
  String? phoneNumber;

  /// nickname：字符串，用户昵称
  String? nickname;

  /// role：字符串，用户角色
  String? role;

  /// enabled：布尔值，是否禁用
  bool? enabled;

  /// allowPersonalSpace：布尔值，是否有允许使用个人空间
  bool? allowPersonalSpace;

  /// capacity：字符串，个人空间配额，单位 Byte，若没有个人空间不返回该字段
  String? capacity;

  /// availableSpace：字符串，单位 Byte，个人空间剩余可使用存储额度，若没有个人空间不返回该字段
  String? availableSpace;

  /// size：字符串，单位 Byte，个人空间已使用存储量，若没有个人空间不返回该字段
  String? size;

  /// internetTraffic：字符串，单位 Byte，个人空间下行流量
  String? internetTraffic;

  SMHPersonSpaceStorageInfoContents();

  factory SMHPersonSpaceStorageInfoContents.fromJson(
          Map<String, dynamic> json) =>
      $SMHPersonSpaceStorageInfoContentsFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHPersonSpaceStorageInfoContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_space_usage_entity.g.dart';

@JsonSerializable()
class SMHSpaceUsageEntity {
  /// capacity: 组织总存储额度，单位 Byte，如果为 null 则无存储额度限制
  String? capacity;

  /// availableSpace: 组织剩余可用存储额度大小，单位 Byte，如果为 null 则无限制（注：已分配额度的空间，不论使用与否都将占用组织可用存储额度大小）
  String? availableSpace;

  /// totalAllocatedSpaceQuota: 组织分配给空间的总存储额度，单位 Byte
  String? totalAllocatedSpaceQuota;

  /// totalFileSize: 组织已上传文件占用的存储额度，单位 Byte
  String? totalFileSize;

  SMHSpaceUsageEntity();

  factory SMHSpaceUsageEntity.fromJson(Map<String, dynamic> json) =>
      $SMHSpaceUsageEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHSpaceUsageEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

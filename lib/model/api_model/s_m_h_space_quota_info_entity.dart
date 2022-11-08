import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_space_quota_info_entity.g.dart';

@JsonSerializable()
class SMHSpaceQuotaInfoEntity {
  /// id: 配额 ID，用于后续查询配额的具体信息、修改配额值或删除配额；
  int? id;

  /// capacity: 配额的具体值，单位为字节（Byte），可以指定为数字形式或字符串形式，为了避免大数产生的精度损失，该字段指定为字符串形式；
  String? capacity;

  SMHSpaceQuotaInfoEntity();

  factory SMHSpaceQuotaInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHSpaceQuotaInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHSpaceQuotaInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

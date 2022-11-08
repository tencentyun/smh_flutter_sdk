import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_extra_info_input_entity.g.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

@JsonSerializable()
class SMHExtraInfoInputEntity {
  /// spaceOrgId:数字，机构 ID，跨企业查询时必传，非跨企业查询时选填参数，默认为当前登录企业 ID，建议都传；
  int? spaceOrgId;

  /// spaceId:空间 ID，必填参数；
  String? spaceId;

  /// path: 文件路径，必填参数；
  String? path;

  /// virusAuditStatus字段:
  ///   0 未检测 （文件夹不标记可疑状态，一直为0）
  ///   1 检测中
  ///   2 无风险
  ///   3 风险文件
  ///   4 无法检测 （比如文件太大超过可检测范围，端侧当无风险处理）（超1G不检）
  ///   5 人为标记为无风险
  ///   6 检测任务失败
  SMHVirusAuditStatus? virusAuditStatus;

  SMHExtraInfoInputEntity();

  factory SMHExtraInfoInputEntity.fromJson(Map<String, dynamic> json) =>
      $SMHExtraInfoInputEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHExtraInfoInputEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_internet_traffic_info_entity.g.dart';

@JsonSerializable()
class SMHInternetTrafficInfoEntity {
  /// startTime: 日期字符串，统计开始时间
  String? startTime;

  /// endTime: 日期字符串，统计结束时间
  String? endTime;

  /// timestamps: 整数（时间戳）数组，统计时间点集合
  List<int>? timestamps;

  /// datapoints: 对象数组，统计数据
  List<SMHInternetTrafficInfoDatapoints>? datapoints;

  SMHInternetTrafficInfoEntity();

  factory SMHInternetTrafficInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHInternetTrafficInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHInternetTrafficInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHInternetTrafficInfoDatapoints {
  /// metricName：字符串，统计数据类型
  String? metricName;

  /// metricLabel：字符串，统计数据类型描述
  String? metricLabel;

  /// values：整数数组，统计值，与 timestamps 的时间点一一对应
  List<int>? values;

  SMHInternetTrafficInfoDatapoints();

  factory SMHInternetTrafficInfoDatapoints.fromJson(
          Map<String, dynamic> json) =>
      $SMHInternetTrafficInfoDatapointsFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHInternetTrafficInfoDatapointsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

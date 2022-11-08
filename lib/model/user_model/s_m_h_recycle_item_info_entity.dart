import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_recycle_item_info_entity.g.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_entity.dart';

@JsonSerializable()
class SMHRecycleItemInfoEntity {
  /// name: 字符串，文件名称；
  String? name;

  /// type: 字符串，文件类型；
  SMHFileType? type;

  /// removalPerson: 删除人昵称；
  String? removalPerson;

  /// creationPerson: 创建人昵称；
  String? creationPerson;

  /// size: 字符串，文件大小；
  String? size;

  /// removalTime: 日期字符串，删除时间；
  String? removalTime;

  /// remainingTime: 数字，剩余时间；
  String? remainingTime;

  /// path: 数组，文件路径；
  List<String>? path;

  /// spaceTag: 字符串，空间 tag；
  SMHSpaceTag? spaceTag;
  SMHFileDetailContentsTeam? team;

  /// virusAuditStatus: 整数，文件查毒状态
  ///   0 未检测 （文件夹不标记可疑状态，一直为0）
  ///   1 检测中
  ///   2 无风险
  ///   3 风险文件
  ///   4 无法检测 （比如文件太大超过可检测范围，端侧当无风险处理）（超1G不检）
  ///   5 人为标记为无风险
  ///   6 检测任务失败
  SMHVirusAuditStatus? virusAuditStatus;

  /// virusName: 字符串，病毒名称，为unkonw表示未知；
  String? virusName;

  bool? canMarkAsNonVirus;

  SMHRecycleItemInfoEntity();

  factory SMHRecycleItemInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHRecycleItemInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHRecycleItemInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

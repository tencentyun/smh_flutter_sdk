import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_user_directory_detail_info_entity.g.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

import '../api_model/s_m_h_directory_detail_entity.dart';

@JsonSerializable()
class SMHUserDirectoryDetailInfoEntity {
  String? organizationName;

  /// creationPerson: 创建人昵称；
  String? creationPerson;

  /// team: 所属团队信息，非必返，和 group、user 三选一返回
  SMHFileDetailTeam? team;

  /// group：所属群组信息，非必返，和 team、user 三选一返回
  SMHFileDetailGroup? group;

  /// user：所属个人空间信息，非必返，和 group、team 三选一返回
  SMHFileDetailUser? user;

  /// spaceTag: 字符串，personal | team | group；
  SMHSpaceTag? spaceTag;

  /// name: 字符串，文件名称；
  String? name;

  /// type: 字符串，文件类型；
  SMHFileType? type;

  /// creationTime: 日期字符串，创建时间；
  String? creationTime;

  /// modificationTime: 日期字符串，修改时间；
  String? modificationTime;

  /// size: 字符串，文件大小；
  String? size;

  /// path: 字符串数组，文件路径；
  List<String>? path;

  /// fileType: 字符串，文件类型：excel、powerpoint 等；
  SMHFileType? fileType;

  /// previewByDoc: 布尔值，是否可通过 wps 预览；
  bool? previewByDoc;

  /// previewByCI: 布尔值，是否可通过万象预览；
  bool? previewByCI;

  /// previewAsIcon: 布尔值，是否可用预览图做 icon；
  bool? previewAsIcon;

  /// authorityList:允许操作的权限；
  SMHAuthorityRoleItemEntity? authorityList;
  List<SMHFileDetailContentsTagList>? tagList;

  /// localSync: 如果是同步盘 or 同步盘的子文件目录，返回该字段
  SMHDirectoryDetailLocalSync? localSync;
  bool? isAuthorized;

  /// inDirectory 布尔型，是否在企业空间、群组空间、个人空间中
  bool? inDirectory;

  /// inRecycledDirectory 布尔型，是否在回收站中
  bool? inRecycledDirectory;

  /// virusAuditStatus: 0-6 查毒状态
  ///   0 未检测 （文件夹不标记可疑状态，一直为0）
  ///   1 检测中
  ///   2 无风险
  ///   3 风险文件
  ///   4 无法检测 （比如文件太大超过可检测范围，端侧当无风险处理）（超1G不检）
  ///   5 人为标记为无风险
  ///   6 检测任务失败
  SMHVirusAuditStatus? virusAuditStatus;

  /// virusName: 字符串，病毒名称，virusAuditStatus为3时返回
  String? virusName;

  /// canMarkAsNonVirus: 布尔值，是否有权限对可疑文件进行恢复或信任操作，virusAuditStatus为3时返回
  bool? canMarkAsNonVirus;

  SMHUserDirectoryDetailInfoEntity();

  factory SMHUserDirectoryDetailInfoEntity.fromJson(
          Map<String, dynamic> json) =>
      $SMHUserDirectoryDetailInfoEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHUserDirectoryDetailInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

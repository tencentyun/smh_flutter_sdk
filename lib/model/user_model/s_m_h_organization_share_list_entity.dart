import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_organization_share_list_entity.g.dart';

@JsonSerializable()
class SMHOrganizationShareListEntity {
  /// totalNum：整数，总数；
  int? totalNum;

  /// contents
  List<SMHOrganizationShareListContents>? contents;

  SMHOrganizationShareListEntity();

  factory SMHOrganizationShareListEntity.fromJson(Map<String, dynamic> json) =>
      $SMHOrganizationShareListEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHOrganizationShareListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHOrganizationShareListContents {
  /// id：整数，分享 ID
  int? id;

  /// name：整数，分享文件名称集合
  String? name;

  /// expireTime：日期字符串，过期时间
  String? expireTime;

  /// creationTime：日期字符串，创建时间
  String? creationTime;

  /// nickname：字符串，创建人昵称
  String? nickname;

  /// downloadCountUsed：已使用下载次数
  int? downloadCountUsed;

  /// previewCountUsed：已使用预览次数
  int? previewCountUsed;

  /// downloadCount：下载次数限制
  int? downloadCount;

  /// previewCount：预览次数限制
  int? previewCount;

  /// type：字符串，文件类型；混合文件：multi-file、文件：file、文件夹：dir；
  SMHFileType? type;

  /// fileType: 字符串，文件类型：excel、powerpoint 等；
  SMHFileType? fileType;

  /// previewByDoc: 布尔值，是否可通过 onlyoffice 预览；
  bool? previewByDoc;

  /// previewByCI: 布尔值，是否可通过万象预览；
  bool? previewByCI;

  /// previewAsIcon: 布尔值，是否可用预览图当做 icon；
  bool? previewAsIcon;

  /// disabled: 布尔值，是否被禁用；
  bool? disabled;

  SMHOrganizationShareListContents();

  factory SMHOrganizationShareListContents.fromJson(
          Map<String, dynamic> json) =>
      $SMHOrganizationShareListContentsFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHOrganizationShareListContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

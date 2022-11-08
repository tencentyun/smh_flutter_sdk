import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_share_list_entity.g.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';

/// 响应体字段说明：
@JsonSerializable()
class SMHShareListEntity {
  /// totalNum：整数，总数；
  int? totalNum;

  /// contents
  List<SMHShareListContents>? contents;

  SMHShareListEntity();

  factory SMHShareListEntity.fromJson(Map<String, dynamic> json) =>
      $SMHShareListEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHShareListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHShareListContents {
  /// id：整数，分享 ID
  int? id;

  /// name：字符串，分享文件名称集合
  String? name;

  /// expireTime：日期字符串，过期时间
  String? expireTime;

  /// creationTime：日期字符串，创建时间
  String? creationTime;

  /// extractionCode：提取码，如未设置则返回 null
  String? extractionCode;

  /// disabled: 布尔值，是否被禁用；
  bool? disabled;

  /// type：字符串，文件类型；混合文件：multi-file、文件：file、文件夹：dir；
  SMHFileType? type;

  /// size: 文件大小，分享单个文件才返回，文件夹不返回；
  String? size;

  /// previewCount：预览次数限制，如未设置则返回 null
  int? previewCount;

  /// previewCountUsed：已使用预览次数，如未设置则返回 null
  int? previewCountUsed;

  /// downloadCount：下载次数限制，如未设置则返回 null
  int? downloadCount;

  /// downloadCountUsed：已使用下载次数，如未设置则返回 null
  int? downloadCountUsed;

  /// canModify: 是否可在线编辑
  bool? canModify;

  /// canSaveToNetDisc: 是否可保存至网盘
  bool? canSaveToNetDisc;

  /// canDownload: 是否可下载
  bool? canDownload;

  /// canPreview: 是否可预览
  bool? canPreview;
  int? status;

  /// code: 字符串，分享 code
  String? code;

  /// authorityList: 当前登录用户，对该文件的操作的权限；
  SMHAuthorityRoleItemEntity? authorityList;

  /// fileType: 字符串，文件类型：excel、powerpoint 等；
  SMHFileType? fileType;

  /// previewByDoc: 布尔值，是否可通过 onlyoffice 预览；
  bool? previewByDoc;

  /// previewByCI: 布尔值，是否可通过万象预览；
  bool? previewByCI;

  /// previewAsIcon: 布尔值，是否可用预览图当做 icon；
  bool? previewAsIcon;

  /// 布尔型，是否永久有效，可选参数，默认 false；
  bool? isPermanent;
  SMHShareListContents();

  factory SMHShareListContents.fromJson(Map<String, dynamic> json) =>
      $SMHShareListContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHShareListContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

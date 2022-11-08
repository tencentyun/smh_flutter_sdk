import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_authority_role_item_entity.g.dart';

@JsonSerializable()
class SMHAuthorityRoleItemEntity {
  /// id：整数，权限 ID;
  int? id;

  /// name: 字符串，权限名称；
  String? name;

  /// canView: 布尔值，可查看，非必返；
  bool? canView;

  /// canPreview: 布尔值，可预览，非必返；
  bool? canPreview;

  /// canDownload: 布尔值，可下载，非必返；
  bool? canDownload;

  /// canUpload: 布尔值，可上传，非必返；
  bool? canUpload;

  /// canDelete: 布尔值，可删除，非必返；
  bool? canDelete;

  /// canModify: 布尔值，可修改，非必返；
  bool? canModify;

  /// canAuthorize: 布尔值，可共享，非必返；
  bool? canAuthorize;

  /// canShare: 布尔值，可分享，非必返；
  bool? canShare;

  /// canPreviewSelf: 布尔值，上传者可预览，非必返；
  bool? canPreviewSelf;

  /// canDownloadSelf: 布尔值，上传者可下载，非必返；
  bool? canDownloadSelf;
  String? roleDesc;

  /// isDefault：布尔值，是否默认权限；
  bool? isDefault;

  /// isUsable 是否可为用户设置该角色
  bool? isUsable;

  /// isOwner：布尔值，是否为该权限的定义者；
  bool? isOwner;

  SMHAuthorityRoleItemEntity();

  factory SMHAuthorityRoleItemEntity.fromJson(Map<String, dynamic> json) =>
      $SMHAuthorityRoleItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHAuthorityRoleItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

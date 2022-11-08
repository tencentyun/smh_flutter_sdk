import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_group_detail_entity.g.dart';

@JsonSerializable()
class SMHGroupDetailEntity {
  /// id：整数，群组 ID；
  int? id;

  /// orgId: 整数，群组所属的组织 ID；
  int? orgId;

  /// name：字符串，团队名称；
  String? name;

  /// allowExternalUser：布尔值，群组是否可包含企业外部人员，可选参数，默认 false；
  bool? allowExternalUser;

  /// spaceId：字符串，群组的协作空间 ID；
  String? spaceId;

  /// userId：群主的用户 ID；
  String? userId;

  /// owner：群主信息
  SMHGroupDetailOwner? owner;

  /// fileCount：整数，群组协作空间内的文件数量；
  int? fileCount;

  /// userCount：整数，群组成员数量；
  int? userCount;

  /// isExternal：布尔值，是否属于当前登入企业，true - 外部群组，false - 企业内部群组；
  bool? isExternal;

  /// hasCrossOrgUser：布尔值，群组成员是否来自多个企业
  bool? hasCrossOrgUser;

  /// roleList：群组权限列表（源自群组所属企业的权限列表）
  List<SMHGroupDetailRoleList>? roleList;

  SMHGroupDetailEntity();

  factory SMHGroupDetailEntity.fromJson(Map<String, dynamic> json) =>
      $SMHGroupDetailEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHGroupDetailEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHGroupDetailOwner {
  /// id：整数，群主的用户 ID；
  int? id;

  /// orgId：整数，群主所属的组织 ID；
  int? orgId;

  /// nickname：字符串，群主昵称；
  String? nickname;

  /// avatar：字符串，群主头像链接；
  String? avatar;

  /// isExternal：布尔值，是否为当前登入企业的外部成员；
  bool? isExternal;

  SMHGroupDetailOwner();

  factory SMHGroupDetailOwner.fromJson(Map<String, dynamic> json) =>
      $SMHGroupDetailOwnerFromJson(json);

  Map<String, dynamic> toJson() => $SMHGroupDetailOwnerToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHGroupDetailRoleList {
  /// id：整数，权限 ID
  int? id;

  /// name：字符串，权限名称
  String? name;

  /// roleDesc：字符串，权限描述
  String? roleDesc;

  /// isDefault：布尔值，是否默认权限
  bool? isDefault;

  /// isUsable：布尔值，是否可为成员设置该权限
  bool? isUsable;

  SMHGroupDetailRoleList();

  factory SMHGroupDetailRoleList.fromJson(Map<String, dynamic> json) =>
      $SMHGroupDetailRoleListFromJson(json);

  Map<String, dynamic> toJson() => $SMHGroupDetailRoleListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

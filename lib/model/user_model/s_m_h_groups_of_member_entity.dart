import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_groups_of_member_entity.g.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';

@JsonSerializable()
class SMHGroupsOfMemberEntity {
  /// totalNum：整数，用户所在群组总数
  int? totalNum;
  int? page;
  int? pageSize;

  /// contents：群组列表
  List<SMHGroupsOfMemberContents>? contents;

  SMHGroupsOfMemberEntity();

  factory SMHGroupsOfMemberEntity.fromJson(Map<String, dynamic> json) =>
      $SMHGroupsOfMemberEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHGroupsOfMemberEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHGroupsOfMemberContents {
  /// id: 整数，群组 ID
  int? id;

  /// 组织id
  int? orgId;

  /// name: 字符串，群组名称
  String? name;

  /// allowExternalUser：布尔值，群组是否可包含企业外部人员，可选参数，默认 false；
  bool? allowExternalUser;

  /// spaceId: 字符串，群组协作空间 ID
  String? spaceId;

  /// groupRole: 字符串，本人在群组中的角色，owner | groupAdmin | user
  SMHGroupRole? groupRole;

  /// isExternal: 布尔值，是否为外部群组
  bool? isExternal;

  /// hasCrossOrgUser: 布尔值，群组是否包含外部用户
  bool? hasCrossOrgUser;

  /// userCount: 整数，群组用户数量；
  int? userCount;

  /// fileCount: 整数，群组内文件数量，仅当 WithFileCount = 1 时返回，非必返；
  int? fileCount;

  /// joinTime：日期字符串，加入群组的时间；
  String? joinTime;

  /// orgName: 字符串，群组所属组织名称
  String? orgName;

  /// orgEditionFlag: 字符串，群组所属组织类型 personal | team | enterprise
  String? orgEditionFlag;

  /// ownerId: 整数，群主用户 ID
  int? ownerId;

  /// ownerName: 字符串，群主昵称
  String? ownerName;

  /// users：群组前 6 个用户的信息，仅当 WithUsers = 1 时返回，非必返
  List<SMHGroupsOfMemberContentsUsers>? users;

  /// authorityList: 当前登录用户，对该文件的操作的权限，仅 WithDirectory = 1 时返回，非必返；
  SMHAuthorityRoleItemEntity? authorityList;

  /// directoryList: 群组文件目录列表（最多列出 6 个），仅当 WithDirectory = 1 时返回，非必返
  List<SMHGroupsOfMemberContentsDirectoryList>? directoryList;

  SMHGroupsOfMemberContents();

  factory SMHGroupsOfMemberContents.fromJson(Map<String, dynamic> json) =>
      $SMHGroupsOfMemberContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHGroupsOfMemberContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHGroupsOfMemberContentsUsers {
  /// id: 整数，用户 ID
  int? id;

  /// orgId: 整数，用户所在组织 ID,
  int? orgId;

  /// nickname: 字符串，用户昵称
  String? nickname;

  /// groupRole: 字符串，用户角色，owner | groupAdmin | user
  String? groupRole;

  /// enabled: 布尔值，用户是否已禁用
  bool? enabled;

  /// isExternal: 布尔值，用户是否为外部用户
  bool? isExternal;

  /// avatar: 字符串，用户头像链接
  String? avatar;

  SMHGroupsOfMemberContentsUsers();

  factory SMHGroupsOfMemberContentsUsers.fromJson(Map<String, dynamic> json) =>
      $SMHGroupsOfMemberContentsUsersFromJson(json);

  Map<String, dynamic> toJson() => $SMHGroupsOfMemberContentsUsersToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHGroupsOfMemberContentsDirectoryList {
  /// name: 字符串，文件名称；
  String? name;

  /// type: 字符串，文件类型 dir | file;
  SMHFileType? type;

  /// userId: 创建者 ID
  String? userId;

  /// userOrgId: 创建者组织 ID
  int? userOrgId;

  /// creationTime: 日期字符串，文件创建时间；
  String? creationTime;

  /// modificationTime: 日期字符串，文件更新时间；
  String? modificationTime;

  /// fileType: 字符串，文件类型：excel、powerpoint 等，仅 file 返回，非必返；
  SMHFileType? fileType;

  /// previewAsIcon: 布尔值，是否可用预览图当做 icon，仅 file 返回，非必返；
  bool? previewAsIcon;

  /// previewByCI: 布尔值，是否可通过万象预览，仅 file 返回，非必返；
  bool? previewByCI;

  /// previewByDoc: 布尔值，是否可通过 onlyoffice 预览，仅 file 返回，非必返；
  bool? previewByDoc;

  SMHGroupsOfMemberContentsDirectoryList();

  factory SMHGroupsOfMemberContentsDirectoryList.fromJson(
          Map<String, dynamic> json) =>
      $SMHGroupsOfMemberContentsDirectoryListFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHGroupsOfMemberContentsDirectoryListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

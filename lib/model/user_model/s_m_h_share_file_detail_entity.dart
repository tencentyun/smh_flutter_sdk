import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_share_file_detail_entity.g.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';

@JsonSerializable()
class SMHShareFileDetailEntity {
  /// id：整数，分享 ID；
  int? id;

  /// name：字符串，分享文件名称集合
  String? name;
  int? orgId;

  /// extractionCode：字符串，提取码
  String? extractionCode;

  /// linkToLatestVersion：布尔值，是否链接到最新版本
  bool? linkToLatestVersion;

  /// expireTime：日期字符串，过期时间
  String? expireTime;

  /// creationTime：日期字符串，创建时间
  String? creationTime;

  /// disabled：布尔值，是否被禁用

  bool? disabled;
  int? status;

  /// userId：数字，分享人 id
  String? userId;

  /// userNickname：字符串，分享人昵称
  String? userNickname;

  /// userAvatar：字符串，分享人头像
  String? userAvatar;
  bool? canModify;

  /// canPreview：布尔值，是否可预览
  bool? canPreview;

  /// canDownload：布尔值，是否可下载
  bool? canDownload;

  /// canSaveToNetDisc：布尔值，是否可保存到网盘
  bool? canSaveToNetDisc;
  int? previewCountUsed;
  int? downloadCountUsed;

  /// path：分享文件 path
  List<String>? path;

  /// size: 文件大小，分享单个文件才返回，文件夹不返回；
  String? size;
  SMHFileType? fileType;

  /// team: 所属团队信息，非必返，和 group、user 三选一返回
  SMHFileDetailTeam? team;
  SMHFileDetailGroup? group;

  SMHFileDetailUser? user;
  SMHSpaceTag? spaceTag;

  /// url：字符串，分享链接（已废弃），改为用户自行维护，如：拼接方式：https://{自定义域名}/web/share/{分享code}
  String? url;

  /// code: 分享 code；
  String? code;

  ///  布尔型，是否永久有效，可选参数，默认 false；
  bool? isPermanent;

  /// authorityList 允许操作的权限

  SMHAuthorityRoleItemEntity? authorityList;

  SMHShareFileDetailEntity();

  factory SMHShareFileDetailEntity.fromJson(Map<String, dynamic> json) =>
      $SMHShareFileDetailEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHShareFileDetailEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHFileDetailTeam {
  ///     id: 整数，团队 ID；
  int? id;

  ///     name：字符串，团队名称
  String? name;

  ///     spaceId：字符串，团队空间ID
  String? spaceId;

  ///     parentId：整数，父团队 ID；
  int? parentId;

  ///     orgId：整数，团队所属组织 ID；
  int? orgId;

  SMHFileDetailTeam();

  factory SMHFileDetailTeam.fromJson(Map<String, dynamic> json) =>
      $SMHFileDetailTeamFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileDetailTeamToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHFileDetailGroup {
  ///     id: 整数，群组 ID；
  int? id;

  ///     name：字符串，群组名称；
  String? name;

  ///     spaceId：字符串，群组空间ID
  String? spaceId;

  ///     orgId: 整数，群组所属组织 ID；
  int? orgId;

  SMHFileDetailGroup();

  factory SMHFileDetailGroup.fromJson(Map<String, dynamic> json) =>
      $SMHFileDetailGroupFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileDetailGroupToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHFileDetailUser {
  ///     id：整数，用户 ID；
  int? id;

  ///     name：字符串，用户昵称；
  String? name;

  ///     orgId：整数，用户所属组织 ID；
  int? orgId;

  ///     spaceId：字符串，群组空间ID
  String? spaceId;

  SMHFileDetailUser();

  factory SMHFileDetailUser.fromJson(Map<String, dynamic> json) =>
      $SMHFileDetailUserFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileDetailUserToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

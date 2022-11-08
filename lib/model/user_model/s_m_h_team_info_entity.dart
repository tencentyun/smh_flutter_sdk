import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_team_info_entity.g.dart';

@JsonSerializable()
class SMHTeamInfoEntity {
  /// id：整数，团队 ID；
  int? id;
  int? orgId;

  /// name：字符串，团队名称；
  String? name;

  /// parentId：整数，父团队 ID；
  int? parentId;

  /// spaceId：字符串，团队空间 ID；
  String? spaceId;

  /// defaultRoleId: 整数，默认角色 ID；
  int? defaultRoleId;

  /// userCount：整数，团队成员数量；
  int? userCount;

  /// recursiveUserCount：整数，递归团队成员数量，仅当 WithRecursiveUserCount = 1 时返回；
  int? recursiveUserCount;

  /// path：字符串数组，团队的层级目录，假设团层级为 T1/T2/T3，则 T3 的 path 为 ['T1','T2','T3']，仅当 WithPath = ture 时返回；
  List<String>? path;

  /// pathNodes：对象数组，团队层级目录对象，仅当 WithPath = 1 时返回；
  List<SMHTeamInfoPathNodes>? pathNodes;

  /// children：对象数组，子级团队列表；
  List<SMHTeamInfoChildren>? children;

  SMHTeamInfoEntity();

  factory SMHTeamInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHTeamInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHTeamInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHTeamInfoPathNodes {
  /// id：整数，团队 ID；
  int? id;

  /// name：字符串，团队名称；
  String? name;

  SMHTeamInfoPathNodes();

  factory SMHTeamInfoPathNodes.fromJson(Map<String, dynamic> json) =>
      $SMHTeamInfoPathNodesFromJson(json);

  Map<String, dynamic> toJson() => $SMHTeamInfoPathNodesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHTeamInfoChildren {
  /// id：整数，团队 ID；
  int? id;
  int? orgId;

  /// name：字符串，团队名称；
  String? name;

  /// parentId：整数，父团队 ID；
  int? parentId;

  /// spaceId：字符串，团队空间 ID；
  String? spaceId;

  /// recursiveUserCount：整数，递归团队成员数量，仅当 WithRecursiveUserCount = 1 时返回；
  int? recursiveUserCount;

  /// defaultRoleId: 整数，默认角色 ID；
  int? defaultRoleId;

  /// children: 对象数组，子级团队列表；
  List<SMHTeamInfoChildrenChildren>? children;

  /// userCount：整数，团队成员数量；
  int? userCount;

  SMHTeamInfoChildren();

  factory SMHTeamInfoChildren.fromJson(Map<String, dynamic> json) =>
      $SMHTeamInfoChildrenFromJson(json);

  Map<String, dynamic> toJson() => $SMHTeamInfoChildrenToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHTeamInfoChildrenChildren {
  /// id：整数，团队 ID；
  int? id;

  /// parentId：整数，父团队 ID；
  int? parentId;

  SMHTeamInfoChildrenChildren();

  factory SMHTeamInfoChildrenChildren.fromJson(Map<String, dynamic> json) =>
      $SMHTeamInfoChildrenChildrenFromJson(json);

  Map<String, dynamic> toJson() => $SMHTeamInfoChildrenChildrenToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

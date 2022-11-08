import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_search_team_result_entity.g.dart';

@JsonSerializable()
class SMHSearchTeamResultEntity {
  /// searchId: 搜索任务 ID，用于异步获取搜索结果；
  String? searchId;

  /// hasMore: 布尔型，是否有更多搜索结果；
  bool? hasMore;

  /// nextMarker: 用于获取后续页的分页标识，仅当 hasMore 为 true 时才返回该字段；
  String? nextMarker;

  /// contents: 第一页搜索结果，可能为空数组，有关异步搜索的说明请参阅【接口说明】；
  List<SMHSearchTeamResultContents>? contents;

  SMHSearchTeamResultEntity();

  factory SMHSearchTeamResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHSearchTeamResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHSearchTeamResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHSearchTeamResultContents {
  /// id：整数，团队 ID；
  int? id;

  /// name：字符串，团队名称；
  String? name;

  /// parentId：整数，父团队 ID；
  int? parentId;

  /// spaceId：字符串，团队空间 ID；
  String? spaceId;

  /// path：字符串数组，团队的层级目录，假设团层级为 T1/T2/T3，则 T3 的 path 为 ['T1','T2','T3']；
  List<String>? path;

  /// pathNodes：对象数组，团队层级目录对象；
  List<SMHSearchTeamResultContentsPathNodes>? pathNodes;

  /// hasChildren：布尔值，是否有子级团队，仅当 CheckChildren = true，才返回该字段；
  bool? hasChildren;

  /// userCount：整数，团队成员数量；
  int? userCount;

  SMHSearchTeamResultContents();

  factory SMHSearchTeamResultContents.fromJson(Map<String, dynamic> json) =>
      $SMHSearchTeamResultContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHSearchTeamResultContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHSearchTeamResultContentsPathNodes {
  String? name;
  int? id;

  SMHSearchTeamResultContentsPathNodes();

  factory SMHSearchTeamResultContentsPathNodes.fromJson(
          Map<String, dynamic> json) =>
      $SMHSearchTeamResultContentsPathNodesFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHSearchTeamResultContentsPathNodesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

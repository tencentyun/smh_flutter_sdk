import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_search_team_result_entity.dart';

SMHSearchTeamResultEntity $SMHSearchTeamResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHSearchTeamResultEntity sMHSearchTeamResultEntity =
      SMHSearchTeamResultEntity();
  final String? searchId = jsonConvert.convert<String>(json['searchId']);
  if (searchId != null) {
    sMHSearchTeamResultEntity.searchId = searchId;
  }
  final bool? hasMore = jsonConvert.convert<bool>(json['hasMore']);
  if (hasMore != null) {
    sMHSearchTeamResultEntity.hasMore = hasMore;
  }
  final String? nextMarker = jsonConvert.convert<String>(json['nextMarker']);
  if (nextMarker != null) {
    sMHSearchTeamResultEntity.nextMarker = nextMarker;
  }
  final List<SMHSearchTeamResultContents>? contents = jsonConvert
      .convertListNotNull<SMHSearchTeamResultContents>(json['contents']);
  if (contents != null) {
    sMHSearchTeamResultEntity.contents = contents;
  }
  return sMHSearchTeamResultEntity;
}

Map<String, dynamic> $SMHSearchTeamResultEntityToJson(
    SMHSearchTeamResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['searchId'] = entity.searchId;
  data['hasMore'] = entity.hasMore;
  data['nextMarker'] = entity.nextMarker;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHSearchTeamResultContents $SMHSearchTeamResultContentsFromJson(
    Map<String, dynamic> json) {
  final SMHSearchTeamResultContents sMHSearchTeamResultContents =
      SMHSearchTeamResultContents();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHSearchTeamResultContents.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHSearchTeamResultContents.name = name;
  }
  final int? parentId = jsonConvert.convert<int>(json['parentId']);
  if (parentId != null) {
    sMHSearchTeamResultContents.parentId = parentId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHSearchTeamResultContents.spaceId = spaceId;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHSearchTeamResultContents.path = path;
  }
  final List<SMHSearchTeamResultContentsPathNodes>? pathNodes =
      jsonConvert.convertListNotNull<SMHSearchTeamResultContentsPathNodes>(
          json['pathNodes']);
  if (pathNodes != null) {
    sMHSearchTeamResultContents.pathNodes = pathNodes;
  }
  final bool? hasChildren = jsonConvert.convert<bool>(json['hasChildren']);
  if (hasChildren != null) {
    sMHSearchTeamResultContents.hasChildren = hasChildren;
  }
  final int? userCount = jsonConvert.convert<int>(json['userCount']);
  if (userCount != null) {
    sMHSearchTeamResultContents.userCount = userCount;
  }
  return sMHSearchTeamResultContents;
}

Map<String, dynamic> $SMHSearchTeamResultContentsToJson(
    SMHSearchTeamResultContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['parentId'] = entity.parentId;
  data['spaceId'] = entity.spaceId;
  data['path'] = entity.path;
  data['pathNodes'] = entity.pathNodes?.map((v) => v.toJson()).toList();
  data['hasChildren'] = entity.hasChildren;
  data['userCount'] = entity.userCount;
  return data;
}

SMHSearchTeamResultContentsPathNodes
    $SMHSearchTeamResultContentsPathNodesFromJson(Map<String, dynamic> json) {
  final SMHSearchTeamResultContentsPathNodes
      sMHSearchTeamResultContentsPathNodes =
      SMHSearchTeamResultContentsPathNodes();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHSearchTeamResultContentsPathNodes.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHSearchTeamResultContentsPathNodes.id = id;
  }
  return sMHSearchTeamResultContentsPathNodes;
}

Map<String, dynamic> $SMHSearchTeamResultContentsPathNodesToJson(
    SMHSearchTeamResultContentsPathNodes entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['id'] = entity.id;
  return data;
}

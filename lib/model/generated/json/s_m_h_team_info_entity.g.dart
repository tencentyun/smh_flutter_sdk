import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_team_info_entity.dart';

SMHTeamInfoEntity $SMHTeamInfoEntityFromJson(Map<String, dynamic> json) {
  final SMHTeamInfoEntity sMHTeamInfoEntity = SMHTeamInfoEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHTeamInfoEntity.id = id;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHTeamInfoEntity.orgId = orgId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHTeamInfoEntity.name = name;
  }
  final int? parentId = jsonConvert.convert<int>(json['parentId']);
  if (parentId != null) {
    sMHTeamInfoEntity.parentId = parentId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHTeamInfoEntity.spaceId = spaceId;
  }
  final int? defaultRoleId = jsonConvert.convert<int>(json['defaultRoleId']);
  if (defaultRoleId != null) {
    sMHTeamInfoEntity.defaultRoleId = defaultRoleId;
  }
  final int? userCount = jsonConvert.convert<int>(json['userCount']);
  if (userCount != null) {
    sMHTeamInfoEntity.userCount = userCount;
  }
  final int? recursiveUserCount =
      jsonConvert.convert<int>(json['recursiveUserCount']);
  if (recursiveUserCount != null) {
    sMHTeamInfoEntity.recursiveUserCount = recursiveUserCount;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHTeamInfoEntity.path = path;
  }
  final List<SMHTeamInfoPathNodes>? pathNodes =
      jsonConvert.convertListNotNull<SMHTeamInfoPathNodes>(json['pathNodes']);
  if (pathNodes != null) {
    sMHTeamInfoEntity.pathNodes = pathNodes;
  }
  final List<SMHTeamInfoChildren>? children =
      jsonConvert.convertListNotNull<SMHTeamInfoChildren>(json['children']);
  if (children != null) {
    sMHTeamInfoEntity.children = children;
  }
  return sMHTeamInfoEntity;
}

Map<String, dynamic> $SMHTeamInfoEntityToJson(SMHTeamInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['orgId'] = entity.orgId;
  data['name'] = entity.name;
  data['parentId'] = entity.parentId;
  data['spaceId'] = entity.spaceId;
  data['defaultRoleId'] = entity.defaultRoleId;
  data['userCount'] = entity.userCount;
  data['recursiveUserCount'] = entity.recursiveUserCount;
  data['path'] = entity.path;
  data['pathNodes'] = entity.pathNodes?.map((v) => v.toJson()).toList();
  data['children'] = entity.children?.map((v) => v.toJson()).toList();
  return data;
}

SMHTeamInfoPathNodes $SMHTeamInfoPathNodesFromJson(Map<String, dynamic> json) {
  final SMHTeamInfoPathNodes sMHTeamInfoPathNodes = SMHTeamInfoPathNodes();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHTeamInfoPathNodes.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHTeamInfoPathNodes.name = name;
  }
  return sMHTeamInfoPathNodes;
}

Map<String, dynamic> $SMHTeamInfoPathNodesToJson(SMHTeamInfoPathNodes entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

SMHTeamInfoChildren $SMHTeamInfoChildrenFromJson(Map<String, dynamic> json) {
  final SMHTeamInfoChildren sMHTeamInfoChildren = SMHTeamInfoChildren();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHTeamInfoChildren.id = id;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHTeamInfoChildren.orgId = orgId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHTeamInfoChildren.name = name;
  }
  final int? parentId = jsonConvert.convert<int>(json['parentId']);
  if (parentId != null) {
    sMHTeamInfoChildren.parentId = parentId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHTeamInfoChildren.spaceId = spaceId;
  }
  final int? defaultRoleId = jsonConvert.convert<int>(json['defaultRoleId']);
  if (defaultRoleId != null) {
    sMHTeamInfoChildren.defaultRoleId = defaultRoleId;
  }
  final int? recursiveUserCount =
      jsonConvert.convert<int>(json['recursiveUserCount']);
  if (recursiveUserCount != null) {
    sMHTeamInfoChildren.recursiveUserCount = recursiveUserCount;
  }
  final List<SMHTeamInfoChildrenChildren>? children = jsonConvert
      .convertListNotNull<SMHTeamInfoChildrenChildren>(json['children']);
  if (children != null) {
    sMHTeamInfoChildren.children = children;
  }
  final int? userCount = jsonConvert.convert<int>(json['userCount']);
  if (userCount != null) {
    sMHTeamInfoChildren.userCount = userCount;
  }
  return sMHTeamInfoChildren;
}

Map<String, dynamic> $SMHTeamInfoChildrenToJson(SMHTeamInfoChildren entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['orgId'] = entity.orgId;
  data['name'] = entity.name;
  data['parentId'] = entity.parentId;
  data['spaceId'] = entity.spaceId;
  data['defaultRoleId'] = entity.defaultRoleId;
  data['recursiveUserCount'] = entity.recursiveUserCount;
  data['children'] = entity.children?.map((v) => v.toJson()).toList();
  data['userCount'] = entity.userCount;
  return data;
}

SMHTeamInfoChildrenChildren $SMHTeamInfoChildrenChildrenFromJson(
    Map<String, dynamic> json) {
  final SMHTeamInfoChildrenChildren sMHTeamInfoChildrenChildren =
      SMHTeamInfoChildrenChildren();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHTeamInfoChildrenChildren.id = id;
  }
  final int? parentId = jsonConvert.convert<int>(json['parentId']);
  if (parentId != null) {
    sMHTeamInfoChildrenChildren.parentId = parentId;
  }
  return sMHTeamInfoChildrenChildren;
}

Map<String, dynamic> $SMHTeamInfoChildrenChildrenToJson(
    SMHTeamInfoChildrenChildren entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['parentId'] = entity.parentId;
  return data;
}

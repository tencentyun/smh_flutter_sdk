import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_directory_detail_entity.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

SMHFileDetailEntity $SMHFileDetailEntityFromJson(Map<String, dynamic> json) {
  final SMHFileDetailEntity sMHFileDetailEntity = SMHFileDetailEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHFileDetailEntity.totalNum = totalNum;
  }
  final String? nextMarker = jsonConvert.convert<String>(json['nextMarker']);
  if (nextMarker != null) {
    sMHFileDetailEntity.nextMarker = nextMarker;
  }
  final List<SMHFileDetailContents>? contents =
      jsonConvert.convertListNotNull<SMHFileDetailContents>(json['contents']);
  if (contents != null) {
    sMHFileDetailEntity.contents = contents;
  }
  return sMHFileDetailEntity;
}

Map<String, dynamic> $SMHFileDetailEntityToJson(SMHFileDetailEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['nextMarker'] = entity.nextMarker;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHFileDetailContents $SMHFileDetailContentsFromJson(
    Map<String, dynamic> json) {
  final SMHFileDetailContents sMHFileDetailContents = SMHFileDetailContents();
  final String? organizationName =
      jsonConvert.convert<String>(json['organizationName']);
  if (organizationName != null) {
    sMHFileDetailContents.organizationName = organizationName;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHFileDetailContents.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHFileDetailContents.type = SMHFileType.byName(type);
  }
  final String? creationPerson =
      jsonConvert.convert<String>(json['creationPerson']);
  if (creationPerson != null) {
    sMHFileDetailContents.creationPerson = creationPerson;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHFileDetailContents.size = size;
  }
  final String? historySize = jsonConvert.convert<String>(json['historySize']);
  if (historySize != null) {
    sMHFileDetailContents.historySize = historySize;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHFileDetailContents.creationTime = creationTime;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHFileDetailContents.modificationTime = modificationTime;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHFileDetailContents.path = path;
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHFileDetailContents.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHFileDetailContents.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHFileDetailContents.previewAsIcon = previewAsIcon;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHFileDetailContents.fileType = SMHFileType.byName(fileType);
  }
  final String? spaceTag = jsonConvert.convert<String>(json['spaceTag']);
  if (spaceTag != null) {
    sMHFileDetailContents.spaceTag = SMHSpaceTag.values.byName(spaceTag);
  }
  final SMHFileDetailContentsTeam? team =
      jsonConvert.convert<SMHFileDetailContentsTeam>(json['team']);
  if (team != null) {
    sMHFileDetailContents.team = team;
  }
  final SMHFileDetailUser? user =
      jsonConvert.convert<SMHFileDetailUser>(json['user']);
  if (user != null) {
    sMHFileDetailContents.user = user;
  }
  final SMHFileDetailGroup? group =
      jsonConvert.convert<SMHFileDetailGroup>(json['group']);
  if (group != null) {
    sMHFileDetailContents.group = group;
  }
  final SMHDirectoryDetailLocalSync? localSync =
      jsonConvert.convert<SMHDirectoryDetailLocalSync>(json['localSync']);
  if (localSync != null) {
    sMHFileDetailContents.localSync = localSync;
  }
  final List<SMHFileDetailContentsTagList>? tagList = jsonConvert
      .convertListNotNull<SMHFileDetailContentsTagList>(json['tagList']);
  if (tagList != null) {
    sMHFileDetailContents.tagList = tagList;
  }
  return sMHFileDetailContents;
}

Map<String, dynamic> $SMHFileDetailContentsToJson(
    SMHFileDetailContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['organizationName'] = entity.organizationName;
  data['name'] = entity.name;
  data['type'] = entity.type?.name;
  data['creationPerson'] = entity.creationPerson;
  data['size'] = entity.size;
  data['historySize'] = entity.historySize;
  data['creationTime'] = entity.creationTime;
  data['modificationTime'] = entity.modificationTime;
  data['path'] = entity.path;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['canMarkAsNonVirus'] = entity.canMarkAsNonVirus;
  data['virusName'] = entity.virusName;
  data['fileType'] = entity.fileType?.name;
  data['spaceTag'] = entity.spaceTag?.name;
  data['team'] = entity.team?.toJson();
  data['user'] = entity.user?.toJson();
  data['group'] = entity.group?.toJson();
  data['localSync'] = entity.localSync?.toJson();
  data['tagList'] = entity.tagList?.map((v) => v.toJson()).toList();
  return data;
}

SMHFileDetailContentsTeam $SMHFileDetailContentsTeamFromJson(
    Map<String, dynamic> json) {
  final SMHFileDetailContentsTeam sMHFileDetailContentsTeam =
      SMHFileDetailContentsTeam();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHFileDetailContentsTeam.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHFileDetailContentsTeam.name = name;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHFileDetailContentsTeam.path = path;
  }
  return sMHFileDetailContentsTeam;
}

Map<String, dynamic> $SMHFileDetailContentsTeamToJson(
    SMHFileDetailContentsTeam entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['path'] = entity.path;
  return data;
}

SMHFileDetailContentsLocalSyncUser $SMHFileDetailContentsLocalSyncUserFromJson(
    Map<String, dynamic> json) {
  final SMHFileDetailContentsLocalSyncUser sMHFileDetailContentsLocalSyncUser =
      SMHFileDetailContentsLocalSyncUser();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHFileDetailContentsLocalSyncUser.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHFileDetailContentsLocalSyncUser.name = name;
  }
  return sMHFileDetailContentsLocalSyncUser;
}

Map<String, dynamic> $SMHFileDetailContentsLocalSyncUserToJson(
    SMHFileDetailContentsLocalSyncUser entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

SMHFileDetailContentsTagList $SMHFileDetailContentsTagListFromJson(
    Map<String, dynamic> json) {
  final SMHFileDetailContentsTagList sMHFileDetailContentsTagList =
      SMHFileDetailContentsTagList();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHFileDetailContentsTagList.id = id;
  }
  final String? tagName = jsonConvert.convert<String>(json['tagName']);
  if (tagName != null) {
    sMHFileDetailContentsTagList.tagName = tagName;
  }
  final int? tagType = jsonConvert.convert<int>(json['tagType']);
  if (tagType != null) {
    sMHFileDetailContentsTagList.tagType = tagType;
  }
  return sMHFileDetailContentsTagList;
}

Map<String, dynamic> $SMHFileDetailContentsTagListToJson(
    SMHFileDetailContentsTagList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['tagName'] = entity.tagName;
  data['tagType'] = entity.tagType;
  return data;
}

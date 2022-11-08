import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_recycle_items_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

SMHRecycleItemsEntity $SMHRecycleItemsEntityFromJson(
    Map<String, dynamic> json) {
  final SMHRecycleItemsEntity sMHRecycleItemsEntity = SMHRecycleItemsEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHRecycleItemsEntity.totalNum = totalNum;
  }
  final String? nextMarker = jsonConvert.convert<String>(json['nextMarker']);
  if (nextMarker != null) {
    sMHRecycleItemsEntity.nextMarker = nextMarker;
  }
  final List<SMHRecycleItemsContents>? contents =
      jsonConvert.convertListNotNull<SMHRecycleItemsContents>(json['contents']);
  if (contents != null) {
    sMHRecycleItemsEntity.contents = contents;
  }
  return sMHRecycleItemsEntity;
}

Map<String, dynamic> $SMHRecycleItemsEntityToJson(
    SMHRecycleItemsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['nextMarker'] = entity.nextMarker;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHRecycleItemsContents $SMHRecycleItemsContentsFromJson(
    Map<String, dynamic> json) {
  final SMHRecycleItemsContents sMHRecycleItemsContents =
      SMHRecycleItemsContents();
  final int? recycledItemId = jsonConvert.convert<int>(json['recycledItemId']);
  if (recycledItemId != null) {
    sMHRecycleItemsContents.recycledItemId = recycledItemId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHRecycleItemsContents.spaceId = spaceId;
  }
  final List<String>? originalPath =
      jsonConvert.convertListNotNull<String>(json['originalPath']);
  if (originalPath != null) {
    sMHRecycleItemsContents.originalPath = originalPath;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHRecycleItemsContents.size = size;
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHRecycleItemsContents.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHRecycleItemsContents.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHRecycleItemsContents.previewAsIcon = previewAsIcon;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHRecycleItemsContents.fileType = SMHFileType.byName(fileType);
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHRecycleItemsContents.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHRecycleItemsContents.type = SMHFileType.byName(type);
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHRecycleItemsContents.creationTime = creationTime;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHRecycleItemsContents.modificationTime = modificationTime;
  }
  final String? removalTime = jsonConvert.convert<String>(json['removalTime']);
  if (removalTime != null) {
    sMHRecycleItemsContents.removalTime = removalTime;
  }
  final int? remainingTime = jsonConvert.convert<int>(json['remainingTime']);
  if (remainingTime != null) {
    sMHRecycleItemsContents.remainingTime = remainingTime;
  }
  final bool? isOverRestoreTime =
      jsonConvert.convert<bool>(json['isOverRestoreTime']);
  if (isOverRestoreTime != null) {
    sMHRecycleItemsContents.isOverRestoreTime = isOverRestoreTime;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHRecycleItemsContents.authorityList = authorityList;
  }
  final String? removedByNickname =
      jsonConvert.convert<String>(json['removedByNickname']);
  if (removedByNickname != null) {
    sMHRecycleItemsContents.removedByNickname = removedByNickname;
  }
  final String? removedByAvatar =
      jsonConvert.convert<String>(json['removedByAvatar']);
  if (removedByAvatar != null) {
    sMHRecycleItemsContents.removedByAvatar = removedByAvatar;
  }
  final String? spaceTag = jsonConvert.convert<String>(json['spaceTag']);
  if (spaceTag != null) {
    sMHRecycleItemsContents.spaceTag = SMHSpaceTag.values.byName(spaceTag);
  }
  final SMHFileDetailTeam? team =
      jsonConvert.convert<SMHFileDetailTeam>(json['team']);
  if (team != null) {
    sMHRecycleItemsContents.team = team;
  }

  final SMHFileDetailUser? user =
      jsonConvert.convert<SMHFileDetailUser>(json['user']);
  if (user != null) {
    sMHRecycleItemsContents.user = user;
  }

  final SMHFileDetailGroup? group =
      jsonConvert.convert<SMHFileDetailGroup>(json['group']);
  if (group != null) {
    sMHRecycleItemsContents.group = group;
  }
  return sMHRecycleItemsContents;
}

Map<String, dynamic> $SMHRecycleItemsContentsToJson(
    SMHRecycleItemsContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['recycledItemId'] = entity.recycledItemId;
  data['spaceId'] = entity.spaceId;
  data['originalPath'] = entity.originalPath;
  data['size'] = entity.size;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['fileType'] = entity.fileType?.name;
  data['name'] = entity.name;
  data['type'] = entity.type?.name;
  data['creationTime'] = entity.creationTime;
  data['modificationTime'] = entity.modificationTime;
  data['removalTime'] = entity.removalTime;
  data['remainingTime'] = entity.remainingTime;
  data['isOverRestoreTime'] = entity.isOverRestoreTime;
  data['authorityList'] = entity.authorityList?.toJson();
  data['removedByNickname'] = entity.removedByNickname;
  data['removedByAvatar'] = entity.removedByAvatar;
  data['spaceTag'] = entity.spaceTag?.name;
  data['team'] = entity.team?.toJson();
  data['user'] = entity.user?.toJson();
  data['group'] = entity.group?.toJson();
  return data;
}

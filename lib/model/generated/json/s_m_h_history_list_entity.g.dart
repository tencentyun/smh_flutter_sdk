import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_history_list_entity.dart';

SMHHistoryListEntity $SMHHistoryListEntityFromJson(Map<String, dynamic> json) {
  final SMHHistoryListEntity sMHHistoryListEntity = SMHHistoryListEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHHistoryListEntity.totalNum = totalNum;
  }
  final List<SMHHistoryListContents>? contents =
      jsonConvert.convertListNotNull<SMHHistoryListContents>(json['contents']);
  if (contents != null) {
    sMHHistoryListEntity.contents = contents;
  }
  return sMHHistoryListEntity;
}

Map<String, dynamic> $SMHHistoryListEntityToJson(SMHHistoryListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHHistoryListContents $SMHHistoryListContentsFromJson(
    Map<String, dynamic> json) {
  final SMHHistoryListContents sMHHistoryListContents =
      SMHHistoryListContents();
  final int? createdBy = jsonConvert.convert<int>(json['createdBy']);
  if (createdBy != null) {
    sMHHistoryListContents.createdBy = createdBy;
  }
  final int? creationWay = jsonConvert.convert<int>(json['creationWay']);
  if (creationWay != null) {
    sMHHistoryListContents.creationWay = creationWay;
  }
  final int? createdUserId = jsonConvert.convert<int>(json['createdUserId']);
  if (createdUserId != null) {
    sMHHistoryListContents.createdUserId = createdUserId;
  }
  final String? createdUserNickname =
      jsonConvert.convert<String>(json['createdUserNickname']);
  if (createdUserNickname != null) {
    sMHHistoryListContents.createdUserNickname = createdUserNickname;
  }
  final String? createdUserAvatar =
      jsonConvert.convert<String>(json['createdUserAvatar']);
  if (createdUserAvatar != null) {
    sMHHistoryListContents.createdUserAvatar = createdUserAvatar;
  }
  final int? version = jsonConvert.convert<int>(json['version']);
  if (version != null) {
    sMHHistoryListContents.version = version;
  }

  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHHistoryListContents.id = id;
  }

  final bool? isLatestVersion =
      jsonConvert.convert<bool>(json['isLatestVersion']);
  if (isLatestVersion != null) {
    sMHHistoryListContents.isLatestVersion = isLatestVersion;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHHistoryListContents.name = name;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHHistoryListContents.size = size;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHHistoryListContents.creationTime = creationTime;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHHistoryListContents.authorityList = authorityList;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHHistoryListContents.path = path;
  }
  return sMHHistoryListContents;
}

Map<String, dynamic> $SMHHistoryListContentsToJson(
    SMHHistoryListContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['createdBy'] = entity.createdBy;
  data['creationWay'] = entity.creationWay;
  data['createdUserId'] = entity.createdUserId;
  data['createdUserNickname'] = entity.createdUserNickname;
  data['createdUserAvatar'] = entity.createdUserAvatar;
  data['version'] = entity.version;
  data['isLatestVersion'] = entity.isLatestVersion;
  data['name'] = entity.name;
  data['size'] = entity.size;
  data['creationTime'] = entity.creationTime;
  data['authorityList'] = entity.authorityList?.toJson();
  data['path'] = entity.path;
  return data;
}

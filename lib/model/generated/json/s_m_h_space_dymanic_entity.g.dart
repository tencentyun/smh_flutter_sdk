import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_space_dymanic_entity.dart';

SMHSpaceDymanicEntity $SMHSpaceDymanicEntityFromJson(
    Map<String, dynamic> json) {
  final SMHSpaceDymanicEntity sMHSpaceDymanicEntity = SMHSpaceDymanicEntity();
  final SMHSpaceDymanicTotal? total =
      jsonConvert.convert<SMHSpaceDymanicTotal>(json['total']);
  if (total != null) {
    sMHSpaceDymanicEntity.total = total;
  }
  final int? hitsCount = jsonConvert.convert<int>(json['hitsCount']);
  if (hitsCount != null) {
    sMHSpaceDymanicEntity.hitsCount = hitsCount;
  }
  final bool? hasMore = jsonConvert.convert<bool>(json['hasMore']);
  if (hasMore != null) {
    sMHSpaceDymanicEntity.hasMore = hasMore;
  }
  final bool? searchFinished =
      jsonConvert.convert<bool>(json['searchFinished']);
  if (searchFinished != null) {
    sMHSpaceDymanicEntity.searchFinished = searchFinished;
  }
  final bool? allResultCovered =
      jsonConvert.convert<bool>(json['allResultCovered']);
  if (allResultCovered != null) {
    sMHSpaceDymanicEntity.allResultCovered = allResultCovered;
  }
  final List<SMHSpaceDymanicContents>? contents =
      jsonConvert.convertListNotNull<SMHSpaceDymanicContents>(json['contents']);
  if (contents != null) {
    sMHSpaceDymanicEntity.contents = contents;
  }
  final SMHSpaceDymanicContentsList? lastHit =
      jsonConvert.convert<SMHSpaceDymanicContentsList>(json['lastHit']);
  if (lastHit != null) {
    sMHSpaceDymanicEntity.lastHit = lastHit;
  }
  final String? searchId = jsonConvert.convert<String>(json['searchId']);
  if (searchId != null) {
    sMHSpaceDymanicEntity.searchId = searchId;
  }
  return sMHSpaceDymanicEntity;
}

Map<String, dynamic> $SMHSpaceDymanicEntityToJson(
    SMHSpaceDymanicEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['total'] = entity.total?.toJson();
  data['hitsCount'] = entity.hitsCount;
  data['hasMore'] = entity.hasMore;
  data['searchFinished'] = entity.searchFinished;
  data['allResultCovered'] = entity.allResultCovered;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  data['lastHit'] = entity.lastHit?.toJson();
  data['searchId'] = entity.searchId;
  return data;
}

SMHSpaceDymanicTotal $SMHSpaceDymanicTotalFromJson(Map<String, dynamic> json) {
  final SMHSpaceDymanicTotal sMHSpaceDymanicTotal = SMHSpaceDymanicTotal();
  final int? value = jsonConvert.convert<int>(json['value']);
  if (value != null) {
    sMHSpaceDymanicTotal.value = value;
  }
  final String? relation = jsonConvert.convert<String>(json['relation']);
  if (relation != null) {
    sMHSpaceDymanicTotal.relation = relation;
  }
  return sMHSpaceDymanicTotal;
}

Map<String, dynamic> $SMHSpaceDymanicTotalToJson(SMHSpaceDymanicTotal entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['value'] = entity.value;
  data['relation'] = entity.relation;
  return data;
}

SMHSpaceDymanicContents $SMHSpaceDymanicContentsFromJson(
    Map<String, dynamic> json) {
  final SMHSpaceDymanicContents sMHSpaceDymanicContents =
      SMHSpaceDymanicContents();
  final String? date = jsonConvert.convert<String>(json['date']);
  if (date != null) {
    sMHSpaceDymanicContents.date = date;
  }
  final List<SMHSpaceDymanicContentsList>? list =
      jsonConvert.convertListNotNull<SMHSpaceDymanicContentsList>(json['list']);
  if (list != null) {
    sMHSpaceDymanicContents.list = list;
  }
  return sMHSpaceDymanicContents;
}

Map<String, dynamic> $SMHSpaceDymanicContentsToJson(
    SMHSpaceDymanicContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['date'] = entity.date;
  data['list'] = entity.list?.map((v) => v.toJson()).toList();
  return data;
}

SMHSpaceDymanicContentsList $SMHSpaceDymanicContentsListFromJson(
    Map<String, dynamic> json) {
  final SMHSpaceDymanicContentsList sMHSpaceDymanicContentsList =
      SMHSpaceDymanicContentsList();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHSpaceDymanicContentsList.id = id;
  }
  final String? logType = jsonConvert.convert<String>(json['logType']);
  if (logType != null) {
    sMHSpaceDymanicContentsList.logType = SMHLoginType.values.byName(logType);
  }
  final String? operationTime =
      jsonConvert.convert<String>(json['operationTime']);
  if (operationTime != null) {
    sMHSpaceDymanicContentsList.operationTime = operationTime;
  }
  final String? action = jsonConvert.convert<String>(json['action']);
  if (action != null) {
    sMHSpaceDymanicContentsList.action = action;
  }
  final String? actionType = jsonConvert.convert<String>(json['actionType']);
  if (actionType != null) {
    sMHSpaceDymanicContentsList.actionType = actionType;
  }
  final String? libraryId = jsonConvert.convert<String>(json['libraryId']);
  if (libraryId != null) {
    sMHSpaceDymanicContentsList.libraryId = libraryId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHSpaceDymanicContentsList.spaceId = spaceId;
  }
  final String? spaceTag = jsonConvert.convert<String>(json['spaceTag']);
  if (spaceTag != null) {
    sMHSpaceDymanicContentsList.spaceTag = SMHSpaceTag.values.byName(spaceTag);
  }
  final String? operatorId = jsonConvert.convert<String>(json['operatorId']);
  if (operatorId != null) {
    sMHSpaceDymanicContentsList.operatorId = operatorId;
  }
  final String? operatorName =
      jsonConvert.convert<String>(json['operatorName']);
  if (operatorName != null) {
    sMHSpaceDymanicContentsList.operatorName = operatorName;
  }
  final String? operatorAvatar =
      jsonConvert.convert<String>(json['operatorAvatar']);
  if (operatorAvatar != null) {
    sMHSpaceDymanicContentsList.operatorAvatar = operatorAvatar;
  }
  final String? objectPath = jsonConvert.convert<String>(json['objectPath']);
  if (objectPath != null) {
    sMHSpaceDymanicContentsList.objectPath = objectPath;
  }
  final String? objectName = jsonConvert.convert<String>(json['objectName']);
  if (objectName != null) {
    sMHSpaceDymanicContentsList.objectName = objectName;
  }
  final String? details = jsonConvert.convert<String>(json['details']);
  if (details != null) {
    sMHSpaceDymanicContentsList.details = details;
  }
  final String? actionTypeDetail =
      jsonConvert.convert<String>(json['actionTypeDetail']);
  if (actionTypeDetail != null) {
    sMHSpaceDymanicContentsList.actionTypeDetail =
        SMHDymanicActionType.values.byName(actionTypeDetail);
  }
  final bool? isFile = jsonConvert.convert<bool>(json['isFile']);
  if (isFile != null) {
    sMHSpaceDymanicContentsList.isFile = isFile;
  }
  final String? toObjectName =
      jsonConvert.convert<String>(json['toObjectName']);
  if (toObjectName != null) {
    sMHSpaceDymanicContentsList.toObjectName = toObjectName;
  }
  final String? toObjectPath =
      jsonConvert.convert<String>(json['toObjectPath']);
  if (toObjectPath != null) {
    sMHSpaceDymanicContentsList.toObjectPath = toObjectPath;
  }
  final int? toParentId = jsonConvert.convert<int>(json['toParentId']);
  if (toParentId != null) {
    sMHSpaceDymanicContentsList.toParentId = toParentId;
  }
  final String? contentType = jsonConvert.convert<String>(json['contentType']);
  if (contentType != null) {
    sMHSpaceDymanicContentsList.contentType = contentType;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHSpaceDymanicContentsList.type = SMHFileType.byName(type);
  }
  final bool? isExist = jsonConvert.convert<bool>(json['isExist']);
  if (isExist != null) {
    sMHSpaceDymanicContentsList.isExist = isExist;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHSpaceDymanicContentsList.orgId = orgId;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHSpaceDymanicContentsList.fileType = SMHFileType.byName(fileType);
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHSpaceDymanicContentsList.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHSpaceDymanicContentsList.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHSpaceDymanicContentsList.previewAsIcon = previewAsIcon;
  }
  final SMHFileDetailGroup? group =
      jsonConvert.convert<SMHFileDetailGroup>(json['group']);
  if (group != null) {
    sMHSpaceDymanicContentsList.group = group;
  }
  final SMHFileDetailUser? user =
      jsonConvert.convert<SMHFileDetailUser>(json['user']);
  if (user != null) {
    sMHSpaceDymanicContentsList.user = user;
  }
  final SMHFileDetailTeam? team =
      jsonConvert.convert<SMHFileDetailTeam>(json['team']);
  if (team != null) {
    sMHSpaceDymanicContentsList.team = team;
  }
  return sMHSpaceDymanicContentsList;
}

Map<String, dynamic> $SMHSpaceDymanicContentsListToJson(
    SMHSpaceDymanicContentsList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['logType'] = entity.logType?.name;
  data['operationTime'] = entity.operationTime;
  data['action'] = entity.action;
  data['actionType'] = entity.actionType;
  data['libraryId'] = entity.libraryId;
  data['spaceId'] = entity.spaceId;
  data['spaceTag'] = entity.spaceTag?.name;
  data['operatorId'] = entity.operatorId;
  data['operatorName'] = entity.operatorName;
  data['operatorAvatar'] = entity.operatorAvatar;
  data['objectPath'] = entity.objectPath;
  data['objectName'] = entity.objectName;
  data['details'] = entity.details;
  data['actionTypeDetail'] = entity.actionTypeDetail?.name;
  data['isFile'] = entity.isFile;
  data['toObjectName'] = entity.toObjectName;
  data['toObjectPath'] = entity.toObjectPath;
  data['toParentId'] = entity.toParentId;
  data['contentType'] = entity.contentType;
  data['type'] = entity.type?.name;
  data['isExist'] = entity.isExist;
  data['orgId'] = entity.orgId;
  data['fileType'] = entity.fileType?.name;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['group'] = entity.group?.toJson();
  data['user'] = entity.user?.toJson();
  data['team'] = entity.team?.toJson();
  return data;
}

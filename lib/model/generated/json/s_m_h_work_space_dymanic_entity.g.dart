import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_work_space_dymanic_entity.dart';

SMHWorkSpaceDymanicEntity $SMHWorkSpaceDymanicEntityFromJson(
    Map<String, dynamic> json) {
  final SMHWorkSpaceDymanicEntity sMHWorkSpaceDymanicEntity =
      SMHWorkSpaceDymanicEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHWorkSpaceDymanicEntity.totalNum = totalNum;
  }
  final List<SMHWorkSpaceDymanicContents>? contents = jsonConvert
      .convertListNotNull<SMHWorkSpaceDymanicContents>(json['contents']);
  if (contents != null) {
    sMHWorkSpaceDymanicEntity.contents = contents;
  }
  return sMHWorkSpaceDymanicEntity;
}

Map<String, dynamic> $SMHWorkSpaceDymanicEntityToJson(
    SMHWorkSpaceDymanicEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHWorkSpaceDymanicContents $SMHWorkSpaceDymanicContentsFromJson(
    Map<String, dynamic> json) {
  final SMHWorkSpaceDymanicContents sMHWorkSpaceDymanicContents =
      SMHWorkSpaceDymanicContents();
  final String? date = jsonConvert.convert<String>(json['date']);
  if (date != null) {
    sMHWorkSpaceDymanicContents.date = date;
  }
  final List<SMHWorkSpaceDymanicContentsList>? list = jsonConvert
      .convertListNotNull<SMHWorkSpaceDymanicContentsList>(json['list']);
  if (list != null) {
    sMHWorkSpaceDymanicContents.list = list;
  }
  return sMHWorkSpaceDymanicContents;
}

Map<String, dynamic> $SMHWorkSpaceDymanicContentsToJson(
    SMHWorkSpaceDymanicContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['date'] = entity.date;
  data['list'] = entity.list?.map((v) => v.toJson()).toList();
  return data;
}

SMHWorkSpaceDymanicContentsList $SMHWorkSpaceDymanicContentsListFromJson(
    Map<String, dynamic> json) {
  final SMHWorkSpaceDymanicContentsList sMHWorkSpaceDymanicContentsList =
      SMHWorkSpaceDymanicContentsList();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHWorkSpaceDymanicContentsList.name = name;
  }
  final List<SMHWorkSpaceDymanicContentsListDetails>? details =
      jsonConvert.convertListNotNull<SMHWorkSpaceDymanicContentsListDetails>(
          json['details']);
  if (details != null) {
    sMHWorkSpaceDymanicContentsList.details = details;
  }
  return sMHWorkSpaceDymanicContentsList;
}

Map<String, dynamic> $SMHWorkSpaceDymanicContentsListToJson(
    SMHWorkSpaceDymanicContentsList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['details'] = entity.details?.map((v) => v.toJson()).toList();
  return data;
}

SMHWorkSpaceDymanicContentsListDetails
    $SMHWorkSpaceDymanicContentsListDetailsFromJson(Map<String, dynamic> json) {
  final SMHWorkSpaceDymanicContentsListDetails
      sMHWorkSpaceDymanicContentsListDetails =
      SMHWorkSpaceDymanicContentsListDetails();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHWorkSpaceDymanicContentsListDetails.id = id;
  }
  final String? logType = jsonConvert.convert<String>(json['logType']);
  if (logType != null) {
    sMHWorkSpaceDymanicContentsListDetails.logType =
        SMHLoginType.values.byName(logType);
  }
  final String? operationTime =
      jsonConvert.convert<String>(json['operationTime']);
  if (operationTime != null) {
    sMHWorkSpaceDymanicContentsListDetails.operationTime = operationTime;
  }
  final String? action = jsonConvert.convert<String>(json['action']);
  if (action != null) {
    sMHWorkSpaceDymanicContentsListDetails.action = action;
  }
  final String? actionType = jsonConvert.convert<String>(json['actionType']);
  if (actionType != null) {
    sMHWorkSpaceDymanicContentsListDetails.actionType =
        SMHActionType.values.byName(actionType);
  }
  final String? libraryId = jsonConvert.convert<String>(json['libraryId']);
  if (libraryId != null) {
    sMHWorkSpaceDymanicContentsListDetails.libraryId = libraryId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHWorkSpaceDymanicContentsListDetails.spaceId = spaceId;
  }
  final String? spaceTag = jsonConvert.convert<String>(json['spaceTag']);
  if (spaceTag != null) {
    sMHWorkSpaceDymanicContentsListDetails.spaceTag =
        SMHSpaceTag.values.byName(spaceTag);
  }
  final String? operatorId = jsonConvert.convert<String>(json['operatorId']);
  if (operatorId != null) {
    sMHWorkSpaceDymanicContentsListDetails.operatorId = operatorId;
  }
  final String? operatorName =
      jsonConvert.convert<String>(json['operatorName']);
  if (operatorName != null) {
    sMHWorkSpaceDymanicContentsListDetails.operatorName = operatorName;
  }
  final String? operatorAvatar =
      jsonConvert.convert<String>(json['operatorAvatar']);
  if (operatorAvatar != null) {
    sMHWorkSpaceDymanicContentsListDetails.operatorAvatar = operatorAvatar;
  }
  final String? objectPath = jsonConvert.convert<String>(json['objectPath']);
  if (objectPath != null) {
    sMHWorkSpaceDymanicContentsListDetails.objectPath = objectPath;
  }
  final String? objectName = jsonConvert.convert<String>(json['objectName']);
  if (objectName != null) {
    sMHWorkSpaceDymanicContentsListDetails.objectName = objectName;
  }
  final String? details = jsonConvert.convert<String>(json['details']);
  if (details != null) {
    sMHWorkSpaceDymanicContentsListDetails.details = details;
  }
  final String? actionTypeDetail =
      jsonConvert.convert<String>(json['actionTypeDetail']);
  if (actionTypeDetail != null) {
    sMHWorkSpaceDymanicContentsListDetails.actionTypeDetail =
        SMHDymanicActionType.values.byName(actionTypeDetail);
  }
  final bool? isFile = jsonConvert.convert<bool>(json['isFile']);
  if (isFile != null) {
    sMHWorkSpaceDymanicContentsListDetails.isFile = isFile;
  }
  final String? toObjectName =
      jsonConvert.convert<String>(json['toObjectName']);
  if (toObjectName != null) {
    sMHWorkSpaceDymanicContentsListDetails.toObjectName = toObjectName;
  }
  final String? toObjectPath =
      jsonConvert.convert<String>(json['toObjectPath']);
  if (toObjectPath != null) {
    sMHWorkSpaceDymanicContentsListDetails.toObjectPath = toObjectPath;
  }
  final int? toParentId = jsonConvert.convert<int>(json['toParentId']);
  if (toParentId != null) {
    sMHWorkSpaceDymanicContentsListDetails.toParentId = toParentId;
  }
  final String? contentType = jsonConvert.convert<String>(json['contentType']);
  if (contentType != null) {
    sMHWorkSpaceDymanicContentsListDetails.contentType = contentType;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHWorkSpaceDymanicContentsListDetails.type =
        SMHFileType.byName(type);
  }
  final bool? isExist = jsonConvert.convert<bool>(json['isExist']);
  if (isExist != null) {
    sMHWorkSpaceDymanicContentsListDetails.isExist = isExist;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHWorkSpaceDymanicContentsListDetails.orgId = orgId;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHWorkSpaceDymanicContentsListDetails.fileType =
        SMHFileType.byName(fileType);
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHWorkSpaceDymanicContentsListDetails.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHWorkSpaceDymanicContentsListDetails.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHWorkSpaceDymanicContentsListDetails.previewAsIcon = previewAsIcon;
  }
  final SMHFileDetailTeam? team =
      jsonConvert.convert<SMHFileDetailTeam>(json['team']);
  if (team != null) {
    sMHWorkSpaceDymanicContentsListDetails.team = team;
  }
  final SMHFileDetailGroup? group =
      jsonConvert.convert<SMHFileDetailGroup>(json['group']);
  if (group != null) {
    sMHWorkSpaceDymanicContentsListDetails.group = group;
  }
  final SMHFileDetailUser? user =
      jsonConvert.convert<SMHFileDetailUser>(json['user']);
  if (user != null) {
    sMHWorkSpaceDymanicContentsListDetails.user = user;
  }
  return sMHWorkSpaceDymanicContentsListDetails;
}

Map<String, dynamic> $SMHWorkSpaceDymanicContentsListDetailsToJson(
    SMHWorkSpaceDymanicContentsListDetails entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['logType'] = entity.logType?.name;
  data['operationTime'] = entity.operationTime;
  data['action'] = entity.action;
  data['actionType'] = entity.actionType?.name;
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
  data['team'] = entity.team?.toJson();
  data['group'] = entity.group?.toJson();
  data['user'] = entity.user?.toJson();
  return data;
}

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_message_list_entity.dart';

SMHMessageListEntity $SMHMessageListEntityFromJson(Map<String, dynamic> json) {
  final SMHMessageListEntity sMHMessageListEntity = SMHMessageListEntity();
  final int? unreadMessageNumber =
      jsonConvert.convert<int>(json['unreadMessageNumber']);
  if (unreadMessageNumber != null) {
    sMHMessageListEntity.unreadMessageNumber = unreadMessageNumber;
  }
  final int? unreadWarnMessageNumber =
      jsonConvert.convert<int>(json['unreadWarnMessageNumber']);
  if (unreadWarnMessageNumber != null) {
    sMHMessageListEntity.unreadWarnMessageNumber = unreadWarnMessageNumber;
  }
  final int? unreadSystemMessageNumber =
      jsonConvert.convert<int>(json['unreadSystemMessageNumber']);
  if (unreadSystemMessageNumber != null) {
    sMHMessageListEntity.unreadSystemMessageNumber = unreadSystemMessageNumber;
  }
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHMessageListEntity.totalNum = totalNum;
  }
  final List<SMHMessageListContents>? contents =
      jsonConvert.convertListNotNull<SMHMessageListContents>(json['contents']);
  if (contents != null) {
    sMHMessageListEntity.contents = contents;
  }
  return sMHMessageListEntity;
}

Map<String, dynamic> $SMHMessageListEntityToJson(SMHMessageListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['unreadMessageNumber'] = entity.unreadMessageNumber;
  data['unreadWarnMessageNumber'] = entity.unreadWarnMessageNumber;
  data['unreadSystemMessageNumber'] = entity.unreadSystemMessageNumber;
  data['totalNum'] = entity.totalNum;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHMessageListContents $SMHMessageListContentsFromJson(
    Map<String, dynamic> json) {
  final SMHMessageListContents sMHMessageListContents =
      SMHMessageListContents();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHMessageListContents.id = id;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    sMHMessageListContents.title = title;
  }
  final String? content = jsonConvert.convert<String>(json['content']);
  if (content != null) {
    sMHMessageListContents.content = content;
  }
  final String? notifiedBy = jsonConvert.convert<String>(json['notifiedBy']);
  if (notifiedBy != null) {
    sMHMessageListContents.notifiedBy = notifiedBy;
  }
  final String? notifiedByNickname =
      jsonConvert.convert<String>(json['notifiedByNickname']);
  if (notifiedByNickname != null) {
    sMHMessageListContents.notifiedByNickname = notifiedByNickname;
  }
  final String? notifiedByAvatar =
      jsonConvert.convert<String>(json['notifiedByAvatar']);
  if (notifiedByAvatar != null) {
    sMHMessageListContents.notifiedByAvatar = notifiedByAvatar;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    sMHMessageListContents.type = type;
  }
  final bool? hasRead = jsonConvert.convert<bool>(json['hasRead']);
  if (hasRead != null) {
    sMHMessageListContents.hasRead = hasRead;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHMessageListContents.creationTime = creationTime;
  }
  final String? messageAction =
      jsonConvert.convert<String>(json['messageAction']);
  if (messageAction != null) {
    sMHMessageListContents.messageAction =
        SMHMessageAction.values.byName(messageAction);
  }
  return sMHMessageListContents;
}

Map<String, dynamic> $SMHMessageListContentsToJson(
    SMHMessageListContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['title'] = entity.title;
  data['content'] = entity.content;
  data['messageAction'] = entity.messageAction?.name;
  data['notifiedBy'] = entity.notifiedBy;
  data['notifiedByNickname'] = entity.notifiedByNickname;
  data['notifiedByAvatar'] = entity.notifiedByAvatar;
  data['type'] = entity.type;
  data['hasRead'] = entity.hasRead;
  data['creationTime'] = entity.creationTime;
  data['messageAction'] = entity.messageAction;
  return data;
}

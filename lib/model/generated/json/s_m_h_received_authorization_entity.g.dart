import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_received_authorization_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

SMHReceivedAuthorizationEntity $SMHReceivedAuthorizationEntityFromJson(
    Map<String, dynamic> json) {
  final SMHReceivedAuthorizationEntity sMHReceivedAuthorizationEntity =
      SMHReceivedAuthorizationEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHReceivedAuthorizationEntity.totalNum = totalNum;
  }
  final List<SMHReceivedAuthorizationContents>? contents = jsonConvert
      .convertListNotNull<SMHReceivedAuthorizationContents>(json['contents']);
  if (contents != null) {
    sMHReceivedAuthorizationEntity.contents = contents;
  }
  return sMHReceivedAuthorizationEntity;
}

Map<String, dynamic> $SMHReceivedAuthorizationEntityToJson(
    SMHReceivedAuthorizationEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHReceivedAuthorizationContents $SMHReceivedAuthorizationContentsFromJson(
    Map<String, dynamic> json) {
  final SMHReceivedAuthorizationContents sMHReceivedAuthorizationContents =
      SMHReceivedAuthorizationContents();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHReceivedAuthorizationContents.id = id;
  }
  final String? libraryId = jsonConvert.convert<String>(json['libraryId']);
  if (libraryId != null) {
    sMHReceivedAuthorizationContents.libraryId = libraryId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHReceivedAuthorizationContents.name = name;
  }

  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHReceivedAuthorizationContents.spaceId = spaceId;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHReceivedAuthorizationContents.type =
        SMHFileType.byName(type);
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHReceivedAuthorizationContents.creationTime = creationTime;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHReceivedAuthorizationContents.modificationTime = modificationTime;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHReceivedAuthorizationContents.authorityList = authorityList;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHReceivedAuthorizationContents.path = path;
  }
  final SMHFileDetailUser? user =
      jsonConvert.convert<SMHFileDetailUser>(json['user']);
  if (user != null) {
    sMHReceivedAuthorizationContents.user = user;
  }
  final SMHFileDetailContentsTeam? team =
      jsonConvert.convert<SMHFileDetailContentsTeam>(json['team']);
  if (team != null) {
    sMHReceivedAuthorizationContents.team = team;
  }
  return sMHReceivedAuthorizationContents;
}

Map<String, dynamic> $SMHReceivedAuthorizationContentsToJson(
    SMHReceivedAuthorizationContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['libraryId'] = entity.libraryId;
  data['spaceId'] = entity.spaceId;
  data['type'] = entity.type?.name;
  data['creationTime'] = entity.creationTime;
  data['modificationTime'] = entity.modificationTime;
  data['authorityList'] = entity.authorityList?.toJson();
  data['path'] = entity.path;
  data['user'] = entity.user?.toJson();
  data['team'] = entity.team?.toJson();
  data['name'] = entity.name;
  return data;
}

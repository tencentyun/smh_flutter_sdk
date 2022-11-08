import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_all_members_entity.dart';

SMHGroupAllMembersEntity $SMHGroupAllMembersEntityFromJson(
    Map<String, dynamic> json) {
  final SMHGroupAllMembersEntity sMHGroupAllMembersEntity =
      SMHGroupAllMembersEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHGroupAllMembersEntity.totalNum = totalNum;
  }
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    sMHGroupAllMembersEntity.page = page;
  }
  final int? pageSize = jsonConvert.convert<int>(json['pageSize']);
  if (pageSize != null) {
    sMHGroupAllMembersEntity.pageSize = pageSize;
  }
  final List<SMHGroupAllMembersContents>? contents = jsonConvert
      .convertListNotNull<SMHGroupAllMembersContents>(json['contents']);
  if (contents != null) {
    sMHGroupAllMembersEntity.contents = contents;
  }
  return sMHGroupAllMembersEntity;
}

Map<String, dynamic> $SMHGroupAllMembersEntityToJson(
    SMHGroupAllMembersEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['page'] = entity.page;
  data['pageSize'] = entity.pageSize;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHGroupAllMembersContents $SMHGroupAllMembersContentsFromJson(
    Map<String, dynamic> json) {
  final SMHGroupAllMembersContents sMHGroupAllMembersContents =
      SMHGroupAllMembersContents();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHGroupAllMembersContents.id = id;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHGroupAllMembersContents.nickname = nickname;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    sMHGroupAllMembersContents.avatar = avatar;
  }
  final List<int>? teamIds =
      jsonConvert.convertListNotNull<int>(json['teamIds']);
  if (teamIds != null) {
    sMHGroupAllMembersContents.teamIds = teamIds;
  }
  return sMHGroupAllMembersContents;
}

Map<String, dynamic> $SMHGroupAllMembersContentsToJson(
    SMHGroupAllMembersContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['nickname'] = entity.nickname;
  data['avatar'] = entity.avatar;
  data['teamIds'] = entity.teamIds;
  return data;
}

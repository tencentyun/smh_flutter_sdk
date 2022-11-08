import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_all_team_member_entity.dart';

SMHAllTeamMemberEntity $SMHAllTeamMemberEntityFromJson(
    Map<String, dynamic> json) {
  final SMHAllTeamMemberEntity sMHAllTeamMemberEntity =
      SMHAllTeamMemberEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHAllTeamMemberEntity.totalNum = totalNum;
  }
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    sMHAllTeamMemberEntity.page = page;
  }
  final int? pageSize = jsonConvert.convert<int>(json['pageSize']);
  if (pageSize != null) {
    sMHAllTeamMemberEntity.pageSize = pageSize;
  }
  final List<SMHAllTeamMemberContents>? contents = jsonConvert
      .convertListNotNull<SMHAllTeamMemberContents>(json['contents']);
  if (contents != null) {
    sMHAllTeamMemberEntity.contents = contents;
  }
  return sMHAllTeamMemberEntity;
}

Map<String, dynamic> $SMHAllTeamMemberEntityToJson(
    SMHAllTeamMemberEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['page'] = entity.page;
  data['pageSize'] = entity.pageSize;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHAllTeamMemberContents $SMHAllTeamMemberContentsFromJson(
    Map<String, dynamic> json) {
  final SMHAllTeamMemberContents sMHAllTeamMemberContents =
      SMHAllTeamMemberContents();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHAllTeamMemberContents.id = id;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHAllTeamMemberContents.nickname = nickname;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    sMHAllTeamMemberContents.avatar = avatar;
  }
  final bool? inactive = jsonConvert.convert<bool>(json['inactive']);
  if (inactive != null) {
    sMHAllTeamMemberContents.inactive = inactive;
  }
  final List<int>? teamIds =
      jsonConvert.convertListNotNull<int>(json['teamIds']);
  if (teamIds != null) {
    sMHAllTeamMemberContents.teamIds = teamIds;
  }
  return sMHAllTeamMemberContents;
}

Map<String, dynamic> $SMHAllTeamMemberContentsToJson(
    SMHAllTeamMemberContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['nickname'] = entity.nickname;
  data['avatar'] = entity.avatar;
  data['teamIds'] = entity.teamIds;
  return data;
}

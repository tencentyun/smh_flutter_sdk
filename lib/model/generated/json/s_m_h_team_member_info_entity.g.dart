import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_team_member_info_entity.dart';

SMHTeamMemberInfoEntity $SMHTeamMemberInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHTeamMemberInfoEntity sMHTeamMemberInfoEntity =
      SMHTeamMemberInfoEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHTeamMemberInfoEntity.totalNum = totalNum;
  }
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    sMHTeamMemberInfoEntity.page = page;
  }
  final int? pageSize = jsonConvert.convert<int>(json['pageSize']);
  if (pageSize != null) {
    sMHTeamMemberInfoEntity.pageSize = pageSize;
  }
  final List<SMHTeamMemberInfoContents>? contents = jsonConvert
      .convertListNotNull<SMHTeamMemberInfoContents>(json['contents']);
  if (contents != null) {
    sMHTeamMemberInfoEntity.contents = contents;
  }
  return sMHTeamMemberInfoEntity;
}

Map<String, dynamic> $SMHTeamMemberInfoEntityToJson(
    SMHTeamMemberInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['page'] = entity.page;
  data['pageSize'] = entity.pageSize;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHTeamMemberInfoContents $SMHTeamMemberInfoContentsFromJson(
    Map<String, dynamic> json) {
  final SMHTeamMemberInfoContents sMHTeamMemberInfoContents =
      SMHTeamMemberInfoContents();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHTeamMemberInfoContents.id = id;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHTeamMemberInfoContents.orgId = orgId;
  }
  final String? countryCode = jsonConvert.convert<String>(json['countryCode']);
  if (countryCode != null) {
    sMHTeamMemberInfoContents.countryCode = countryCode;
  }
  final String? phoneNumber = jsonConvert.convert<String>(json['phoneNumber']);
  if (phoneNumber != null) {
    sMHTeamMemberInfoContents.phoneNumber = phoneNumber;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHTeamMemberInfoContents.nickname = nickname;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    sMHTeamMemberInfoContents.email = email;
  }
  final String? comment = jsonConvert.convert<String>(json['comment']);
  if (comment != null) {
    sMHTeamMemberInfoContents.comment = comment;
  }
  final bool? enabled = jsonConvert.convert<bool>(json['enabled']);
  if (enabled != null) {
    sMHTeamMemberInfoContents.enabled = enabled;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    sMHTeamMemberInfoContents.role = SMHAdminUserRole.values.byName(role);
  }
  final String? teamRole = jsonConvert.convert<String>(json['teamRole']);
  if (teamRole != null) {
    sMHTeamMemberInfoContents.teamRole =
        SMHTeamUserRole.values.byName(teamRole);
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    sMHTeamMemberInfoContents.avatar = avatar;
  }
  final bool? allowPersonalSpace =
      jsonConvert.convert<bool>(json['allowPersonalSpace']);
  if (allowPersonalSpace != null) {
    sMHTeamMemberInfoContents.allowPersonalSpace = allowPersonalSpace;
  }
  final String? capacity = jsonConvert.convert<String>(json['capacity']);
  if (capacity != null) {
    sMHTeamMemberInfoContents.capacity = capacity;
  }
  final String? availableSpace =
      jsonConvert.convert<String>(json['availableSpace']);
  if (availableSpace != null) {
    sMHTeamMemberInfoContents.availableSpace = availableSpace;
  }
  final int? teamRoleId = jsonConvert.convert<int>(json['teamRoleId']);
  if (teamRoleId != null) {
    sMHTeamMemberInfoContents.teamRoleId = teamRoleId;
  }
  final List<SMHTeamMemberInfoContentsTeams>? teams = jsonConvert
      .convertListNotNull<SMHTeamMemberInfoContentsTeams>(json['teams']);
  if (teams != null) {
    sMHTeamMemberInfoContents.teams = teams;
  }
  final List<int>? canManageTeams =
      jsonConvert.convertListNotNull<int>(json['canManageTeams']);
  if (canManageTeams != null) {
    sMHTeamMemberInfoContents.canManageTeams = canManageTeams;
  }
  return sMHTeamMemberInfoContents;
}

Map<String, dynamic> $SMHTeamMemberInfoContentsToJson(
    SMHTeamMemberInfoContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['orgId'] = entity.orgId;
  data['countryCode'] = entity.countryCode;
  data['phoneNumber'] = entity.phoneNumber;
  data['nickname'] = entity.nickname;
  data['email'] = entity.email;
  data['comment'] = entity.comment;
  data['enabled'] = entity.enabled;
  data['role'] = entity.role?.name;
  data['teamRole'] = entity.teamRole?.name;
  data['avatar'] = entity.avatar;
  data['allowPersonalSpace'] = entity.allowPersonalSpace;
  data['capacity'] = entity.capacity;
  data['availableSpace'] = entity.availableSpace;
  data['teamRoleId'] = entity.teamRoleId;
  data['teams'] = entity.teams?.map((v) => v.toJson()).toList();
  data['canManageTeams'] = entity.canManageTeams;
  return data;
}

SMHTeamMemberInfoContentsTeams $SMHTeamMemberInfoContentsTeamsFromJson(
    Map<String, dynamic> json) {
  final SMHTeamMemberInfoContentsTeams sMHTeamMemberInfoContentsTeams =
      SMHTeamMemberInfoContentsTeams();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHTeamMemberInfoContentsTeams.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHTeamMemberInfoContentsTeams.name = name;
  }
  return sMHTeamMemberInfoContentsTeams;
}

Map<String, dynamic> $SMHTeamMemberInfoContentsTeamsToJson(
    SMHTeamMemberInfoContentsTeams entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

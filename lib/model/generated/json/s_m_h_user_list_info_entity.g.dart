import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_list_info_entity.dart';

SMHUserListInfoEntity $SMHUserListInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHUserListInfoEntity sMHUserListInfoEntity = SMHUserListInfoEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHUserListInfoEntity.totalNum = totalNum;
  }
  final List<SMHUserListInfoContents>? contents =
      jsonConvert.convertListNotNull<SMHUserListInfoContents>(json['contents']);
  if (contents != null) {
    sMHUserListInfoEntity.contents = contents;
  }
  return sMHUserListInfoEntity;
}

Map<String, dynamic> $SMHUserListInfoEntityToJson(
    SMHUserListInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHUserListInfoContents $SMHUserListInfoContentsFromJson(
    Map<String, dynamic> json) {
  final SMHUserListInfoContents sMHUserListInfoContents =
      SMHUserListInfoContents();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHUserListInfoContents.id = id;
  }
  final String? countryCode = jsonConvert.convert<String>(json['countryCode']);
  if (countryCode != null) {
    sMHUserListInfoContents.countryCode = countryCode;
  }
  final String? phoneNumber = jsonConvert.convert<String>(json['phoneNumber']);
  if (phoneNumber != null) {
    sMHUserListInfoContents.phoneNumber = phoneNumber;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    sMHUserListInfoContents.email = email;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHUserListInfoContents.nickname = nickname;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    sMHUserListInfoContents.role = SMHAdminUserRole.values.byName(role);
  }
  final bool? inactive = jsonConvert.convert<bool>(json['inactive']);
  if (inactive != null) {
    sMHUserListInfoContents.inactive = inactive;
  }
  final bool? deregister = jsonConvert.convert<bool>(json['deregister']);
  if (deregister != null) {
    sMHUserListInfoContents.deregister = deregister;
  }
  final String? comment = jsonConvert.convert<String>(json['comment']);
  if (comment != null) {
    sMHUserListInfoContents.comment = comment;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    sMHUserListInfoContents.avatar = avatar;
  }
  final String? expireTime = jsonConvert.convert<String>(json['expireTime']);
  if (expireTime != null) {
    sMHUserListInfoContents.expireTime = expireTime;
  }
  final bool? enabled = jsonConvert.convert<bool>(json['enabled']);
  if (enabled != null) {
    sMHUserListInfoContents.enabled = enabled;
  }
  final int? teamRoleId = jsonConvert.convert<int>(json['teamRoleId']);
  if (teamRoleId != null) {
    sMHUserListInfoContents.teamRoleId = teamRoleId;
  }
  final bool? allowPersonalSpace =
      jsonConvert.convert<bool>(json['allowPersonalSpace']);
  if (allowPersonalSpace != null) {
    sMHUserListInfoContents.allowPersonalSpace = allowPersonalSpace;
  }
  final List<SMHUserListInfoContentsTeams>? teams = jsonConvert
      .convertListNotNull<SMHUserListInfoContentsTeams>(json['teams']);
  if (teams != null) {
    sMHUserListInfoContents.teams = teams;
  }
  final List<String>? canManageTeams =
      jsonConvert.convertListNotNull<String>(json['canManageTeams']);
  if (canManageTeams != null) {
    sMHUserListInfoContents.canManageTeams = canManageTeams;
  }
  final int? capacity = jsonConvert.convert<int>(json['capacity']);
  if (capacity != null) {
    sMHUserListInfoContents.capacity = capacity;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    sMHUserListInfoContents.size = size;
  }
  final int? availableSpace = jsonConvert.convert<int>(json['availableSpace']);
  if (availableSpace != null) {
    sMHUserListInfoContents.availableSpace = availableSpace;
  }
  return sMHUserListInfoContents;
}

Map<String, dynamic> $SMHUserListInfoContentsToJson(
    SMHUserListInfoContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['countryCode'] = entity.countryCode;
  data['phoneNumber'] = entity.phoneNumber;
  data['email'] = entity.email;
  data['nickname'] = entity.nickname;
  data['role'] = entity.role?.name;
  data['inactive'] = entity.inactive;
  data['deregister'] = entity.deregister;
  data['comment'] = entity.comment;
  data['avatar'] = entity.avatar;
  data['expireTime'] = entity.expireTime;
  data['enabled'] = entity.enabled;
  data['teamRoleId'] = entity.teamRoleId;
  data['allowPersonalSpace'] = entity.allowPersonalSpace;
  data['teams'] = entity.teams?.map((v) => v.toJson()).toList();
  data['canManageTeams'] = entity.canManageTeams;
  data['capacity'] = entity.capacity;
  data['size'] = entity.size;
  data['availableSpace'] = entity.availableSpace;
  return data;
}

SMHUserListInfoContentsTeams $SMHUserListInfoContentsTeamsFromJson(
    Map<String, dynamic> json) {
  final SMHUserListInfoContentsTeams sMHUserListInfoContentsTeams =
      SMHUserListInfoContentsTeams();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHUserListInfoContentsTeams.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHUserListInfoContentsTeams.name = name;
  }
  return sMHUserListInfoContentsTeams;
}

Map<String, dynamic> $SMHUserListInfoContentsTeamsToJson(
    SMHUserListInfoContentsTeams entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

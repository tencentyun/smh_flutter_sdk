import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_directory_authority_entity.dart';

SMHDirectoryAuthorityEntity $SMHDirectoryAuthorityEntityFromJson(
    Map<String, dynamic> json) {
  final SMHDirectoryAuthorityEntity sMHDirectoryAuthorityEntity =
      SMHDirectoryAuthorityEntity();
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHDirectoryAuthorityEntity.userId = userId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHDirectoryAuthorityEntity.name = name;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHDirectoryAuthorityEntity.spaceId = spaceId;
  }
  final int? roleId = jsonConvert.convert<int>(json['roleId']);
  if (roleId != null) {
    sMHDirectoryAuthorityEntity.roleId = roleId;
  }
  final int? tag = jsonConvert.convert<int>(json['tag']);
  if (tag != null) {
    sMHDirectoryAuthorityEntity.tag = tag;
  }
  final SMHDirectoryAuthorityUser? user =
      jsonConvert.convert<SMHDirectoryAuthorityUser>(json['user']);
  if (user != null) {
    sMHDirectoryAuthorityEntity.user = user;
  }
  final SMHDirectoryAuthorityTeam? team =
      jsonConvert.convert<SMHDirectoryAuthorityTeam>(json['team']);
  if (team != null) {
    sMHDirectoryAuthorityEntity.team = team;
  }
  return sMHDirectoryAuthorityEntity;
}

Map<String, dynamic> $SMHDirectoryAuthorityEntityToJson(
    SMHDirectoryAuthorityEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['userId'] = entity.userId;
  data['name'] = entity.name;
  data['spaceId'] = entity.spaceId;
  data['roleId'] = entity.roleId;
  data['tag'] = entity.tag;
  data['user'] = entity.user?.toJson();
  data['team'] = entity.team?.toJson();
  return data;
}

SMHDirectoryAuthorityUser $SMHDirectoryAuthorityUserFromJson(
    Map<String, dynamic> json) {
  final SMHDirectoryAuthorityUser sMHDirectoryAuthorityUser =
      SMHDirectoryAuthorityUser();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHDirectoryAuthorityUser.id = id;
  }
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHDirectoryAuthorityUser.orgId = orgId;
  }
  final String? countryCode = jsonConvert.convert<String>(json['countryCode']);
  if (countryCode != null) {
    sMHDirectoryAuthorityUser.countryCode = countryCode;
  }
  final String? phoneNumber = jsonConvert.convert<String>(json['phoneNumber']);
  if (phoneNumber != null) {
    sMHDirectoryAuthorityUser.phoneNumber = phoneNumber;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    sMHDirectoryAuthorityUser.email = email;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHDirectoryAuthorityUser.nickname = nickname;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    sMHDirectoryAuthorityUser.role = role;
  }
  final String? enabled = jsonConvert.convert<String>(json['enabled']);
  if (enabled != null) {
    sMHDirectoryAuthorityUser.enabled = enabled;
  }
  final String? comment = jsonConvert.convert<String>(json['comment']);
  if (comment != null) {
    sMHDirectoryAuthorityUser.comment = comment;
  }
  final String? allowPersonalSpace =
      jsonConvert.convert<String>(json['allowPersonalSpace']);
  if (allowPersonalSpace != null) {
    sMHDirectoryAuthorityUser.allowPersonalSpace = allowPersonalSpace;
  }
  final bool? deregister = jsonConvert.convert<bool>(json['deregister']);
  if (deregister != null) {
    sMHDirectoryAuthorityUser.deregister = deregister;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    sMHDirectoryAuthorityUser.avatar = avatar;
  }
  return sMHDirectoryAuthorityUser;
}

Map<String, dynamic> $SMHDirectoryAuthorityUserToJson(
    SMHDirectoryAuthorityUser entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['orgId'] = entity.orgId;
  data['countryCode'] = entity.countryCode;
  data['phoneNumber'] = entity.phoneNumber;
  data['email'] = entity.email;
  data['nickname'] = entity.nickname;
  data['role'] = entity.role;
  data['enabled'] = entity.enabled;
  data['comment'] = entity.comment;
  data['allowPersonalSpace'] = entity.allowPersonalSpace;
  data['deregister'] = entity.deregister;
  data['avatar'] = entity.avatar;
  return data;
}

SMHDirectoryAuthorityTeam $SMHDirectoryAuthorityTeamFromJson(
    Map<String, dynamic> json) {
  final SMHDirectoryAuthorityTeam sMHDirectoryAuthorityTeam =
      SMHDirectoryAuthorityTeam();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHDirectoryAuthorityTeam.id = id;
  }
  final int? parentId = jsonConvert.convert<int>(json['parentId']);
  if (parentId != null) {
    sMHDirectoryAuthorityTeam.parentId = parentId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHDirectoryAuthorityTeam.name = name;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHDirectoryAuthorityTeam.spaceId = spaceId;
  }
  final int? userCount = jsonConvert.convert<int>(json['userCount']);
  if (userCount != null) {
    sMHDirectoryAuthorityTeam.userCount = userCount;
  }
  return sMHDirectoryAuthorityTeam;
}

Map<String, dynamic> $SMHDirectoryAuthorityTeamToJson(
    SMHDirectoryAuthorityTeam entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['parentId'] = entity.parentId;
  data['name'] = entity.name;
  data['spaceId'] = entity.spaceId;
  data['userCount'] = entity.userCount;
  return data;
}

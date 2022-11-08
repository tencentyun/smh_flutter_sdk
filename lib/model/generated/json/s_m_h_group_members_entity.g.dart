import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_members_entity.dart';

SMHGroupMembersEntity $SMHGroupMembersEntityFromJson(
    Map<String, dynamic> json) {
  final SMHGroupMembersEntity sMHGroupMembersEntity = SMHGroupMembersEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHGroupMembersEntity.totalNum = totalNum;
  }
  final List<SMHGroupMembersContents>? contents =
      jsonConvert.convertListNotNull<SMHGroupMembersContents>(json['contents']);
  if (contents != null) {
    sMHGroupMembersEntity.contents = contents;
  }
  return sMHGroupMembersEntity;
}

Map<String, dynamic> $SMHGroupMembersEntityToJson(
    SMHGroupMembersEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHGroupMembersContents $SMHGroupMembersContentsFromJson(
    Map<String, dynamic> json) {
  final SMHGroupMembersContents sMHGroupMembersContents =
      SMHGroupMembersContents();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHGroupMembersContents.id = id;
  }
  final String? countryCode = jsonConvert.convert<String>(json['countryCode']);
  if (countryCode != null) {
    sMHGroupMembersContents.countryCode = countryCode;
  }
  final String? phoneNumber = jsonConvert.convert<String>(json['phoneNumber']);
  if (phoneNumber != null) {
    sMHGroupMembersContents.phoneNumber = phoneNumber;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    sMHGroupMembersContents.email = email;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHGroupMembersContents.nickname = nickname;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    sMHGroupMembersContents.role = SMHAdminUserRole.values.byName(role);
  }
  final String? groupRole = jsonConvert.convert<String>(json['groupRole']);
  if (groupRole != null) {
    sMHGroupMembersContents.groupRole = SMHGroupRole.values.byName(groupRole);
  }
  final String? comment = jsonConvert.convert<String>(json['comment']);
  if (comment != null) {
    sMHGroupMembersContents.comment = comment;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    sMHGroupMembersContents.avatar = avatar;
  }
  final String? expireTime = jsonConvert.convert<String>(json['expireTime']);
  if (expireTime != null) {
    sMHGroupMembersContents.expireTime = expireTime;
  }
  final int? authRoleId = jsonConvert.convert<int>(json['authRoleId']);
  if (authRoleId != null) {
    sMHGroupMembersContents.authRoleId = authRoleId;
  }
  final bool? enabled = jsonConvert.convert<bool>(json['enabled']);
  if (enabled != null) {
    sMHGroupMembersContents.enabled = enabled;
  }
  final bool? deregister = jsonConvert.convert<bool>(json['deregister']);
  if (deregister != null) {
    sMHGroupMembersContents.deregister = deregister;
  }
  return sMHGroupMembersContents;
}

Map<String, dynamic> $SMHGroupMembersContentsToJson(
    SMHGroupMembersContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['countryCode'] = entity.countryCode;
  data['phoneNumber'] = entity.phoneNumber;
  data['email'] = entity.email;
  data['nickname'] = entity.nickname;
  data['role'] = entity.role?.name;
  data['groupRole'] = entity.groupRole?.name;
  data['comment'] = entity.comment;
  data['avatar'] = entity.avatar;
  data['expireTime'] = entity.expireTime;
  data['authRoleId'] = entity.authRoleId;
  data['enabled'] = entity.enabled;
  data['deregister'] = entity.deregister;
  return data;
}

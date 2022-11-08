import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_person_info_entity.dart';

SMHPersonInfoEntity $SMHPersonInfoEntityFromJson(Map<String, dynamic> json) {
  final SMHPersonInfoEntity sMHPersonInfoEntity = SMHPersonInfoEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHPersonInfoEntity.id = id;
  }
  final int? lastSignedInOrgId =
      jsonConvert.convert<int>(json['lastSignedInOrgId']);
  if (lastSignedInOrgId != null) {
    sMHPersonInfoEntity.lastSignedInOrgId = lastSignedInOrgId;
  }
  final String? countryCode = jsonConvert.convert<String>(json['countryCode']);
  if (countryCode != null) {
    sMHPersonInfoEntity.countryCode = countryCode;
  }
  final String? phoneNumber = jsonConvert.convert<String>(json['phoneNumber']);
  if (phoneNumber != null) {
    sMHPersonInfoEntity.phoneNumber = phoneNumber;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHPersonInfoEntity.nickname = nickname;
  }
  final String? email = jsonConvert.convert<String>(json['email']);
  if (email != null) {
    sMHPersonInfoEntity.email = email;
  }
  final String? comment = jsonConvert.convert<String>(json['comment']);
  if (comment != null) {
    sMHPersonInfoEntity.comment = comment;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    sMHPersonInfoEntity.role = SMHAdminUserRole.values.byName(role);
  }
  final bool? deregister = jsonConvert.convert<bool>(json['deregister']);
  if (deregister != null) {
    sMHPersonInfoEntity.deregister = deregister;
  }
  final bool? enabled = jsonConvert.convert<bool>(json['enabled']);
  if (enabled != null) {
    sMHPersonInfoEntity.enabled = enabled;
  }
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    sMHPersonInfoEntity.avatar = avatar;
  }
  final String? expireTime = jsonConvert.convert<String>(json['expireTime']);
  if (expireTime != null) {
    sMHPersonInfoEntity.expireTime = expireTime;
  }
  final List<int>? canManageTeams =
      jsonConvert.convertListNotNull<int>(json['canManageTeams']);
  if (canManageTeams != null) {
    sMHPersonInfoEntity.canManageTeams = canManageTeams;
  }
  final SMHPersonInfoWechatUser? wechatUser =
      jsonConvert.convert<SMHPersonInfoWechatUser>(json['wechatUser']);
  if (wechatUser != null) {
    sMHPersonInfoEntity.wechatUser = wechatUser;
  }
  final SMHPersonInfoThirdPartyAuthList? thirdPartyAuthList = jsonConvert
      .convert<SMHPersonInfoThirdPartyAuthList>(json['thirdPartyAuthList']);
  if (thirdPartyAuthList != null) {
    sMHPersonInfoEntity.thirdPartyAuthList = thirdPartyAuthList;
  }
  final bool? isNewOrgUser = jsonConvert.convert<bool>(json['isNewOrgUser']);
  if (isNewOrgUser != null) {
    sMHPersonInfoEntity.isNewOrgUser = isNewOrgUser;
  }

  final bool? isFirstLogin = jsonConvert.convert<bool>(json['isFirstLogin']);
  if (isFirstLogin != null) {
    sMHPersonInfoEntity.isFirstLogin = isFirstLogin;
  }

  final bool? hasAppliedChannelOrg =
      jsonConvert.convert<bool>(json['hasAppliedChannelOrg']);
  if (hasAppliedChannelOrg != null) {
    sMHPersonInfoEntity.hasAppliedChannelOrg = hasAppliedChannelOrg;
  }

  return sMHPersonInfoEntity;
}

Map<String, dynamic> $SMHPersonInfoEntityToJson(SMHPersonInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['lastSignedInOrgId'] = entity.lastSignedInOrgId;
  data['countryCode'] = entity.countryCode;
  data['phoneNumber'] = entity.phoneNumber;
  data['nickname'] = entity.nickname;
  data['email'] = entity.email;
  data['comment'] = entity.comment;
  data['role'] = entity.role?.name;
  data['deregister'] = entity.deregister;
  data['enabled'] = entity.enabled;
  data['avatar'] = entity.avatar;
  data['expireTime'] = entity.expireTime;
  data['canManageTeams'] = entity.canManageTeams;
  data['wechatUser'] = entity.wechatUser?.toJson();
  data['thirdPartyAuthList'] = entity.thirdPartyAuthList?.toJson();
  data['isNewOrgUser'] = entity.isNewOrgUser;
  data['isFirstLogin'] = entity.isFirstLogin;
  data['hasAppliedChannelOrg'] = entity.hasAppliedChannelOrg;

  return data;
}

SMHPersonInfoWechatUser $SMHPersonInfoWechatUserFromJson(
    Map<String, dynamic> json) {
  final SMHPersonInfoWechatUser sMHPersonInfoWechatUser =
      SMHPersonInfoWechatUser();
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHPersonInfoWechatUser.nickname = nickname;
  }
  final String? headimgurl = jsonConvert.convert<String>(json['headimgurl']);
  if (headimgurl != null) {
    sMHPersonInfoWechatUser.headimgurl = headimgurl;
  }
  return sMHPersonInfoWechatUser;
}

Map<String, dynamic> $SMHPersonInfoWechatUserToJson(
    SMHPersonInfoWechatUser entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['nickname'] = entity.nickname;
  data['headimgurl'] = entity.headimgurl;
  return data;
}

SMHPersonInfoThirdPartyAuthList $SMHPersonInfoThirdPartyAuthListFromJson(
    Map<String, dynamic> json) {
  final SMHPersonInfoThirdPartyAuthList sMHPersonInfoThirdPartyAuthList =
      SMHPersonInfoThirdPartyAuthList();
  final bool? meeting = jsonConvert.convert<bool>(json['meeting']);
  if (meeting != null) {
    sMHPersonInfoThirdPartyAuthList.meeting = meeting;
  }
  final bool? wechat = jsonConvert.convert<bool>(json['wechat']);
  if (wechat != null) {
    sMHPersonInfoThirdPartyAuthList.wechat = wechat;
  }
  final bool? yufu = jsonConvert.convert<bool>(json['yufu']);
  if (yufu != null) {
    sMHPersonInfoThirdPartyAuthList.yufu = yufu;
  }
  return sMHPersonInfoThirdPartyAuthList;
}

Map<String, dynamic> $SMHPersonInfoThirdPartyAuthListToJson(
    SMHPersonInfoThirdPartyAuthList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['meeting'] = entity.meeting;
  data['wechat'] = entity.wechat;
  data['yufu'] = entity.yufu;
  return data;
}

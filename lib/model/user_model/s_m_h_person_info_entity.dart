import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_person_info_entity.g.dart';

@JsonSerializable()
class SMHPersonInfoEntity {
  /// id: 整数，用户 ID
  int? id;

  /// lastSignedInOrgId：整数，最近登录组织 ID
  int? lastSignedInOrgId;

  /// countryCode: 字符串，手机号国家码
  String? countryCode;

  /// phoneNumber: 字符串，手机号码
  String? phoneNumber;

  /// nickname: 字符串，昵称
  String? nickname;

  /// email: 字符串，邮箱
  String? email;

  /// comment: 字符串，备注
  String? comment;

  /// role: 字符串，用户角色，'superAdmin' | 'admin' | 'user'
  SMHAdminUserRole? role;

  /// isFirstLogin：布尔型，是否当前企业首次登录
  bool? isFirstLogin;

  /// hasAppliedChannelOrg: 布尔值，是否存在渠道对应的企业，当参数中有pf时才返回
  bool? hasAppliedChannelOrg;

  /// deregister: 布尔值，是否注销中
  bool? deregister;

  /// enabled: 布尔值，是否禁用
  bool? enabled;

  /// avatar: 字符串，用户头像链接
  String? avatar;

  /// expireTime: null 或日期字符串，用户待删除时间
  String? expireTime;

  /// canManageTeams: 能够管理的团队集合，只有 role = user 且是团队管理员时才返回
  List<int>? canManageTeams;

  /// isNewOrgUser: 是否机构新用户，加入企业 7 天之内属于新用户
  bool? isNewOrgUser;

  /// wechatUser
  SMHPersonInfoWechatUser? wechatUser;

  /// thirdPartyAuthList: 第三方应用绑定信息
  SMHPersonInfoThirdPartyAuthList? thirdPartyAuthList;

  SMHPersonInfoEntity();

  factory SMHPersonInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHPersonInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHPersonInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHPersonInfoWechatUser {
  /// nickname 微信昵称
  String? nickname;

  /// headimgurl 微信头像
  String? headimgurl;

  SMHPersonInfoWechatUser();

  factory SMHPersonInfoWechatUser.fromJson(Map<String, dynamic> json) =>
      $SMHPersonInfoWechatUserFromJson(json);

  Map<String, dynamic> toJson() => $SMHPersonInfoWechatUserToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHPersonInfoThirdPartyAuthList {
  /// meeting: 是否绑定腾讯会议账号
  bool? meeting;

  /// wechat：是否绑定微信
  bool? wechat;

  /// yufu: 是否绑定玉符
  bool? yufu;

  SMHPersonInfoThirdPartyAuthList();

  factory SMHPersonInfoThirdPartyAuthList.fromJson(Map<String, dynamic> json) =>
      $SMHPersonInfoThirdPartyAuthListFromJson(json);

  Map<String, dynamic> toJson() => $SMHPersonInfoThirdPartyAuthListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_invite_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_invite_code_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_join_invite_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_organization_invite_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

/// 邀请接口
class SMHUserInviteApis {
  static const String urlPrefix = 'v1/invite';

  /// 编辑邀请设置
  ///
  /// 接口说明
  ///
  /// 企业邀请参数仅超级管理员可编辑
  /// 群组邀请参数仅群主可编辑
  /// OrganizationId: 组织 ID，必选参数；
  /// Code: 邀请码，必选参数；
  /// UserToken: 用户访问令牌，必选参数；
  /// enabled: 布尔值，是否启用邀请，可选参数；
  /// expireTime：日期字符串，邀请码过期时间，可选参数；
  /// role：字符串，加入企业的用户角色，仅企业邀请适用，'user' | 'admin'，可选参数；
  static Future<SMHResponse?> updateGroupInviteInfo({
    required String organizationId,
    required String userToken,
    required String code,
    bool? enabled,
    String? expireTime,
    SMHUserRole? role,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> body = {};
    body.addKeyWithObject('enabled', enabled.toString());
    body.addKeyWithObject('expireTime', expireTime);
    body.addKeyWithObject('role', role?.name);

    return SMHPostRequest().request([urlPrefix, organizationId, 'edit', code],
        query: {'user_token': userToken},
        body: body,
        finishCallback: finishCallback);
  }

  /// 企业邀请参数仅超级管理员可编辑
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// Code: 邀请码，必选参数；
  /// UserToken: 用户访问令牌，必选参数；
  /// enabled: 布尔值，是否启用邀请，可选参数；
  /// expireTime：日期字符串，邀请码过期时间，可选参数；
  /// allowExternalUser：布尔值，是否允许企业外部人员加入，仅群组邀请适用，可选参数；
  /// groupRole：字符串，加入群组的用户角色，仅群组邀请适用，'user' | 'groupAdmin'，可选参数；
  /// authRoleId: 整数，加入群组时的默认权限（几个者），仅群组邀请适用，可选参数；
  static Future<SMHResponse?> updateOrganizationInviteInfo({
    required String organizationId,
    required String code,
    required String userToken,
    required SMHGroupRole groupRole,
    bool? enabled,
    String? expireTime,
    bool? allowExternalUser,
    int? authRoleId,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> body = {};
    body.addKeyWithObject('enabled', enabled.toString());
    body.addKeyWithObject('expireTime', expireTime);
    body.addKeyWithObject('allowExternalUser', allowExternalUser);
    body.addKeyWithObject('groupRole', groupRole.name);
    body.addKeyWithObject('authRoleId', authRoleId);

    return SMHPostRequest().request(
      [urlPrefix, organizationId, 'edit', code],
      query: {'user_token': userToken},
      body: body,
      finishCallback: finishCallback,
    );
  }

  /// 查询企业邀请码信息。
  ///
  /// OrganizationId: 组织 ID； 未登录则不传
  /// UserToken:若没有登录则不传；
  /// Code: 邀请码，必选参数；
  static Future<SMHResponse<SMHOrganizationInviteInfoEntity>?>
      getOrganizationInviteInfo({
    required String code,
    String? organizationId,
    String? userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    List<String> path = [urlPrefix];
    path.addObject(organizationId);
    path.addObject(code);
    return SMHGetRequest<SMHOrganizationInviteInfoEntity>().request(
      path,
      query: userToken != null ? {'user_token': userToken} : null,
      finishCallback: finishCallback,
    );
  }

  /// 查询组织邀请码信息。
  ///
  /// OrganizationId: 组织 ID；
  /// UserToken:若没有登录则不传；
  /// Code: 邀请码，必选参数；
  static Future<SMHResponse<SMHGroupInviteInfoEntity>?> getGroupInviteInfo({
    required String organizationId,
    required String code,
    String? userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHGroupInviteInfoEntity>().request(
      [urlPrefix, organizationId, code],
      query: userToken != null ? {'user_token': userToken} : null,
      finishCallback: finishCallback,
    );
  }

  /// 删除企业或群组的邀请码。
  /// 企业邀请参数仅超级管理员可删除
  /// 群组邀请参数仅群主可删除
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// Code: 邀请码，必选参数；
  /// UserToken: 用户访问令牌，必选参数；
  static Future<SMHResponse?> deleteInviteCode({
    required String organizationId,
    required String userToken,
    required String code,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHDeleteRequest().request([urlPrefix, organizationId, code],
        query: {'user_token': userToken}, finishCallback: finishCallback);
  }

  /// 接受加入企业邀请。
  ///
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// Code: 邀请码，必选参数；
  /// UserToken: 用户访问令牌，必选参数；
  static Future<SMHResponse<SMHJoinInviteResultEntity>?>
      joinOrganizationByInvite({
    required String organizationId,
    required String userToken,
    required String code,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest<SMHJoinInviteResultEntity>().request(
        [urlPrefix, organizationId, code, 'join-org'],
        query: {'user_token': userToken}, finishCallback: finishCallback);
  }

  /// 接受加入群组邀请。
  ///
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// Code: 邀请码，必选参数；
  /// UserToken: 用户访问令牌，必选参数；
  static Future<SMHResponse<SMHJoinInviteResultEntity>?> joinGroupByInvite({
    required String organizationId,
    required String userToken,
    required String code,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest<SMHJoinInviteResultEntity>().request(
        [urlPrefix, organizationId, code, 'join-group'],
        query: {'user_token': userToken}, finishCallback: finishCallback);
  }

  /// 查询当前企业邀请码。
  static Future<SMHResponse<SMHInviteCodeEntity>?> getOrganizationInviteCode({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHInviteCodeEntity>().request(
        [urlPrefix, organizationId, 'invite-to-org'],
        query: {'user_token': userToken}, finishCallback: finishCallback);
  }

  /// 查询当前群组邀请码。
  static Future<SMHResponse<SMHInviteCodeEntity>?> getGroupInviteCode({
    required String organizationId,
    required String userToken,
    required String groupId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHInviteCodeEntity>().request(
        [urlPrefix, organizationId, 'invite-to-group', groupId],
        query: {'user_token': userToken}, finishCallback: finishCallback);
  }

  /// 生成加入企业邀请码。
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 用户访问令牌，必选参数；
  /// role: 字符串，用户角色，'admin' | 'user'，可选参数，默认 'user'
  static Future<SMHResponse<SMHInviteCodeEntity>?>
      createOrganizationInviteCode({
    required String organizationId,
    required String userToken,
    SMHUserRole? role,
    SMHFinishCalBack? finishCallback,
  }) {
    if (role == null) {
      role = SMHUserRole.user;
    }
    return SMHPutRequest<SMHInviteCodeEntity>().request(
        [urlPrefix, organizationId, 'invite-to-org'],
        query: {'user_token': userToken},
        body: {'role': role.name},
        finishCallback: finishCallback);
  }

  /// 生成加入群组邀请码。
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 用户访问令牌，必选参数；
  /// groupId: 整数，群组 ID，必选参数；
  /// authRoleId: 加入时的默认权限（几个者），必选参数；
  /// allowExternalUser: 布尔值，是否允许企业外部用户加入，可选参数，默认 false；
  static Future<SMHResponse<SMHInviteCodeEntity>?> createGroupInviteCode({
    required String organizationId,
    required String userToken,
    required String groupId,
    required String authRoleId,
    bool? allowExternalUser,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> body = {'groupId': groupId, 'authRoleId': authRoleId};
    body.addKeyWithObject('allowExternalUser', allowExternalUser.toString());
    return SMHPutRequest<SMHInviteCodeEntity>().request(
        [urlPrefix, organizationId, 'invite-to-group'],
        query: {'user_token': userToken},
        body: body,
        finishCallback: finishCallback);
  }
}

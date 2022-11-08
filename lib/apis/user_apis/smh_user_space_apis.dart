import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_access_token_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_space_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_person_space_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_team_space_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

/// 空间操作接口
class SMHUserSpaceApis {
  static const urlPrefix = 'v1/space';
  static const urlPrefixQuota = 'v1/quota';

  /// 列出个人空间信息。
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse<SMHPersonSpaceEntity>?> getPersonSpace({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHPersonSpaceEntity>().request(
      [urlPrefix, organizationId],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 列出团队空间
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// TeamId: 团队 ID，必选参数
  static Future<SMHResponse<SMHTeamSpaceEntity>?> getTeamSpace({
    required String organizationId,
    required String userToken,
    required String teamId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHTeamSpaceEntity>().request(
        [urlPrefix, organizationId, 'team', teamId],
        query: {'user_token': userToken}, finishCallback: finishCallback);
  }

  /// 列出群组空间
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// groupId:  群组 ID，必选参数
  static Future<SMHResponse<SMHGroupSpaceEntity>?> getGroupSpace({
    required String organizationId,
    required String userToken,
    required String groupId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHGroupSpaceEntity>().request(
        [urlPrefix, organizationId, 'group', groupId],
        query: {'user_token': userToken}, finishCallback: finishCallback);
  }

  /// 获取个人空间信息和访问令牌
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// LocalSyncId: 本地同步任务 ID，客户端的同步任务需要传该字段，可选参数
  static Future<SMHResponse<SMHAccessTokenEntity>?> getUserInfoAndAccessToken({
    required String organizationId,
    required String userToken,
    String? localSyncId,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('user_token', userToken);
    query.addKeyWithObject('local_sync_id', localSyncId);
    return SMHPostRequest<SMHAccessTokenEntity>().request(
        [urlPrefix, organizationId, 'personal'],
        query: query, finishCallback: finishCallback);
  }

  /// 获取指定空间访问令牌
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// SpaceId: 空间 ID
  /// UserToken: 用户令牌，必选参数
  /// LocalSyncId: 本地同步任务 ID，客户端的同步任务需要传该字段，可选参数
  /// spaceOrgId: 整数，仅访问外部群组时需要填写该字段，可选参数；
  static Future<SMHResponse<SMHAccessTokenEntity>?> getSpaceAccessToken({
    required String organizationId,
    required String userToken,
    required String spaceId,
    String? spaceOrgId,
    String? localSyncId,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('user_token', userToken);
    query.addKeyWithObject('local_sync_id', localSyncId);
    return SMHPostRequest<SMHAccessTokenEntity>().request(
        [urlPrefix, organizationId, 'token', spaceId],
        query: query,
        body: {'spaceOrgId': spaceOrgId},
        finishCallback: finishCallback);
  }

  /// 设置个人空间容量。
  ///
  /// 权限要求：超级管理员或系统管理员
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// UserId: 用户 ID，必选参数
  /// capacity：配额的具体值，单位为字节（Byte），可以指定为数字形式或字符串形式，为了避免大数产生的精度损失，该字段指定为字符串形式；
  static Future<SMHResponse?> setupPersonSpaceSize({
    required String organizationId,
    required String userToken,
    required String userId,
    required String capacity,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
        [urlPrefixQuota, organizationId, 'personal', userId],
        query: {'user_token': userToken},
        body: {'capacity': capacity},
        finishCallback: finishCallback);
  }

  /// 设置团队空间容量。
  ///
  /// 权限要求：超级管理员或系统管理员
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// teamId: 团队 ID，必选参数
  /// capacity：配额的具体值，单位为字节（Byte），可以指定为数字形式或字符串形式，为了避免大数产生的精度损失，该字段指定为字符串形式；
  static Future<SMHResponse?> setupTeamSpaceSize({
    required String organizationId,
    required String userToken,
    required String teamId,
    required String capacity,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
        [urlPrefixQuota, organizationId, 'team', teamId],
        query: {'user_token': userToken},
        body: {'capacity': capacity},
        finishCallback: finishCallback);
  }
}

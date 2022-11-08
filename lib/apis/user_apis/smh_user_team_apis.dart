import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_member_authority_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_all_team_member_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_create_team_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_team_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_team_member_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

class SMHUserTeamApis {
  static const urlPrefix = 'v1/team';

  /// 创建团队。
  ///
  /// 权限要求：超级管理员或系统管理员
  /// name：字符串，团队名称，必选参数；
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// parentId: 整数，父级团队 id，一级团队可不填，可选参数；
  /// spaceQuotaSize: 字符串，团队空间配额，不设置则共享组织剩余可用配额，可选参数；
  /// defaultRoleId: 整数，默认角色 ID，可选参数；
  static Future<SMHResponse<SMHCreateTeamResultEntity>?> createTeam({
    required String organizationId,
    required String userToken,
    required String name,
    int? parentId,
    int? spaceQuotaSize,
    int? defaultRoleId,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> body = {};
    body.addKeyWithObject('name', name);
    body.addKeyWithObject('parentId', parentId);
    body.addKeyWithObject('spaceQuotaSize', spaceQuotaSize);
    body.addKeyWithObject('defaultRoleId', defaultRoleId);
    return SMHPutRequest<SMHCreateTeamResultEntity>().request(
      [urlPrefix, organizationId],
      query: {'user_token': userToken},
      body: body,
      finishCallback: finishCallback,
    );
  }

  /// 修改团队成员权限
  ///
  /// 权限要求：超级管理员或系统管理员或团队管理员；
  /// OrganizationId: 组织 ID，必选参数
  /// TeamId: team ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> updateMemberAuthority({
    required String organizationId,
    required String userToken,
    required String teamId,
    required List<SMHMemberAuthorityEntity> authorizeTo,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
        [urlPrefix, organizationId, teamId, 'user/authority'],
        query: {'user_token': userToken},
        body: {'authorizeTo': authorizeTo.map((e) => e.toJson()).toList()},
        finishCallback: finishCallback);
  }

  /// 删除团队
  ///
  /// 权限要求：超级管理员或系统管理员
  /// OrganizationId: 组织 ID，必选参数
  /// TeamId: 要删除的团队 ID，必选参数
  /// ToTeamId：将所删除团队的空间文件目录移交至另一个 team 空间，可选参数
  /// ToDirPath: 将所删除团队的空间文件目录移交至另一个 team 空间的目标文件夹，可选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> deleteTeam({
    required String organizationId,
    required String userToken,
    required String teamId,
    String? toTeamId,
    String? toDirPath,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('move_space_to_team', toTeamId);
    query.addKeyWithObject('move_space_to_dir', toDirPath);
    query.addKeyWithObject('user_token', userToken);
    return SMHDeleteRequest().request(
      [urlPrefix, organizationId, teamId],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 删除团队成员
  ///
  /// 权限要求：超级管理员或系统管理员
  /// OrganizationId: 组织 ID，必选参数
  /// TeamId: team ID，必选参数
  /// UserIds: 要添加的 user ID 列表，用逗号分隔，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> deleteTeamMember({
    required String organizationId,
    required String userToken,
    required String teamId,
    required List<String> userIds,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHDeleteRequest().request(
      [urlPrefix, organizationId, teamId, 'user', userIds.join(',')],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 删除团队管理员
  ///
  /// 权限要求：超级管理员或系统管理员
  /// OrganizationId: 组织 ID，必选参数
  /// TeamId: team ID，必选参数
  /// UserIds: 要添加的 user ID 列表，用逗号分隔，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> deleteTeamAdmin({
    required String organizationId,
    required String userToken,
    required String teamId,
    required List<String> userIds,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPutRequest().request(
        urlMethod: 'delete',
        [urlPrefix, organizationId, teamId, 'admin', userIds.join(',')],
        query: {'user_token': userToken},
        finishCallback: finishCallback);
  }

  /// 更新团队
  ///
  /// 要求权限：超级管理员或系统管理员；
  /// name：字符串，团队名称，必选参数；
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// TeamId: 团队 ID，必选参数
  /// defaultRoleId: 整数，默认角色 ID，可选参数；
  static Future<SMHResponse?> updateTeam({
    required String organizationId,
    required String userToken,
    required String teamId,
    required String name,
    int? defaultRoleId,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> body = {};
    body.addKeyWithObject('name', name);
    body.addKeyWithObject('defaultRoleId', defaultRoleId);
    return SMHPostRequest().request([urlPrefix, organizationId, teamId],
        query: {'user_token': userToken},
        body: body,
        finishCallback: finishCallback);
  }

  /// 查询团队
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// TeamId: 团队 ID，可选参数，不填则是查询根团队
  /// WithPath: 是否带 team path, 1 | 0，默认为 0，可选参数
  /// WithRecursiveUserCount: 是否递归统计所有团队以及子团队用户，1 | 0，默认为 0，可选参数
  /// UserToken: 用户令牌，必选参数
  /// check_permission: 如果 query 中带 check_permission，则会检查权限（管理员列出所有团队，普通用户仅列出所属团队），可选参数
  /// check_management_permission: 1 | 0 只展示当前用户能管理的团队（管理员列出所有团队，团队管理员列出能够管辖的团队，普通用户不列出团队），可选参数
  static Future<SMHResponse<SMHTeamInfoEntity>?> getTeamDetailInfo({
    required String organizationId,
    required String userToken,
    required bool checkPermission,
    String? teamId,
    bool? withPath = false,
    bool? withRecursiveUserCount = false,
    bool? checkManagementPermission = false,
    SMHFinishCalBack? finishCallback,
  }) {
    List<String> path = [urlPrefix, organizationId];
    if (teamId != null) {
      path.addObject(teamId);
    }
    Map<String, dynamic> query = {};
    query.addKeyWithObject('check_management_permission',
        checkManagementPermission?.smhToString());
    query.addKeyWithObject(
        'with_recursive_user_count', withRecursiveUserCount?.smhToString());
    query.addKeyWithObject('with_path', withPath?.smhToString());
    query.addKeyWithObject('user_token', userToken);
    return SMHGetRequest<SMHTeamInfoEntity>().request(
        urlMethod: checkPermission ? 'check_permission' : '',
        path,
        query: query,
        finishCallback: finishCallback);
  }

  /// 查询团队成员
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// TeamId: team ID
  /// WithSpaceUsage: 是否同时获取个人空间用量信息，1|0，默认 0；
  /// WithBelongingTeams: 是否同时获取用户所属的团队信息，1|0，默认 0；
  /// Keyword: 查询的手机号或昵称，如果不带 keyword 参数，则是查询组织下的所有用户
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// OrderBy: 排序方式，支持 role | enabled | nickname，默认 role;
  /// OrderByType: 排列顺序，正序或倒序 desc or asc；
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse<SMHTeamMemberInfoEntity>?> getTeamMemberInfo({
    required String organizationId,
    required String userToken,
    required String teamId,
    bool? withSpaceUsage = false,
    bool? withBelongingTeams = false,
    String? keyword,
    int page = 1,
    int pageSize = 20,
    String? marker,
    int? limit,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHMemberOrderBy orderBy = SMHMemberOrderBy.role,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject(
        'with_belonging_teams', withBelongingTeams?.smhToString());
    query.addKeyWithObject('with_space_usage', withSpaceUsage?.smhToString());
    query.addKeyWithObject('keyword', keyword);
    query.addKeyWithObject('user_token', userToken);
    query.addKeyWithObject('order_by', orderBy.name);
    query.addKeyWithObject('order_by_type', orderByType.name);
    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }
    return SMHGetRequest<SMHTeamMemberInfoEntity>().request(
      [urlPrefix, organizationId, teamId, 'user'],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 添加团队成员
  ///
  /// 权限要求：超级管理员或系统管理员或团队管理员；
  /// OrganizationId: 组织 ID，必选参数
  /// TeamId: team ID，必选参数
  /// UserIds: 要添加的 user ID 列表，用逗号分隔，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> addMemberToTeam({
    required String organizationId,
    required String userToken,
    required String teamId,
    required List<SMHMemberAuthorityEntity> authorizeTo,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPutRequest().request([
      urlPrefix,
      organizationId,
      teamId,
      'user',
      authorizeTo.map((e) => e.userId).join(',')
    ], query: {
      'user_token': userToken
    }, body: {
      'authorizeTo': authorizeTo.map((e) => e.toJson()).toList()
    }, finishCallback: finishCallback);
  }

  /// 添加团队管理员
  ///
  /// 权限要求：超级管理员或系统管理员或团队管理员；
  /// OrganizationId: 组织 ID，必选参数
  /// TeamId: team ID，必选参数
  /// UserIds: 要添加的 user ID 列表，用逗号分隔，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> addAdminToTeam({
    required String organizationId,
    required String userToken,
    required String teamId,
    required List<String> userIds,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPutRequest().request(
      [urlPrefix, organizationId, teamId, 'admin', userIds.join(',')],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 查询该团队及其所有子级团队的成员
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// TeamId: team ID
  /// Keyword: 查询的手机号或昵称，如果不带 keyword 参数，则是查询组织下的所有用户
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// OrderBy: 排序方式，支持 role | enabled | nickname，默认 role;
  /// OrderByType: 排列顺序，正序或倒序 desc or asc；
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse<SMHAllTeamMemberEntity>?> getAllTeamMemberInfo({
    required String organizationId,
    required String userToken,
    required String teamId,
    String? keyword,
    int? page = 1,
    int? pageSize = 20,
    String? marker,
    int? limit,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHMemberOrderBy orderBy = SMHMemberOrderBy.role,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('keyword', keyword);
    query.addKeyWithObject('user_token', userToken);
    query.addKeyWithObject('order_by', orderBy.name);
    query.addKeyWithObject('order_by_type', orderByType.name);
    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }
    return SMHGetRequest<SMHAllTeamMemberEntity>().request(
      [urlPrefix, organizationId, teamId, 'recursive-user'],
      query: query,
      finishCallback: finishCallback,
    );
  }
}

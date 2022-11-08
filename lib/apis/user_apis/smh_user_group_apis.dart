import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_group_member_info_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_group_member_item_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_group_user_authrole_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_create_group_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_all_members_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_members_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_groups_of_member_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_create_group_count_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

class SMHUserGroupApis {
  static const String urlPrefix = "v1/group";
  static const String urlPrefixTeam = "v1/team";

  /// 修改群组成员权限或角色
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// GroupId: 群组 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> updateGroupMemberAuthRole({
    required String organizationId,
    required String userToken,
    required String groupId,
    required List<SMHGroupMemberItemEntity> users,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, organizationId, groupId],
      query: {'user_token': userToken},
      body: {'users': users.map((e) => e.toJson()).toList()},
      finishCallback: finishCallback,
    );
  }

  /// 列出用户所在群组
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// CheckUpdateRecursively: 文件夹更新时间是否递归所有子节点，1 - 递归所有子节点，0 - 不递归所有子节点 ，默认 0，可选参数
  /// WithUsers: 是否列出群组内前 5 个成员，1 - 列出，0- 不列出，默认不列出，可选参数
  /// WithDirectory: 是否列出群组内空间，1 - 列出，0- 不列出，默认不列出，可选参数
  /// WithFileCount: 是否列出群组空间文件数量，1 - 列出，0- 不列出，默认不列出，可选参数
  /// AdminOnly: 是否过滤管理员权限，1 - 仅 owner 或 groupAdmin，0- 不过滤管理员权限，默认不过滤，可选参数
  /// OrderBy: 排序方式，支持 creationTime | joinTime，默认 creationTime，可选参数
  /// OrderByType: 排列顺序，正序或倒序 desc or asc，默认 desc，可选参数
  /// JoinType: 发起类型，own - 我发起的；join - 我加入的；all - 所有类型，默认所有类型，可选参数
  /// joinTimeStart: ISO 8601格式的日期字符串，最早加入时间，可选参数
  /// joinTimeEnd: ISO 8601格式的日期字符串，最晚加入时间，可选参数
  static Future<SMHResponse<SMHGroupsOfMemberEntity>?> listGroupsOfMember({
    required String organizationId,
    required String userToken,
    bool? checkUpdateRecursively = false,
    bool? withUsers = false,
    bool? withDirectory = false,
    bool? withFileCount = false,
    bool? adminOnly = false,
    SMHOrderBy orderBy = SMHOrderBy.creationTime,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHJoinType joinType = SMHJoinType.all,
    String? joinTimeStart,
    String? joinTimeEnd,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('user_token', userToken);
    query.addKeyWithObject('with_users', withUsers?.smhToString());
    query.addKeyWithObject('with_directory', withDirectory?.smhToString());
    query.addKeyWithObject(
        'check_update_recursively', checkUpdateRecursively?.smhToString());
    query.addKeyWithObject('with_file_count', withFileCount?.smhToString());
    query.addKeyWithObject('admin_only', adminOnly?.smhToString());
    query.addKeyWithObject('order_by', orderBy.name);
    query.addKeyWithObject('join_type', joinType.name);
    query.addKeyWithObject('join_time_start', joinTimeStart);
    query.addKeyWithObject('join_time_end', joinTimeEnd);
    query.addKeyWithObject('order_by_type', orderByType.name);

    return SMHGetRequest<SMHGroupsOfMemberEntity>().request(
      [urlPrefix, organizationId, 'list'],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 创建群组
  ///
  /// 权限要求：超级管理员或系统管理员
  /// 请求参数：
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// name：字符串，群组名称，必选参数；
  /// allowExternalUser：布尔值，群组是否可包含企业外部人员，可选参数，默认 false；
  /// users: 需要添加的企业内其它成员列表（不包含群主），可选参数；
  /// userId: 整数，用户 UserId
  /// role: 字符串，用户角色，groupAdmin | user，必选参数；
  /// authRoleId: 整数，普通群组成员权限 ID，如果是普通成员，该字段是必选参数；如果是群组管理员，该字段被忽略；
  static Future<SMHResponse<SMHCreateGroupResultEntity>?> createGroup({
    required String organizationId,
    required String userToken,
    required String name,
    required List<SMHGroupUserAuthroleUsers> users,
    bool? allowExternalUser = false,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPutRequest<SMHCreateGroupResultEntity>().request(
      [urlPrefix, organizationId],
      query: {'user_token': userToken},
      body: {
        'name': name,
        'allowExternalUser': allowExternalUser?.smhToString(),
        'users': users.map((e) => e.toJson()).toList()
      },
      finishCallback: finishCallback,
    );
  }

  /// 删除群组
  ///
  /// 权限要求：仅群主
  /// OrganizationId: 组织 ID，必选参数
  /// GroupId: 要删除的群组 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> deleteGroup({
    required String organizationId,
    required String userToken,
    required String groupId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHDeleteRequest().request(
      [urlPrefix, organizationId, groupId],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 删除群组成员
  ///
  /// 权限要求：仅群主
  /// OrganizationId: 组织 ID，必选参数
  /// GroupId: 要删除的群组 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> deleteGroupMember({
    required String organizationId,
    required String userToken,
    required String groupId,
    required List<SMHGroupMemberInfoEntity> users,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, organizationId, groupId],
      query: {'user_token': userToken},
      body: {'users': users.map((e) => e.toJson()).toList()},
      finishCallback: finishCallback,
    );
  }

  /// 更新群组
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// GroupId: 群组 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// name：字符串，群组名称，可选参数；
  static Future<SMHResponse?> updateGroup({
    required String organizationId,
    required String userToken,
    required String groupId,
    required String name,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, organizationId, groupId],
      query: {'user_token': userToken},
      body: {'name': name},
      finishCallback: finishCallback,
    );
  }

  /// 查询用户创建的群组数量
  ///
  /// 该接口用于组织管理员删除用户时，查询该用户是否创建有群组。删除用户时，该用户创建的群组都会被解散。
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// UserIds: 用户 ID 列表，用逗号分隔，如 1,2,3，必选参数
  static Future<SMHResponse<List<SMHUserCreateGroupCountEntity>>?>
      getCountOfUserCreatedGroup({
    required String organizationId,
    required String userToken,
    required List<String> userIds,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<List<SMHUserCreateGroupCountEntity>>().request(
      [urlPrefix, organizationId, 'owner-group-count', userIds.join(',')],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 查询群组。
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// GroupId: 群组 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse<SMHGroupDetailEntity>?> getGroupDetailInfo({
    required String organizationId,
    required String userToken,
    required String groupId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHGroupDetailEntity>().request(
      [urlPrefix, organizationId, groupId],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 查询群组成员
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// GroupId: 群组 ID，必选参数
  /// Keyword: 查询的手机号或昵称，如果不带 keyword 参数，则是查询组织下的所有用户，可选参数；
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// OrderBy: 排序方式，支持 groupRole | enabled | nickname，默认 groupRole，可选参数；;
  /// OrderByType: 排列顺序，正序或倒序 desc or asc，可选参数；
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse<SMHGroupMembersEntity>?> getGroupMembers({
    required String organizationId,
    required String userToken,
    required String groupId,
    String? keyword,
    int page = 1,
    int pageSize = 20,
    String? marker,
    int? limit,
    SMHGroupMemberOrderBy orderBy = SMHGroupMemberOrderBy.groupRole,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('keyword', keyword);
    query.addKeyWithObject('user_token', userToken);
    query.addKeyWithObject('order_by_type', orderByType.name);
    query.addKeyWithObject('order_by', orderBy.name);

    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }
    return SMHGetRequest<SMHGroupMembersEntity>().request(
      [urlPrefix, organizationId, groupId, 'user'],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 添加群组成员
  ///
  /// 权限要求：超级管理员或系统管理员或群组管理员；
  /// OrganizationId: 组织 ID，必选参数
  /// GroupId: 群组 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> addMemberToGroup({
    required String organizationId,
    required String userToken,
    required String groupId,
    required List<SMHGroupMemberItemEntity> users,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPutRequest().request(
      [urlPrefix, organizationId, groupId, 'user'],
      query: {'user_token': userToken},
      body: {'users': users.map((e) => e.toJson()).toList()},
      finishCallback: finishCallback,
    );
  }

  /// 退出群组（非群主）
  ///
  /// 权限要求：群主不能退出群组，但可以解散群组（参见解散群组接口）；
  /// OrganizationId: 组织 ID，必选参数
  /// GroupId: 群组 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> exitGroup({
    required String organizationId,
    required String userToken,
    required String groupId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, organizationId, groupId, 'exit'],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 递归查询团队成员（仅移动端）
  /// 查询该团队及其所有子级团队的成员
  ///
  /// OrganizationId: 组织 ID
  /// TeamId: team ID
  /// Keyword: 查询的手机号或昵称，如果不带 keyword 参数，则是查询组织下的所有用户
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// OrderBy: 排序方式，支持 role | enabled | nickname，默认 role;
  /// OrderByType: 排列顺序，正序或倒序 desc or asc；
  /// UserToken: 用户令牌
  static Future<SMHResponse<SMHGroupAllMembersEntity>?> getTeamAllMembers({
    required String organizationId,
    required String userToken,
    required String groupId,
    String? keyword,
    int page = 1,
    int pageSize = 20,
    String? marker,
    int? limit,
    SMHMemberOrderBy orderBy = SMHMemberOrderBy.role,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('keyword', keyword);
    query.addKeyWithObject('user_token', userToken);
    query.addKeyWithObject('order_by_type', orderByType.name);
    query.addKeyWithObject('order_by', orderBy.name);
    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }
    return SMHGetRequest<SMHGroupAllMembersEntity>().request(
      [urlPrefixTeam, organizationId, groupId, 'recursive-user'],
      query: query,
      finishCallback: finishCallback,
    );
  }
}

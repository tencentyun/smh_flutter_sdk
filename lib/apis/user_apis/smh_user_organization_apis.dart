import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_organization_detail_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_organization_history_settings_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_organization_share_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_space_usage_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_organization_info.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

/// 组织操作接口
class SMHUserOrganizationApis {
  static const String urlPrefix = 'v1/organization';

  /// 列出当前登录用户所属组织
  /// 如果登录时指定了专属域名，仅列出当前组织
  ///
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse<List<SMHOrganizationInfoOrganizations>>?>
      listOrganizationsOfCurrentUser({
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<List<SMHOrganizationInfoOrganizations>>().request(
      [urlPrefix],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 查询组织空间总使用量
  ///
  /// 权限要求：超级管理员或系统管理员
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse<SMHSpaceUsageEntity>?> getOrganizationSpaceUsage({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHSpaceUsageEntity>().request(
      [urlPrefix, organizationId, 'usage'],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 登录进指定组织
  ///
  /// 通常无需调用该接口，直接列出指定组织的空间列表即可实现登录进指定组织，当然也可以显式调用该接口判断当前用户是否被允许登录进指定组织。
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> loginOrganization({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, organizationId],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 获取组织信息
  /// 获取组织信息，包括名称、配置等。
  static Future<SMHResponse<SMHOrganizationDetailInfoEntity>?>
      getOrganizationInfo({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHOrganizationDetailInfoEntity>().request(
      [urlPrefix, organizationId],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 获取组织分享列表
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// OrderBy: 排序方式，默认过期时间，可选参数；
  /// OrderByType: 排列顺序，正序或倒序 desc or asc，可选参数；
  /// Name: 分享名称，可选参数；
  /// ExpireTimeStart: 分享过期时间开始，可选参数；
  /// ExpireTimeEnd: 分享过期时间结束，可选参数；
  /// user_filter: 用户昵称/用户手机号/email，可选参数；
  static Future<SMHResponse<SMHOrganizationShareListEntity>?>
      getOrganizationShareList({
    required String organizationId,
    required String userToken,
    int page = 1,
    int pageSize = 20,
    String? marker,
    int? limit,
    SMHShareListOrderBy orderBy = SMHShareListOrderBy.expireTime,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    String? name,
    String? expireTimeStart,
    String? expireTimeEnd,
    String? userFilter,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('user_token', userToken);
    query.addKeyWithObject('order_by', orderBy.name);
    query.addKeyWithObject('order_by_type', orderByType.name);
    query.addKeyWithObject('name', name);
    query.addKeyWithObject('expire_time_start', expireTimeStart);
    query.addKeyWithObject('expire_time_end', expireTimeEnd);
    query.addKeyWithObject('user_filter', userFilter);
    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }

    return SMHGetRequest<SMHOrganizationShareListEntity>().request(
      [urlPrefix, organizationId, 'share-list'],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 获取组织历史版本参数
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse<SMHOrganizationHistorySettingsEntity>?>
      getOrganizationHistorySettings({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHOrganizationHistorySettingsEntity>().request(
      [urlPrefix, organizationId, 'history-settings'],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 获取组织文件权限角色列表
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse<List<SMHAuthorityRoleItemEntity>>?>
      getOrganizationRoleList({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<List<SMHAuthorityRoleItemEntity>>().request(
      [urlPrefix, organizationId, 'role-list'],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }
}

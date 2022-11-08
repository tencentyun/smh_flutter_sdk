import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_space_storage_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_internet_traffic_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_space_tag_size_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_traffic_price_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_stats_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

/// 统计接口
class SMHUserStatsApis {
  static const urlPrefix = 'v1/stats';

  /// 查询个人空间存储流量详情
  ///
  /// 权限要求：超级管理员或系统管理员
  /// OrganizationId: 组织 ID，必选参数；
  /// Page: 页码，可选参数；
  /// PageSize: 分页数量，可选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Keyword: 查询的手机号或昵称，如果不带 keyword 参数，则是查询所有用户，可选参数；
  /// OrderBy: 排序方式，支持 internetTraffic | size | availableSpace | capacity，可选参数；
  /// OrderByType: 排列顺序，正序或倒序 desc or asc，默认倒序，可选参数；
  /// UserToken: 访问令牌，必选参数；
  static Future<SMHResponse<SMHSpaceStorageInfoEntity>?>
      getPresonSpaceStorageInfo({
    required String userToken,
    required String organizationId,
    int page = 1,
    int pageSize = 20,
    String? marker,
    int? limit,
    String? keyword,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHSpaceStorageOrderBy orderBy = SMHSpaceStorageOrderBy.internetTraffic,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {'user_token': userToken};
    query.addKeyWithObject('order_by_type', orderByType.name);
    query.addKeyWithObject('order_by', orderBy.name);
    query.addKeyWithObject('keyword', keyword);
    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }

    return SMHGetRequest<SMHSpaceStorageInfoEntity>().request(
      [urlPrefix, organizationId, 'personal-space-details'],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 查询团队空间存储流量详情
  ///
  /// 权限要求：超级管理员或系统管理员
  /// OrganizationId: 组织 ID，必选参数；
  /// Page: 页码；
  /// PageSize: 分页数量；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Keyword: 查询的团队名称
  /// OrderBy: 排序方式，支持 internetTraffic | size | availableSpace | capacity，可选参数；
  /// OrderByType: 排列顺序，正序或倒序 desc or asc，默认倒序；
  /// UserToken: 访问令牌，必选参数；
  static Future<SMHResponse<SMHSpaceStorageInfoEntity>?>
      getTeamSpaceStorageInfo({
    required String organizationId,
    required String userToken,
    int? page = 1,
    int? pageSize = 20,
    String? marker,
    int? limit,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHSpaceStorageOrderBy orderBy = SMHSpaceStorageOrderBy.internetTraffic,
    String? keyword,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {'user_token': userToken};
    query.addKeyWithObject('order_by_type', orderByType.name);
    query.addKeyWithObject('order_by', orderBy.name);
    query.addKeyWithObject('keyword', keyword);
    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }
    return SMHGetRequest<SMHSpaceStorageInfoEntity>().request(
      [urlPrefix, organizationId, 'team-space-details'],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 查询用户统计信息
  ///
  /// 权限要求：超级管理员或系统管理员
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 访问令牌，必选参数；
  static Future<SMHResponse<SMHUserStatsInfoEntity>?> getUserStatsInfo({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHUserStatsInfoEntity>().request(
      [urlPrefix, organizationId, 'user-count'],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 查询空间存储信息统计信息
  ///
  /// 权限要求：超级管理员或系统管理员
  /// SpaceTag: Space 标签，可选参数；
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 访问令牌，必选参数；
  /// size: 字符串，空间大小，单位 Byte
  /// spaceTag: 字符串，空间标签
  static Future<SMHResponse<List<SMHSpaceTagSizeInfoEntity>>?>
      getSpacesStorageInfo({
    required String organizationId,
    required String userToken,
    SMHSpaceTag? spaceTag,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {'user_token': userToken};
    query.addKeyWithObject('space_tag', spaceTag?.name);
    return SMHGetRequest<List<SMHSpaceTagSizeInfoEntity>>().request(
        [urlPrefix, organizationId, 'space-size'],
        query: query, finishCallback: finishCallback);
  }

  /// 获取流量时序统计信息
  ///
  /// 功能描述
  /// 获取流量时序统计信息。
  /// 接口说明
  /// 权限要求：超级管理员或系统管理员
  /// 请求参数：
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 访问令牌，必选参数；
  /// startTime：日期字符串，统计开始时间，必选参数；
  /// endTime：日期字符串，统计结束时间，必选参数；
  static Future<SMHResponse<SMHInternetTrafficInfoEntity>?>
      getTrafficInfoWithTime({
    required String organizationId,
    required String userToken,
    required String startTime,
    required String endTime,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest<SMHInternetTrafficInfoEntity>().request(
      [urlPrefix, organizationId, 'internet-traffic'],
      query: {'user_token': userToken},
      body: {'startTime': startTime, 'endTime': endTime},
      finishCallback: finishCallback,
    );
  }

  /// 获取流量计费信息
  ///
  /// 超级管理员或系统管理员
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 访问令牌，必选参数；
  static Future<SMHResponse<SMHTrafficPriceInfoEntity>?> getTrafficPrice({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHTrafficPriceInfoEntity>().request(
      [urlPrefix, organizationId, 'traffic-quota'],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }
}

import 'dart:async';

import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_extra_info_input_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_get_file_detail_input_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_share_file_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_favorite_file_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_single_space_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_extra_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_history_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_recycle_item_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_related_to_me_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_directory_detail_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

class SMHUserDirectoryApis {
  static const String urlPrefix = 'v1/directory';
  static const String urlPrefixH = 'v1/history';

  /// 批量获取文件/文件夹详情，可以跨空间。
  ///
  /// directoryInfoList：数组，文件信息集合，必选参数；
  /// spaceOrgId:数字，机构 ID，可选，跨企业查询才需要传；
  /// spaceId：字符串，空间 ID；
  /// path：字符串，文件路径；
  /// type：文件类型；
  static Future<SMHResponse<SMHFileDetailEntity>?> getFileDetailCrossSpace({
    required String organizationId,
    required String userToken,
    required List<SMHFileItemEntity> directoryInfoList,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest<SMHFileDetailEntity>().request(
      [urlPrefix, organizationId, 'detail'],
      query: {'user_token': userToken},
      body: {
        'directoryInfoList': directoryInfoList.map((e) => e.toJson()).toList()
      },
      finishCallback: finishCallback,
    );
  }

  /// 指定空间下，批量获取文件或文件夹属性信息。
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// SpaceId: 空间 ID，必选参数
  /// spaceOrgId:数字，机构 ID，可选，跨企业查询才需要传；
  /// path 文件路径，必选参数
  static Future<SMHResponse<List<SMHFileDetailSingleSpaceEntity>>?>
      getFileDetailSingleSpace({
    required String organizationId,
    required String userToken,
    required String spaceId,
    required List<SMHGetFileDetailInputEntity> directoryInfoList,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest<List<SMHFileDetailSingleSpaceEntity>>().request(
      [urlPrefix, organizationId, spaceId, 'detail'],
      query: {'user_token': userToken},
      body: directoryInfoList.map((e) => e.toJson()).toList(),
      finishCallback: finishCallback,
    );
  }

  /// 查看历史版本列表
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// DirPath: 文件夹目录
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// OrderBy: 排序字段，按文件大小排序为 size，按创建时间排序为 creationTime，可选参数；
  /// OrderByType: 排序方式，升序为 asc，降序为 desc，可选参数；，可选参数；
  /// spaceOrgId: 空间所在企业 ID，可选参数，不传默认为当前企业，主要用于跨企业查询共享群组场景；
  /// UserToken: 访问令牌，必选参数；
  static Future<SMHResponse<SMHHistoryListEntity>?> getHistoryList({
    required String organizationId,
    required String userToken,
    required String dirPath,
    required String spaceId,
    String? spaceOrgId,
    int page = 1,
    int pageSize = 20,
    String? marker,
    int? limit,
    SMHHistoryListOrderBy orderBy = SMHHistoryListOrderBy.creationTime,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {'user_token': userToken};
    query.addKeyWithObject('order_by', orderBy.name);
    query.addKeyWithObject('order_by_type', orderByType.name);
    query.addKeyWithObject('space_org_id', spaceOrgId);

    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }

    return SMHGetRequest<SMHHistoryListEntity>().request(
      [urlPrefixH, organizationId, spaceId, 'history-list', dirPath],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 查看文件目录额外信息
  ///
  /// 查看文件目录额外信息：收藏状态、共享状态等。
  /// spaceOrgId:数字，机构 ID，跨企业查询时必传，非跨企业查询时选填参数，默认为当前登录企业 ID，建议都传；
  /// spaceId:空间 ID，必填参数；
  /// path: 文件路径，必填参数；
  static Future<SMHResponse<List<SMHFileExtraInfoEntity>>?> getFileExtraInfo({
    required String organizationId,
    required String userToken,
    required List<SMHExtraInfoInputEntity> fileInfo,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest<List<SMHFileExtraInfoEntity>>().request(
      [urlPrefix, organizationId, 'list/extra-info'],
      query: {'user_token': userToken},
      body: [fileInfo.map((e) => e.toJson()).toList()],
      finishCallback: finishCallback,
    );
  }

  /// 获取与我相关的文件列表
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// UserToken: 用户访问令牌，必选参数；
  /// OrderBy: 排序字段，按操作时间排序为 creationTime（默认）可选参数；
  /// OrderByType: 排序方式，升序为 asc，降序为 desc（默认），可选参数；
  static Future<SMHResponse<SMHRelatedToMeListEntity>?> getRelatedToMeFileList({
    required String organizationId,
    required String userToken,
    int page = 1,
    int pageSize = 20,
    String? marker,
    String? limit,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHOrderBy orderBy = SMHOrderBy.creationTime,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {
      'user_token': userToken,
      'order_by': orderBy.name,
      'order_by_type': orderByType.name
    };
    if (limit != null && marker != null) {
      query.addKeyWithObject('limit', limit);
      query.addKeyWithObject('marker', marker);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }

    return SMHGetRequest<SMHRelatedToMeListEntity>().request(
      [urlPrefix, organizationId, 'related-to-me'],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 获取回收站目录详情
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// SpaceId: 空间 ID
  /// RecycledItemId: 回收站 ID，必选参数
  /// SpaceOrgId: 回收站所在机构 ID，可选参数
  static Future<SMHResponse<SMHRecycleItemInfoEntity>?> getRecycleItemDetail({
    required String organizationId,
    required String userToken,
    required String spaceId,
    required int recycledItemId,
    String? spaceOrgId,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {
      'user_token': userToken,
    };
    query.addKeyWithObject('space_org_id', spaceOrgId);

    return SMHGetRequest<SMHRecycleItemInfoEntity>().request(
      [urlPrefix, organizationId, spaceId, recycledItemId.toString()],
      urlMethod: 'info',
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 获取文件目录详情
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// SpaceOrgId: 空间所在组织 ID，默认为当前组织 ID
  /// SpaceId: 空间 ID
  /// DirPath: 文件夹目录
  /// FilePath: 文件目录
  static Future<SMHResponse<SMHUserDirectoryDetailInfoEntity>?>
      getFileListItemDetail({
    required String organizationId,
    required String userToken,
    required String spaceId,
    required String path,
    String? spaceOrgId,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {
      'user_token': userToken,
    };
    query.addKeyWithObject('space_org_id', spaceOrgId);
    return SMHGetRequest<SMHUserDirectoryDetailInfoEntity>().request(
      urlMethod: 'info',
      [urlPrefix, organizationId, spaceId, path],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 获取最近使用文件列表，最多只返回 200 条记录。
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// UserToken: 用户访问令牌，必选参数；
  /// OrderBy: 排序字段，按操作时间排序为 visitTime（默认）可选参数；
  /// OrderByType: 排序方式，升序为 asc，降序为 desc（默认），可选参数；
  static Future<SMHResponse<SMHFileListEntity>?> getRecentlyFileList({
    required String organizationId,
    required String userToken,
    int page = 1,
    int pageSize = 20,
    String? marker,
    String? limit,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHRecentlyOrderBy orderBy = SMHRecentlyOrderBy.visitTime,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {
      'user_token': userToken,
      'order_by': orderBy.name,
      'order_by_type': orderByType.name
    };
    if (limit != null && marker != null) {
      query.addKeyWithObject('limit', limit);
      query.addKeyWithObject('marker', marker);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }

    return SMHGetRequest<SMHFileListEntity>().request(
      [urlPrefix, organizationId, 'recently-used'],
      urlMethod: 'info',
      query: query,
      finishCallback: finishCallback,
    );
  }
}

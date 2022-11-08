import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_list_recycle_space_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_recycle_input_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_recycle_items_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_recycle_restore_item_reuslt_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

/// 回收站接口
class SMHUserRecycledApis {
  static const String urlPrefix = 'v1/recycled';

  /// 用于永久删除指定回收站项目（批量）
  /// 接口说明
  /// 要求权限：
  /// 企业空间、个人空间、共享空间管理员
  /// 共享空间：编辑者、操作者
  /// 个人删除的文件
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 用户访问令牌，必选参数；
  static Future<SMHResponse?> batchDeleteRecycleFile({
    required String organizationId,
    required String userToken,
    required List<SMHRecycleInputItemEntity> recycledItems,
    required bool withAllGroups,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      urlMethod: "delete",
      ["v1/recycled", organizationId],
      query: {'user_token': userToken},
      body: {
        'recycledItems': recycledItems.map((e) => e.toJson()).toList(),
        'withAllGroups': withAllGroups
      },
      finishCallback: finishCallback,
    );
  }

  /// 用于恢复指定回收站项目（批量）
  /// 要求权限：
  /// 企业空间、个人空间、共享空间管理员
  /// 共享空间：编辑者、操作者
  /// 个人删除的文件
  /// 恢复项目时需保证该项目所在的目录存在；
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 用户访问令牌，必选参数；
  /// recycledItems 回收站数据集合
  ///   spaceId 空间 ID
  ///   recycledItemId 回收站文件 ID
  ///
  /// 执行成功
  /// 当项目较多以异步方式恢复时，返回 HTTP 202 Accepted；
  /// 当项目较少以同步方式恢复时，返回 HTTP 200 OK（全部执行成功）或 HTTP 207 Multi-Status（存在部分或全部执行失败）；
  static Future<SMHResponse<SMHRecycleRestoreItemReusltEntity>?>
      batchRestoreRecycleFile({
    required String organizationId,
    required String userToken,
    required List<SMHRecycleInputItemEntity> recycledItems,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest<SMHRecycleRestoreItemReusltEntity>().request(
        ["v1/recycled", organizationId],
        urlMethod: "restore",
        query: {'user_token': userToken},
        body: {'recycledItems': recycledItems.map((e) => e.toJson()).toList()},
        finishCallback: finishCallback);
  }

  /// 用于列出回收站项目，跨空间。
  /// 目录内容的列出顺序为：默认无排序，根据传入参数 orderBy 和 orderByType 来决定排列顺序。
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Page: 分页码，默认第一页，可选参数，不能与 marker 和 limit 参数同时使用；
  /// PageSize: 分页大小，默认 20，可选参数，不能与 marker 和 limit 参数同时使用；
  /// OrderBy: 排序字段，按名称排序为 name，按修改时间排序为 modificationTime，按文件大小排序为 size，按删除时间排序为 removalTime，按剩余时间排序为 remainingTime；
  /// OrderByType: 排序方式，升序为 asc，降序为 desc；
  /// RemovedBy: 根据删除者 id 筛选信息，可选参数；
  /// UserToken: 用户访问令牌，必选参数；
  /// spaceItems：筛选的空间集合，必填；
  ///   spaceId: 字符串，空间 ID；
  ///   includeChildSpace: 布尔型，是否包括该空间下的子空间，默认不包括；
  /// withAllTeamSpace: 是否快捷筛选当前用户加入的所有团队空间，默认 false；
  /// withAllGroupSpace: 是否快捷筛选当前用户加入的群组空间，默认 false；
  static Future<SMHResponse<SMHRecycleItemsEntity>?> listRecycleItems({
    required String organizationId,
    required String userToken,
    required List<SMHListRecycleSpaceItemEntity> spaceItems,
    String? marker,
    String? limit,
    int page = 1,
    int pageSize = 20,
    SMHOrderBy orderBy = SMHOrderBy.name,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    String? removeBy,
    bool? withAllTeamSpace = false,
    bool? withAllGroupSpace = false,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {'user_token': userToken};
    query.addKeyWithObject('order_by', orderBy.name);
    query.addKeyWithObject('order_by_type', orderByType.name);
    query.addKeyWithObject('remove_by', removeBy);

    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }
    Map<String, dynamic> body = {
      'withAllTeamSpace': withAllTeamSpace,
      'withAllGroupSpace': withAllGroupSpace,
      'spaceItems': spaceItems.map((e) => e.toJson()).toList()
    };

    return SMHPostRequest<SMHRecycleItemsEntity>().request(
      [urlPrefix, organizationId, 'list'],
      query: query,
      body: body,
      finishCallback: finishCallback,
    );
  }
}

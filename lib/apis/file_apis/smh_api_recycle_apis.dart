import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_api_requests.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_file_path_entity.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_recycle_items_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_recycle_restore_item_reuslt_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

class SMHAPIRecycledApis {
  static const String urlPrefix = 'v1/recycled';

  /// 用于列出回收站项目
  /// 目录内容的列出顺序为：默认无排序，根据传入参数 orderBy 和 orderByType 来决定排列顺序。
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Page: 分页码，默认第一页，可选参数，不能与 marker 和 limit 参数同时使用；
  /// PageSize: 分页大小，默认 20，可选参数，不能与 marker 和 limit 参数同时使用；
  /// OrderBy: 排序字段，按名称排序为 name，按修改时间排序为 modificationTime，按文件大小排序为 size，按删除时间排序为 removalTime，按剩余时间排序为 remainingTime；
  /// OrderByType: 排序方式，升序为 asc，降序为 desc；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHRecycleItemsEntity>?> listRecycleItems({
    required String libraryId,
    required String spaceId,
    String? userId,
    String? marker,
    String? limit,
    int page = 1,
    int pageSize = 20,
    SMHOrderBy? orderBy,
    SMHOrderByType? orderByType,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('user_id', userId);

    if (limit != null && marker != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }
    query.addKeyWithObject('order_by', orderBy?.name);
    query.addKeyWithObject('order_by_type', orderByType?.name);

    return SMHApiGetRequest<SMHRecycleItemsEntity>().request(
      [urlPrefix, libraryId, spaceId],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 用于恢复指定回收站项目
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// RecycledItemId: 回收站项目 ID，必选参数；
  /// ConflictResolutionStrategy: 路径冲突时的处理方式，ask: 冲突时返回 HTTP 409 Conflict 及 SameNameDirectoryOrFileExists 错误码，rename: 冲突时自动重命名文件，overwrite: 如果冲突目标为目录时返回 HTTP 409 Conflict 及 SameNameDirectoryOrFileExists 错误码，否则覆盖已有文件，可选参数，默认为 ask；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse?> restoreRecycleItem({
    required String libraryId,
    required String spaceId,
    required int recycledItemId,
    required String accessToken,
    String? userId,
    SMHConflictResolutionStrategy conflictResolutionStrategy =
        SMHConflictResolutionStrategy.ask,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPostRequest<SMHFilePathEntity>()
        .request([urlPrefix, libraryId, spaceId, recycledItemId.toString()],
            urlMethod: 'restore',
            query: {
              'conflict_resolution_strategy': conflictResolutionStrategy.name,
              'user_id': userId
            },
            finishCallback: finishCallback);
  }

  /// 恢复指定回收站项目（批量）
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse?> batchRestoreRecycleItems({
    required String libraryId,
    required String spaceId,
    required List<int> recycledItemIds,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPostRequest<SMHRecycleRestoreItemReusltEntity>().request(
      [urlPrefix, libraryId, spaceId],
      urlMethod: 'restore',
      query: {'user_id': userId},
      body: recycledItemIds,
      finishCallback: finishCallback,
    );
  }

  /// 永久删除指定回收站项目
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// RecycledItemId: 回收站项目 ID，必选参数；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse?> deleteRecycleItem({
    required String libraryId,
    required String spaceId,
    required int recycledItemId,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiDeleteRequest().request(
      [urlPrefix, libraryId, spaceId, recycledItemId.toString()],
      query: {'user_id': userId},
      finishCallback: finishCallback,
    );
  }

  /// 永久删除指定回收站项目（批量）
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse?> batchDeleteRecycleItems({
    required String libraryId,
    required String spaceId,
    required List<int> recycledItemIds,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiDeleteRequest().request(
      [urlPrefix, libraryId, spaceId],
      urlMethod: 'delete',
      query: {'user_id': userId},
      body: recycledItemIds,
      finishCallback: finishCallback,
    );
  }

  /// 清空回收站
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse?> clearRecycle({
    required String libraryId,
    required String spaceId,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiDeleteRequest().request(
      [urlPrefix, libraryId, spaceId],
      query: {'user_id': userId},
      finishCallback: finishCallback,
    );
  }
}

import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_api_requests.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_batch_copy_result_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_delete_file_result_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_directory_detail_info_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_file_path_entity.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_favorite_file_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

class SMHAPIDirectoryApis {
  static const String urlPrefix = 'v1/directory';
  static const String urlPrefixCross = 'v1/cross-space/directory';

  /// 用于列出目录或相簿内容
  ///
  /// 目录内容的列出顺序为：首先按照字典序列出子目录，随后根据上传时间列出媒体库中的媒体资源，或根据文件名列出文件库的中文件资源；
  /// 目录的 ETag 可作为列出目录或相簿内容请求的 If-None-Match 请求头部，如果目标目录的 ETag 与传入的值相同，则返回 HTTP 304 Not Modified，此时客户端可使用本地的缓存，否则将返回 HTTP 200 OK，此时客户端应清除本地的缓存并使用服务端返回的最新数据；
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// DirPath: 目录路径或相簿名，对于多级目录，使用斜杠(/)分隔，例如 foo/bar；可选参数，对于根目录，该参数留空；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Page: 分页码，默认第一页，可选参数，不能与 marker 和 limit 参数同时使用；
  /// PageSize: 分页大小，默认 20，可选参数，不能与 marker 和 limit 参数同时使用；
  /// OrderBy: 排序字段，按名称排序为 name，按修改时间排序为 modificationTime，按文件大小排序为 size，按创建时间排序为 creationTime；
  /// OrderByType: 排序方式，升序为 asc，降序为 desc；
  /// DirectoryFilter: 筛选方式，可选，不传返回全部，onlyDir 只返回文件夹，onlyFile 只返回文件；
  /// SortType: 排序方式，可选，不传则文件和文件夹单独排序，先返回文件夹，后返回文件。union 文件和文件夹拉通排序；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHFileListEntity>?> listDirectory({
    required String libraryId,
    required String spaceId,
    String dirPath = '',
    String? userId,
    SMHDirectoryFilter? filter,
    int page = 1,
    int pageSize = 20,
    String? marker,
    String? limit,
    String? sortType,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHFileListOrderBy orderBy = SMHFileListOrderBy.name,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {
      'order_by': orderBy.name,
      'order_by_type': orderByType.name
    };

    query.addKeyWithObject('user_id', userId);
    query.addKeyWithObject('sort_type', sortType);
    if (limit != null && marker != null) {
      query.addKeyWithObject('limit', limit);
      query.addKeyWithObject('marker', marker);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }
    query.addKeyWithObject('filter', filter?.name);
    return SMHApiGetRequest<SMHFileListEntity>().request(
      [urlPrefix, libraryId, spaceId, dirPath],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 创建目录或相簿
  ///
  /// 媒体类型媒体库可以进一步设置是否问分相簿媒体库，当设置为不分相簿时，则不允许创建目录或相簿，当设置为分相簿时，仅允许创建1层目录或相簿；文件类型媒体库不限制目录层数；
  /// 自动创建中间所需的各级父目录；
  /// 即使 ConflictResolutionStrategy 为 rename，如果路径中的某一父级实际为文件，则依然会返回 HTTP 409 Conflict 及 SameNameDirectoryOrFileExists 错误码；
  ///
  /// 请求参数：
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// DirPath: 目录路径或相簿名，对于多级目录，使用斜杠(/)分隔，例如 foo/bar，可选参数，对于根目录，该参数留空；
  /// ConflictResolutionStrategy: 最后一级目录冲突时的处理方式，ask: 冲突时返回 HTTP 409 Conflict 及 SameNameDirectoryOrFileExists 错误码，rename: 冲突时自动重命名最后一级目录，默认为 ask；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHFilePathEntity>?> createDirectory({
    required String libraryId,
    required String spaceId,
    required String dirPath,
    String? userId,
    SMHConflictResolutionStrategy conflictResolutionStrategy =
        SMHConflictResolutionStrategy.ask,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPutRequest<SMHFilePathEntity>().request([
      urlPrefix,
      libraryId,
      spaceId,
      dirPath
    ], query: {
      'conflict_resolution_strategy': conflictResolutionStrategy.name,
      'user_id': userId
    }, finishCallback: finishCallback);
  }

  /// 用于删除目录或相簿
  /// 如果媒体库启用回收站功能，则该接口不会永久删除目录或相簿，而是将目录或相簿以及其下的文件移入回收站，可通过相关接口永久删除或恢复回收站内的目录或相簿，或直接清空回收站；
  ///
  /// 请求参数：
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// DirPath: 目录路径或相簿名，对于多级目录，使用斜杠(/)分隔，例如 foo/bar，必选参数；
  /// Permanent: 当媒体库开启回收站时，则该参数指定将文件移入回收站还是永久删除文件，1: 永久删除，0: 移入回收站，默认为 0；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHDeleteFileResultEntity>?> deleteDirectory({
    required String libraryId,
    required String spaceId,
    required String dirPath,
    String? userId,
    int permanent = 0,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiDeleteRequest<SMHDeleteFileResultEntity>().request(
      [urlPrefix, libraryId, spaceId, dirPath],
      query: {'permanent': permanent, 'user_id': userId},
      finishCallback: finishCallback,
    );
  }

  /// 用于复制目录或相簿
  ///
  /// 请求参数：
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// DirPath: 目标目录路径或相簿名，对于多级目录，使用斜杠(/)分隔，例如 foo/bar_new，可选参数，对于根目录，该参数留空；
  /// ConflictResolutionStrategy: 最后一级目录冲突时的处理方式，ask: 冲突时返回 HTTP 409 Conflict 及 SameNameDirectoryOrFileExists 错误码，rename: 冲突时自动重命名最后一级目录，默认为 ask；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHBatchCopyResultEntity>?> copyDirectory({
    required String libraryId,
    required String spaceId,
    required String dirPath,
    required String copyFrom,
    String? userId,
    SMHConflictResolutionStrategy conflictResolutionStrategy =
        SMHConflictResolutionStrategy.ask,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPutRequest<SMHBatchCopyResultEntity>().request(
      [urlPrefix, libraryId, spaceId, dirPath],
      query: {
        'conflict_resolution_strategy': conflictResolutionStrategy.name,
        'user_id': userId
      },
      body: {'copyFrom': copyFrom},
      finishCallback: finishCallback,
    );
  }

  /// 查看目录或相簿详情
  ///
  /// 路径如果为文件，则返回文件详情，如果为文件夹，则返回文件夹详情；
  /// 目录的 ETag 可作为查看目录或相簿详情请求的 If-None-Match 请求头部，如果目标目录的 ETag 与传入的值相同，则返回 HTTP 304 Not Modified，此时客户端可使用本地的缓存，否则将返回 HTTP 200 OK，此时客户端应清除本地的缓存并使用服务端返回的最新数据；
  /// 请求参数：
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// DirPath: 目录或文件路径或相簿名，对于多级目录，使用斜杠(/)分隔，例如 foo/bar；可选参数，对于根目录，该参数留空；
  static Future<SMHResponse<SMHDirectoryDetailInfoEntity>?> getDirectoryDetail({
    required String libraryId,
    required String spaceId,
    String dirPath = '',
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiGetRequest<SMHDirectoryDetailInfoEntity>().request(
      [urlPrefix, libraryId, spaceId, dirPath],
      urlMethod: 'info',
      finishCallback: finishCallback,
    );
  }

  /// 用于从同一 Library 不同空间中复制目录或相簿
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// DirPath: 目标目录路径或相簿名，对于多级目录，使用斜杠(/)分隔，例如 foo/bar_new；
  /// ConflictResolutionStrategy: 最后一级目录冲突时的处理方式，ask: 冲突时返回 HTTP 409 Conflict 及 SameNameDirectoryOrFileExists 错误码，rename: 冲突时自动重命名最后一级目录，默认为 ask；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHBatchCopyResultEntity>?>
      copyDirectoryCrossSpace({
    required String libraryId,
    required String spaceId,
    required String dirPath,
    required String copyFrom,
    required String copyFromSpaceId,
    String? userId,
    SMHConflictResolutionStrategy conflictResolutionStrategy =
        SMHConflictResolutionStrategy.ask,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPutRequest<SMHBatchCopyResultEntity>().request([
      urlPrefixCross,
      libraryId,
      spaceId,
      'copy',
      dirPath
    ], query: {
      'conflict_resolution_strategy': conflictResolutionStrategy.name,
      'user_id': userId
    }, body: {
      'copyFrom': copyFrom,
      'copyFromSpaceId': copyFromSpaceId
    }, finishCallback: finishCallback);
  }

  /// 重命名或移动目录或相簿
  ///
  /// 该接口的源和目标均需要指定完整的目录路径或相簿名，对于文件类型媒体库，源与目标可以跨越多层级多目录，来实现将目录移动到任意其他父目录下的功能，且支持同时修改目录名；
  /// 自动创建中间所需的各级父目录；
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// DirPath: 目标目录路径或相簿名，对于多级目录，使用斜杠(/)分隔，例如 foo/bar_new，必选参数；
  /// ConflictResolutionStrategy: 最后一级目录冲突时的处理方式，ask: 冲突时返回 HTTP 409 Conflict 及 SameNameDirectoryOrFileExists 错误码，rename: 冲突时自动重命名最后一级目录，默认为 ask；
  /// MoveAuthority: 是否移动文件夹权限，true 移动，false 不移动；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHFilePathEntity>?> renameOrMoveDirectory({
    required String libraryId,
    required String spaceId,
    required String dirPath,
    required String from,
    required bool moveAuthority,
    String? userId,
    SMHConflictResolutionStrategy conflictResolutionStrategy =
        SMHConflictResolutionStrategy.ask,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPutRequest<SMHFilePathEntity>().request(
      [urlPrefix, libraryId, spaceId, dirPath],
      query: {
        'conflict_resolution_strategy': conflictResolutionStrategy.name,
        'move_authority': moveAuthority.toString(),
        'user_id': userId
      },
      body: {'from': from},
      finishCallback: finishCallback,
    );
  }
}

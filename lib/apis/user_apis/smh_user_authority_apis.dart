import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_directory_authority_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_received_authorization_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_related_authorization_file_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

class SMHUserAuthorityApis {
  static const String urlPrefix = 'v1/authority';

  /// 查看文件共享权限列表。
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// DirPath: 目录路径或相簿名，对于多级目录，使用斜杠(/)分隔，例如 foo/bar；对于根目录，该参数留空；
  /// DirLibraryId: 文件的媒体库ID，必选参数；
  /// DirSpaceId: 文件的空间ID，必选参数；
  /// SpaceOrgId 数值，空间所属组织 ID；
  /// UserToken: 用户访问令牌，必选参数；
  static Future<SMHResponse<List<SMHDirectoryAuthorityEntity>>?>
      getDirectoryAuthority({
    required String organizationId,
    required String userToken,
    required String dirPath,
    required String dirLibraryId,
    required String dirSpaceId,
    String? spaceOrgId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<List<SMHDirectoryAuthorityEntity>>().request(
      [urlPrefix, organizationId, 'directory-authority', dirPath],
      query: {
        'dirLibraryId': dirLibraryId,
        'dirSpaceId': dirSpaceId,
        'space_org_id': spaceOrgId,
        'user_token': userToken
      },
      finishCallback: finishCallback,
    );
  }

  /// 获取与我相关的共享文件列表，包含共享给我的 文件/文件夹 和我共享出去的 文件/文件夹。
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 用户访问令牌，必选参数；
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// OrderBy: 排序字段，按名称排序为 name，按修改时间排序为 modificationTime，按文件大小排序为 size，按创建时间排序为 creationTime，可选参数；
  /// OrderByType: 排序方式，升序为 asc，降序为 desc，可选参数；
  static Future<SMHResponse<SMHRelatedAuthorizationFileListEntity>?>
      getRelatedAuthorizationFileList({
    required String organizationId,
    required String userToken,
    int page = 1,
    int pageSize = 20,
    String? marker,
    int? limit,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHFileListOrderBy orderBy = SMHFileListOrderBy.name,
    SMHFinishCalBack? finishCallback,
  }) {
    var query = {
      'user_token': userToken,
      'order_by': orderBy.name,
      'order_by_type': orderByType.name
    };

    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }

    return SMHGetRequest<SMHRelatedAuthorizationFileListEntity>().request(
      [urlPrefix, organizationId, 'related-authorization-directory'],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 获取共享给我的文件夹
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 用户访问令牌，必选参数；
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// OrderBy: 排序字段，按名称排序为 name，按修改时间排序为 modificationTime，按文件大小排序为 size，按创建时间排序为 creationTime，可选参数；
  /// OrderByType: 排序方式，升序为 asc，降序为 desc，可选参数；
  static Future<SMHResponse<SMHReceivedAuthorizationEntity>?>
      getReceivedAuthorizationFileList({
    required String organizationId,
    required String userToken,
    int page = 1,
    int pageSize = 20,
    String? marker,
    int? limit,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHFileListOrderBy orderBy = SMHFileListOrderBy.name,
    SMHFinishCalBack? finishCallback,
  }) {
    var query = {
      'user_token': userToken,
      'order_by': orderBy.name,
      'order_by_type': orderByType.name
    };

    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }

    return SMHGetRequest<SMHReceivedAuthorizationEntity>().request(
      [urlPrefix, organizationId, 'received-authorization-directory'],
      query: query,
      finishCallback: finishCallback,
    );
  }
}

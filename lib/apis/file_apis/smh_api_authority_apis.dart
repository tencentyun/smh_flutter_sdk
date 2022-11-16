import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_api_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_file_authority_item_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_space_role_info_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_user_role_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_favorite_file_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

/// 角色权限操作
class SMHAPIAuthorityApis {
  static const String urlPrefix = 'v1/authority';

  /// 主动退出文件/文件夹权限
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// path: 目录路径或相簿名，对于多级目录，使用斜杠(/)分隔，例如 foo/bar；必选参数；
  /// authorityTo:
  ///  userId: 退出授权用户的 ID；
  ///  name: 用户昵称，必选参数；
  ///  roleId: 退出授权的角色 ID，操作者 or 上传者等，必选参数；
  static Future<SMHResponse?> exitFileAuthority({
    required String libraryId,
    required String spaceId,
    required String path,
    required List<SMHUserRoleInfoEntity> authorizeTo,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPostRequest().request(
      [urlPrefix, libraryId, spaceId, 'authorize', path],
      urlMethod: 'exit',
      body: {'authorizeTo': authorizeTo.map((e) => e.toJson()).toList()},
      finishCallback: finishCallback,
    );
  }

  /// 给文件夹分配权限
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// path: 目录路径或相簿名，对于多级目录，使用斜杠(/)分隔，例如 foo/bar；可选参数，对于根目录，该参数留空；
  /// authorityTo:
  ///   spaceId 授权团队的空间 id，与 userId 二选一；
  ///   userId 授权用户的 id，与 spaceId 二选一；
  ///   name 授权团队名称 或 授权用户昵称，必选参数；
  ///   roleId 授权的角色：操作者 or 上传者等，必选参数；
  static Future<SMHResponse?> authorityFile({
    required String libraryId,
    required String spaceId,
    required String path,
    required List<SMHFileAuthorityItemEntity> authorizeTo,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPostRequest().request(
      [urlPrefix, libraryId, spaceId, 'authorize', path],
      body: {'authorizeTo': authorizeTo.map((e) => e.toJson()).toList()},
      finishCallback: finishCallback,
    );
  }

  /// 用于给空间分配权限
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// authorityTo:
  ///  spaceId 授权团队的空间 id
  ///  name 授权团队名称 或 授权用户昵称
  ///  roleId 授权的角色：操作者 or 上传者等
  static Future<SMHResponse?> authorityFileToSpace({
    required String libraryId,
    required String spaceId,
    required SMHSpaceRoleInfoEntity authorizeTo,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPostRequest().request(
      [urlPrefix, libraryId, spaceId, 'authorize-space'],
      body: {
        'authorizeTo': authorizeTo.toJson()
          ..removeWhere((key, value) => value == null)
      },
      finishCallback: finishCallback,
    );
  }

  /// 删除文件夹权限
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// path: 目录路径或相簿名，对于多级目录，使用斜杠(/)分隔，例如 foo/bar；可选参数，对于根目录，该参数留空；
  static Future<SMHResponse?> deleteFileAuthority({
    required String libraryId,
    required String spaceId,
    required String path,
    required List<SMHFileAuthorityItemEntity> authorizeTo,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPostRequest().request(
        [urlPrefix, libraryId, spaceId, 'authorize', path],
        urlMethod: 'delete',
        body: {'authorizeTo': authorizeTo.map((e) => e.toJson()).toList()},
        finishCallback: finishCallback);
  }

  /// 获取我共享的文件夹
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// OrderBy: 排序字段，按名称排序为 name，按修改时间排序为 modificationTime，按文件大小排序为 size，按创建时间排序为 creationTime，可选参数；
  /// OrderByType: 排序方式，升序为 asc，降序为 desc，可选参数；
  static Future<SMHResponse<SMHFileListEntity>?> getAuthorizedDirectory({
    required String libraryId,
    int page = 1,
    int pageSize = 20,
    String? marker,
    int? limit,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHOrderBy orderBy = SMHOrderBy.name,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {
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

    return SMHApiGetRequest<SMHFileListEntity>().request(
      [urlPrefix, libraryId, 'authorized-directory'],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 用于获取角色列表
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// AccessToken: 访问令牌，必选参数；
  static Future<SMHResponse<List<SMHAuthorityRoleItemEntity>>?> getRoleList({
    required String libraryId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiGetRequest<List<SMHAuthorityRoleItemEntity>>().request(
      [urlPrefix, libraryId, 'role-list'],
      finishCallback: finishCallback,
    );
  }
}

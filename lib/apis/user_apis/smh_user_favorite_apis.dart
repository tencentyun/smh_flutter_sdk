import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_create_favorite_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_favorite_file_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_favorite_group_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

class SMHUserFavoriteApis {
  static const String urlPrefix = 'v1/favorite-group';
  static const String urlPrefixF = 'v1/favorite';

  /// 列出收藏夹
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// Tag: 收藏夹 Tag，可选参数
  static Future<SMHResponse<SMHFavoriteGroupListEntity>?> listFavoriteGroup({
    required String organizationId,
    required String userToken,
    String? tag,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('tag', tag);
    query.addKeyWithObject('user_token', userToken);

    return SMHGetRequest<SMHFavoriteGroupListEntity>().request(
      [urlPrefix, organizationId],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 创建收藏夹
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// name：字符串，收藏夹名称，必填参数；
  /// tag: 字符串，收藏夹 tag，可选参数；
  static Future<SMHResponse<SMHCreateFavoriteResultEntity>?>
      createFavoriteGroup({
    required String organizationId,
    required String userToken,
    required String name,
    required String tag,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPutRequest<SMHCreateFavoriteResultEntity>().request(
      [urlPrefix, organizationId],
      query: {'user_token': userToken},
      body: {'tag': tag, 'name': name},
      finishCallback: finishCallback,
    );
  }

  /// 删除收藏
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// Tag: 收藏夹 Tag，可选参数
  static Future<SMHResponse?> deleteFavorite({
    required String organizationId,
    required String userToken,
    required List<String> favoriteIds,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHDeleteRequest().request(
      [urlPrefixF, organizationId, favoriteIds.join(',')],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 删除收藏夹
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// FavoriteGroupId: 要删除的收藏夹 ID，必选参数；
  /// UserToken: 用户令牌，必选参数；
  static Future<SMHResponse<SMHCreateFavoriteResultEntity>?>
      deleteFavoriteGroup({
    required String organizationId,
    required String userToken,
    required String favoriteGroupId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHDeleteRequest<SMHCreateFavoriteResultEntity>().request(
      [urlPrefix, organizationId, favoriteGroupId],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 收藏文件目录
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 用户访问令牌，必选参数；
  /// spaceOrgId：整数，空间所属的组织 ID，如果是企业外部空间则必选参数；
  /// spaceId：字符串，空间 ID，必选参数；
  /// dirPath: 字符串，文件目录路径，必选参数；
  /// favoriteGroupId: 整数，收藏夹 ID，可选参数
  static Future<SMHResponse<SMHCreateFavoriteResultEntity>?> favoriteFilePath({
    required String organizationId,
    required String userToken,
    required String spaceId,
    required String path,
    String? favoriteGroupId,
    String? spaceOrgId,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> body = {'spaceId': spaceId, 'path': path};
    body.addKeyWithObject('spaceOrgId', spaceOrgId);
    body.addKeyWithObject('favoriteGroupId', favoriteGroupId);
    return SMHPutRequest<SMHCreateFavoriteResultEntity>().request(
      [urlPrefixF, organizationId],
      query: {'user_token': userToken},
      body: body,
      finishCallback: finishCallback,
    );
  }

  /// 更新收藏夹
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// FavoriteGroupId: 收藏夹 ID，必选参数；
  /// UserToken: 用户令牌，必选参数；
  /// name：字符串，收藏夹名称，必填参数；
  /// tag: 字符串，收藏夹 tag，可选参数；
  static Future<SMHResponse?> updateFavoriteGroup({
    required String organizationId,
    required String userToken,
    required String favoriteGroupId,
    required String name,
    String? tag,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, organizationId, favoriteGroupId],
      query: {'user_token': userToken},
      body: {'name': name, 'tag': tag},
      finishCallback: finishCallback,
    );
  }

  /// 查看收藏列表
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// FavoriteGroupId: 收藏夹 ID，可选参数；
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// UserToken: 用户访问令牌，必选参数；
  /// OrderBy: 排序字段，按收藏时间排序为 favoriteTime（默认）可选参数；
  /// OrderByType: 排序方式，升序为 asc，降序为 desc（默认），可选参数；
  static Future<SMHResponse<SMHFileListEntity>?> getFavoriteFileList({
    required String organizationId,
    required String userToken,
    String? favoriteGroupId,
    int page = 1,
    int pageSize = 20,
    String? marker,
    int? limit,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHFavoriteListOrderBy orderBy = SMHFavoriteListOrderBy.favoriteTime,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('favorite_group_id', favoriteGroupId);
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

    return SMHGetRequest<SMHFileListEntity>().request(
      [urlPrefixF, organizationId],
      query: query,
      finishCallback: finishCallback,
    );
  }
}

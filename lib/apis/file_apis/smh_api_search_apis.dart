import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_api_requests.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_search_file_result_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_search_file_input_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';

class SMHAPISearchApis {
  static const String urlPrefix = 'v1/search';

  /// 用于搜索目录与文件
  ///
  /// 使用本接口发起异步搜索任务时，接口将在大约 2s 的时间返回，如果在返回时有部分或全部搜索结果，则返回已搜索出的结果的第一页（每页 20 个），如果暂未搜索到结果则返回空数组，因此该接口实际返回的 contents 数量可能为 0 到 20 之间不等，且是否还有更多搜索结果，不应参考 contents 的数量，而应参考 hasMore 字段；
  /// 当需要获取后续页时，使用【继续获取搜索结果】接口；
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// AccessToken: 访问令牌，必选参数；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHSearchFileResultEntity>?> searchFile({
    required String libraryId,
    required String spaceId,
    required SMHSearchFileInputEntity input,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPostRequest<SMHSearchFileResultEntity>().request(
      [urlPrefix, libraryId, spaceId, 'space-contents'],
      query: {'user_id': userId},
      body: input.toJson(),
      finishCallback: finishCallback,
    );
  }

  /// 用于继续获取搜索结果
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// SearchId: 搜索任务 ID，必选参数；
  /// Marker: 分页标识，创建搜索任务时或继续获取搜索结果时返回的 nextMarker 字段，必选参数；
  /// AccessToken: 访问令牌，必选参数；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHSearchFileResultEntity>?> nextSearchFile({
    required String libraryId,
    required String spaceId,
    required String searchId,
    required String marker,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPostRequest<SMHSearchFileResultEntity>().request(
      [urlPrefix, libraryId, spaceId],
      query: {'user_id': userId, 'marker': marker},
      finishCallback: finishCallback,
    );
  }

  /// 用于删除搜索任务
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// SearchId: 搜索任务 ID，必选参数；
  /// AccessToken: 访问令牌，必选参数；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse?> deleteSearchTask({
    required String libraryId,
    required String spaceId,
    required String searchId,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiDeleteRequest().request(
      [urlPrefix, libraryId, spaceId, searchId],
      query: {'user_id': userId},
      finishCallback: finishCallback,
    );
  }
}

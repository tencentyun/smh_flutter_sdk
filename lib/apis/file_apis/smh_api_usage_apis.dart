import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_api_requests.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_space_size_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_space_usage_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';

import '../../model/api_model/s_m_h_space_list_item_entity.dart';

class SMHAPIUsageApis {
  static const String urlPrefix = 'v1/usage';
  static const String urlPrefixSpace = 'v1/space';

  /// 查询 library 空间使用量
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHSpaceUsageEntity>?> getLibraryUsage({
    required String libraryId,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiGetRequest<SMHSpaceUsageEntity>().request(
      [urlPrefix, libraryId],
      query: {'user_id': userId},
      finishCallback: finishCallback,
    );
  }

  /// 查询租户空间大小
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHSpaceSizeEntity>?> getSpaceSize({
    required String libraryId,
    required String spaceId,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiGetRequest<SMHSpaceSizeEntity>().request(
      [urlPrefixSpace, libraryId, spaceId, 'size'],
      query: {'user_id': userId},
      finishCallback: finishCallback,
    );
  }

  /// 列出租户空间
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<List<SMHSpaceListItemEntity>>?> getSpaceList({
    required String libraryId,
    required String userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiGetRequest<List<SMHSpaceListItemEntity>>().request(
      [urlPrefixSpace, libraryId],
      query: {'user_id': userId},
      finishCallback: finishCallback,
    );
  }
}

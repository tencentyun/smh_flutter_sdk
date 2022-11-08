import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_api_requests.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_space_quota_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';

class SMHAPIQuotaApis {
  static const String urlPrefix = 'v1/quota';

  /// 获取租户空间配额
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHSpaceQuotaInfoEntity>?> getSpaceCapacity({
    required String libraryId,
    required String spaceId,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiGetRequest<SMHSpaceQuotaInfoEntity>().request(
      [urlPrefix, libraryId, spaceId],
      query: {'user_id': userId},
      finishCallback: finishCallback,
    );
  }
}

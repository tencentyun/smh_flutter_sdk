import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_api_requests.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_access_token_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';

class SMHAPITokenApis {
  static const String urlPrefix = 'v1/token';

  /// 用于续期访问令牌（Access Token）
  ///
  /// 续期时不支持指定新的有效时长，仅按照获取令牌时指定的有效时长续期；
  static Future<SMHResponse<SMHAccessTokenEntity>?> renewAccessToken({
    required String libraryId,
    required String accessToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPostRequest<SMHAccessTokenEntity>().request(
      [urlPrefix, libraryId, accessToken],
      finishCallback: finishCallback,
    );
  }
}

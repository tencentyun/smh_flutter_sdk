import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_check_wechat_auth_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';

class SMHUserYufuApis {
  static const urlPrefix = 'v1/yufu';

  /// 取消玉符授权
  ///
  /// OrganizationId: 组织 ID
  /// UserToken: 访问令牌，必选参数；
  static Future<SMHResponse<SMHCheckWechatAuthResultEntity>?> cancelYufuAuth({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHDeleteRequest<SMHCheckWechatAuthResultEntity>().request(
      [urlPrefix, organizationId, 'settings/check'],
      query: {
        'user_token': userToken,
      },
      finishCallback: finishCallback,
    );
  }
}

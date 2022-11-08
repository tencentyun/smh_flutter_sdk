import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_check_wechat_auth_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_person_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';

class SMHUserWechatApis {
  static const urlPrefix = 'v1/wechat';

  /// 用于检查微信授权是否有效
  ///
  /// OrganizationId: 组织 ID
  /// UserToken: 访问令牌，必选参数；
  /// AuthType: 授权类型，可选参数，默认为 mobile，其他可选值：web
  static Future<SMHResponse<SMHCheckWechatAuthResultEntity>?> checkWechatAuth({
    required String organizationId,
    required String userToken,
    SMHAuthType authType = SMHAuthType.mobile,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHCheckWechatAuthResultEntity>().request(
      [urlPrefix, organizationId, 'check-auth'],
      query: {'user_token': userToken, 'auth_type': authType.name},
      finishCallback: finishCallback,
    );
  }

  /// 用于云盘用户绑定微信账号
  ///
  /// OrganizationId: 组织 ID
  /// UserToken: 访问令牌，必选参数；
  /// AuthCode: 授权码；
  /// AuthType: 授权类型，可选参数，默认为 mobile，其他可选值：web
  static Future<SMHResponse<SMHPersonInfoEntity>?> bindWechat({
    required String organizationId,
    required String userToken,
    required String authCode,
    SMHAuthType authType = SMHAuthType.mobile,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHPersonInfoEntity>().request(
      [urlPrefix, organizationId, 'auth'],
      query: {
        'user_token': userToken,
        'auth_type': authType.name,
        'auth_code': authCode
      },
      finishCallback: finishCallback,
    );
  }

  /// 取消微信授权
  ///
  /// 用于云盘用户解除绑定微信账号，同时解除 web 端和移动端的授权。
  static Future<SMHResponse?> unBindWechat({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHDeleteRequest().request(
      [urlPrefix, organizationId, 'auth'],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }
}

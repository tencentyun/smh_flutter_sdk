import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';

class SMHUserUpdatePhoneApis {
  static const urlPrefix = 'v1/update-phone';

  /// 发送短信验证码
  ///
  /// 更新手机号全局生效，更改生效后，用户登录其它组织也需要使用需要用新手机号
  /// CountryCode: 新手机号国家码，如 +86，必选参数；默认+86
  /// PhoneNumber：新手机号码，如 18888888888，必选参数；
  static Future<SMHResponse?> sendSmsCode({
    required String organizationId,
    required String userToken,
    required String phoneMember,
    String? countryCode = '+86',
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, 'send-sms-code', countryCode!, phoneMember],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 更新手机号
  ///
  /// 更新手机号全局生效，更改生效后，用户登录其它组织也需要使用需要用新手机号
  /// CountryCode: 新手机号国家码，如 +86，必选参数； 默认+86
  /// PhoneNumber：新手机号码，如 18888888888，必选参数；
  /// Code: 短信验证码，必选参数；
  static Future<SMHResponse?> updatePhone({
    required String organizationId,
    required String userToken,
    required String phoneMember,
    required String code,
    String? countryCode = '+86',
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, 'verify-sms-code', countryCode!, phoneMember, code],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }
}

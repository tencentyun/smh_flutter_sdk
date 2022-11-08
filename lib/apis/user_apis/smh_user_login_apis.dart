import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_login_qrcode_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_login_qrcode_state_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_organization_info.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_yufu_login_url_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

/// 登录接口
class SMHUserLoginApis {
  static const String urlPrefix = 'v1/qr-code';
  static const String urlPrefixSign = 'v1/sign-in';
  static const String urlPrefixSignOut = 'v1/sign-out';

  /// 发送短信验证码至新手机号。
  ///
  /// countryCode: 国家代码，如 +86，必选参数
  /// phoneNumber: 手机号码，如 18912345678，必选参数
  /// type: 短信类型，值为：sign-in | bind-meeting-phone | bind-wechat-phone | bind-yufu-phone | bind-wework-phone，可选参数，默认 sign-in
  /// captchaTicket: 图形验证码 ticket，可选参数
  /// captchaRandstr: 图形验证码 randstr，可选参数
  static Future<SMHResponse?> sendSmsCode({
    required String phoneNumber,
    String countryCode = '+86',
    SMHSmsCodeType type = SMHSmsCodeType.signIn,
    String? captchaTicket,
    String? captchaRandstr,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('type', type.name);
    query.addKeyWithObject('captcha_ticket', captchaTicket);
    query.addKeyWithObject('captcha_randstr', captchaRandstr);
    return SMHPostRequest().request(
      [urlPrefixSign, 'send-sms-code', countryCode, phoneNumber],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 根据短信验证码获取用户登录信息。
  ///
  /// CountryCode: 国家代码，如 +86，必选参数
  /// PhoneNumber: 手机号码，如 18912345678，必选参数
  /// Code: 短信验证码，如 1234，必选参数
  /// DeviceId: 设备名称，例如 iPhone 12 Pro 或 田嵩的 iPhone 12 Pro 等，用于区分客户端，可选参数
  /// EnterpriseOnly: 是否仅允许登录企业版，1 - 仅企业版可登录，0 - 所有版本账号都可登录，默认 0，可选参数
  /// InviteCode: 企业邀请码，可选参数
  static Future<SMHResponse<SMHOrganizationInfoEntity>?> smsCodeLogin({
    required String phoneNumber,
    required String code,
    String countryCode = '+86',
    String? deviceId,
    bool? enterpriseOnly,
    String? inviteCode,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('device_id', deviceId);
    query.addKeyWithObject('allow_edition', enterpriseOnly?.toString());
    query.addKeyWithObject('invite_code', inviteCode);
    return SMHPostRequest<SMHOrganizationInfoEntity>().request(
      [urlPrefixSign, "verify-sms-code", countryCode, phoneNumber, code],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 取消二维码，使登录二维码失效
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// Code: 二维码 UUID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> cancelQrcodeLogin({
    required String organizationId,
    required String code,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, organizationId, "cancel", code],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 二维码确认登录，一般由移动端应用发起
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// Code: 二维码 UUID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> confirmQrcodeLogin({
    required String organizationId,
    required String code,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, organizationId, "login", code],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 验证二维码
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// Code: 二维码 UUID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> verifiedQrcodeLogin({
    required String organizationId,
    required String code,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, organizationId, "connect", code],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 根据微信授权 code 获取用户登录信息。
  ///
  /// Code: 微信验证码，字符串，必选参数
  /// DeviceId: 设备名称，例如 iPhone 12 Pro 或 田嵩的 iPhone 12 Pro 等，用于区分客户端，可选参数
  /// CountryCode: 国家代码，如 +86，可选参数，未绑定手机号时才需传入
  /// PhoneNumber: 手机号码，如 18912345678，可选参数，未绑定手机号时才需传入
  /// SmsCode: 短信验证码，可选参数，未绑定手机号时才需传入
  /// AuthType: 授权类型，可选参数，默认为 web，其他可选值：mobile 用于移动端授权登录。
  /// EnterpriseOnly: 是否仅允许登录企业版，1 - 仅企业版可登录，0 - 所有版本账号都可登录，默认 0，可选参数
  /// InviteCode: 企业邀请码，可选参数
  static Future<SMHResponse<SMHOrganizationInfoEntity>?> wechatCodeLogin({
    required String code,
    required SMHAuthType authType,
    String? deviceId,
    String countryCode = '+86',
    String? phoneNumber,
    String? smsCode,
    bool? enterpriseOnly,
    String? inviteCode,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('device_id', deviceId);
    query.addKeyWithObject('phone_number', phoneNumber);
    query.addKeyWithObject('country_code', countryCode);
    query.addKeyWithObject('sms_code', smsCode);
    query.addKeyWithObject('auth_type', authType.toString());
    query.addKeyWithObject('allow_edition', enterpriseOnly?.toString());
    query.addKeyWithObject('invite_code', inviteCode);
    return SMHPostRequest<SMHOrganizationInfoEntity>().request(
      [urlPrefixSign, '/verify-wechat-code', code],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 查询登录二维码当前状态
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// Code: 二维码 UUID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> getQrcodeLoginState(
    String code, {
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest<SMHLoginQrcodeStateEntity>().request(
      [urlPrefix, code],
      finishCallback: finishCallback,
    );
  }

  /// 根据玉符授权 code 获取用户登录信息。
  ///
  /// TenantName: 玉符租户 ID，字符串，必选参数，和 Domain 二选一；
  /// Domain: 企业自定义域名，字符串，必选参数，和 TenantName 二选一；
  /// Code: 玉符验证码，字符串，必选参数
  /// Type: 玉符登录类型，字符串，必选参数，值为：domain 或 tenantName；
  /// DeviceId: 设备名称，例如 iPhone 12 Pro 或 田嵩的 iPhone 12 Pro 等，用于区分客户端，可选参数
  /// CountryCode: 国家代码，如 +86，可选参数，未绑定手机号时才需传入
  /// PhoneNumber: 手机号码，如 18912345678，可选参数，未绑定手机号时才需传入
  /// SmsCode: 短信验证码，可选参数，未绑定手机号时才需传入
  /// EnterpriseOnly: 是否仅允许登录企业版，1 - 仅企业版可登录，0 - 所有版本账号都可登录，默认 0，可选参数
  /// InviteCode: 企业邀请码，可选参数
  static Future<SMHResponse<SMHOrganizationInfoEntity>?> yufuCodeLogin({
    required String code,
    String? tenantName,
    String? domain,
    String? deviceId,
    String countryCode = '+86',
    String? phoneNumber,
    String? smsCode,
    SMHAuthType? authType,
    bool? enterpriseOnly,
    String? inviteCode,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    if (tenantName != null) {
      query.addKeyWithObject('type', 'tenantName');
    } else if (domain != null) {
      query.addKeyWithObject('type', 'domain');
    }
    query.addKeyWithObject('device_id', deviceId);
    query.addKeyWithObject('phone_number', phoneNumber);
    query.addKeyWithObject('country_code', countryCode);
    query.addKeyWithObject('sms_code', smsCode);
    query.addKeyWithObject('auth_type', authType.toString());
    query.addKeyWithObject('allow_edition', enterpriseOnly.toString());
    query.addKeyWithObject('invite_code', inviteCode);

    List<String> paths = [urlPrefixSign, '/verify-yufu-code'];
    paths.addObject(tenantName);
    paths.addObject(domain);
    paths.addObject(code);
    return SMHPostRequest<SMHOrganizationInfoEntity>().request(
      paths,
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 退出登录
  ///
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> loginOut({
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefixSignOut],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 根据腾讯会议授权 code 获取用户登录信息。
  ///
  /// Code: 短信验证码，如 1234，必选参数
  /// DeviceId: 设备名称，例如 iPhone 12 Pro 或 田嵩的 iPhone 12 Pro 等，用于区分客户端，可选参数
  /// CountryCode: 国家代码，如 +86，可选参数，未绑定手机号时才需传入
  /// PhoneNumber: 手机号码，如 18912345678，可选参数，未绑定手机号时才需传入
  /// SmsCode: 短信验证码，可选参数，未绑定手机号时才需传入
  /// InviteCode: 企业邀请码，可选参数
  static Future<SMHResponse<SMHOrganizationInfoEntity>?> meetingCodeLogin({
    required String code,
    String? deviceId,
    String countryCode = '+86',
    String? phoneNumber,
    String? smsCode,
    String? inviteCode,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('device_id', deviceId);
    query.addKeyWithObject('phone_number', phoneNumber);
    query.addKeyWithObject('country_code', countryCode);
    query.addKeyWithObject('sms_code', smsCode);
    query.addKeyWithObject('invite_code', inviteCode);
    return SMHPostRequest<SMHOrganizationInfoEntity>().request(
      [urlPrefixSign, 'verify-meeting-code', code],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 根据玉符租户 ID，获取单点登录云盘地址。
  ///
  /// TenantName: 玉符租户 ID，字符串，必选参数，和 Domain 二选一；
  /// Domain: 企业自定义域名，字符串，必选参数，和 TenantName 二选一；
  /// Type: 玉符登录类型，字符串，必选参数，值为：domain 或 tenantName；
  /// From: 调用端，可选参数，默认 web；
  /// AutoRedirect: 是否自动跳转，可选参数，默认 true；
  /// CustomState: 自定义状态，接口返回的 url 会原封不动的带上该参数传入的值，可选参数；
  static Future<SMHResponse<SMHYufuLoginUrlEntity>?> getYufuLoginUrl({
    String? tenantName,
    String? domain,
    SMHPlatformType? from,
    bool? autoRedirect = false,
    String? customState,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    if (tenantName != null) {
      query.addKeyWithObject('type', 'tenantName');
    } else if (domain != null) {
      query.addKeyWithObject('type', 'domain');
    }
    if (from == null) {
      from = SMHPlatformType.web;
    }
    query.addAll({'from': from.toString()});
    query.addAll({'auto_redirect': autoRedirect});
    query.addKeyWithObject('custom_state', customState);

    List<String> paths = [urlPrefixSign, '/yufu-endpoint'];
    paths.addObject(tenantName);
    paths.addObject(domain);
    return SMHGetRequest<SMHYufuLoginUrlEntity>().request(
      paths,
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 用于生成 APP 扫码登录的二维码。
  ///
  /// DeviceId: 设备名称，例如 iPhone 12 Pro 或 田嵩的 iPhone 12 Pro 等，用于区分客户端，可选参数
  static Future<SMHResponse<SMHLoginQrcodeEntity>?> getLoginQrcode({
    String? deviceId,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('device_id', deviceId);
    return SMHGetRequest<SMHLoginQrcodeEntity>().request(
      [urlPrefix],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 通过二维码获取登录信息，一个二维码仅能验证一次，验证后失效
  ///
  /// 二维码code
  static Future<SMHResponse<SMHOrganizationInfoEntity>?> loginByLoginQrcode({
    required String code,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHOrganizationInfoEntity>().request(
      [urlPrefix, code, 'user-token'],
      finishCallback: finishCallback,
    );
  }
}

import 'package:smh_flutter_sdk/core/accesstoken/smh_accesstoken_interceptor.dart';
import 'package:smh_flutter_sdk/core/accesstoken/smh_refresh_accesstoken_handler.dart';
import 'package:smh_flutter_sdk/core/base/smh_service.dart';
import 'package:smh_flutter_sdk/core/interceptors/smh_request_retrier.dart';
import 'package:smh_flutter_sdk/core/interceptors/smh_retry_interceptor.dart';
import 'package:dio/dio.dart';

const String SMHAPIServiceKey = "SMHAPIService";

class SMHAPIService extends SMHService {
  SMHAccessTokenInterceptor accessTokenInterceptor =
      SMHAccessTokenInterceptor();
  @override
  String serviceKey() {
    return SMHAPIServiceKey;
  }

  @override
  Map<String, dynamic>? serviceHeader() {
    return null;
  }

  @override
  List<String>? urlPaths() {
    return ["api"];
  }

  @override
  void initDio() {
    super.initDio();
    accessTokenInterceptor.service = this;
    dio.interceptors.add(accessTokenInterceptor);
    SMHRequestRetrier requestRetrier = SMHRequestRetrier(Dio(dio.options));
    SMHRetryInterceptor retryInterceptor = SMHRetryInterceptor(requestRetrier);
    dio.interceptors.add(retryInterceptor);
    dio.options.followRedirects = false;
    dio.options.validateStatus = (status) {
      return status! < 400;
    };
  }

  setAccessTokenRefreshHandle(SMHRefreshAccessTokenHander accessTokenHander) {
    accessTokenInterceptor.accessTokenHander = accessTokenHander;
  }
}

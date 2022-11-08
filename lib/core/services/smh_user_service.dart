import 'package:smh_flutter_sdk/core/base/smh_service.dart';
import 'package:smh_flutter_sdk/core/interceptors/smh_request_retrier.dart';
import 'package:smh_flutter_sdk/core/interceptors/smh_retry_interceptor.dart';
import 'package:dio/dio.dart';

const String SMHUserServiceKey = "SMHUserService";

class SMHUserService extends SMHService {
  @override
  String serviceKey() {
    return SMHUserServiceKey;
  }

  @override
  Map<String, dynamic>? serviceHeader() {
    return null;
  }

  @override
  List<String>? urlPaths() {
    return ["user"];
  }

  @override
  void initDio() {
    super.initDio();
    SMHRequestRetrier requestRetrier = SMHRequestRetrier(Dio(dio.options));
    SMHRetryInterceptor retryInterceptor = SMHRetryInterceptor(requestRetrier);
    dio.interceptors.add(retryInterceptor);
    dio.options.followRedirects = false;
    dio.options.validateStatus = (status) {
      return status! < 400;
    };
  }
}

import 'package:smh_flutter_sdk/core/base/smh_service.dart';
import 'package:smh_flutter_sdk/core/interceptors/smh_request_retrier.dart';
import 'package:smh_flutter_sdk/core/interceptors/smh_retry_interceptor.dart';
import 'package:dio/dio.dart';

class SMHTransferService extends SMHService {
  SMHTransferService(String domain) {
    this.initDioWithDomain(domain);
  }

  void initDioWithDomain(String domain) {
    super.initDio();
    dio.options.baseUrl = domain;
    dio.options.headers = {
      'accept': '*/*',
      'accept-encoding': 'gzip, deflate, br',
      'connection': 'keep-alive',
      'user-agent': 'smh-flutter-sdk',
      'content-type': 'application/octet-stream'
    };
  }

  configUploadRetry() {
    SMHRequestRetrier requestRetrier = SMHRequestRetrier(Dio(dio.options));
    SMHRetryInterceptor retryInterceptor = SMHRetryInterceptor(requestRetrier);
    dio.interceptors.add(retryInterceptor);
  }
}

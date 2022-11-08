import 'dart:async';

import 'package:dio/dio.dart';

class SMHRequestRetrier {
  late Dio dio;
  SMHRequestRetrier(this.dio);

  Future<Response> scheduleRequestRetry(RequestOptions requestOptions) async {
    return await dio.request(
      requestOptions.path,
      cancelToken: requestOptions.cancelToken,
      data: requestOptions.data,
      onReceiveProgress: requestOptions.onReceiveProgress,
      onSendProgress: requestOptions.onSendProgress,
      queryParameters: requestOptions.queryParameters,
      options: Options(
        method: requestOptions.method,
        headers: requestOptions.headers,
      ),
    );
  }
}

import 'dart:io';
import 'package:dio/dio.dart';

class SMHError extends Error {
  int? statusCode;
  String? statusMessage;
  String? smhCode;
  String? smhMessage;
  String? smhZhMessage;
  String? requestId;
  String? cosRequestId;
  dynamic error;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['statusCode'] = statusCode;
    json['statusMessage'] = statusMessage;
    json['smhCode'] = smhCode;
    json['smhMessage'] = smhMessage;
    json['smhZhMessage'] = smhZhMessage;
    json['requestId'] = requestId;
    json['cosRequestId'] = cosRequestId;
    json['error'] = error;
    return json;
  }

  static SMHError fromJson(Map<String, dynamic> json) {
    SMHError error = SMHError();
    error.statusCode = json['statusCode'];
    error.statusMessage = json['statusMessage'];
    error.smhCode = json['smhCode'];
    error.smhMessage = json['smhMessage'];
    error.smhZhMessage = json['smhZhMessage'];
    error.requestId = json['requestId'];
    error.cosRequestId = json['cosRequestId'];
    error.error = json['error'];
    return error;
  }

  void checkNetWorkState() {
    if (this.error is DioError &&
        (this.error as DioError).type == DioErrorType.other &&
        ((this.error as DioError).error is SocketException)) {
      this.smhCode = "CheckTheNetworkStatus";
      this.smhZhMessage = "请检查网络状态";
      this.smhMessage = "check the network status";
    }

    if (this.error is DioError &&
        (this.error as DioError).type == DioErrorType.connectTimeout) {
      this.smhCode = "ConnectTimeout";
      this.smhZhMessage = "网络连接超时";
      this.smhMessage = "connect timeout";
    }
  }
}

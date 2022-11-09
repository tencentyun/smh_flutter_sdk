import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:smh_flutter_sdk/core/base/smh_services_manager.dart';
import 'package:smh_flutter_sdk/core/error/smh_error.dart';
import 'package:smh_flutter_sdk/core/error/smh_error_code.dart';
import 'package:dio/dio.dart';

enum SMHHostType { dev, test, preview, release }

class SMHService {
  final Dio dio = Dio();
  SMHHostType hostType = SMHHostType.release;

  late var _devBaseUrl = "";
  late var _testBaseUrl = "";
  late var _previewBaseUrl = "";
  late var _releaseBaseUrl = "";

  void configBaseHostWithEnv(String url, SMHHostType type) {
    switch (type) {
      case SMHHostType.dev:
        _devBaseUrl = url;
        break;
      case SMHHostType.test:
        _testBaseUrl = url;
        break;
      case SMHHostType.preview:
        _previewBaseUrl = url;
        break;
      case SMHHostType.release:
        _releaseBaseUrl = url;
        break;
    }
  }

  void setupCurrentHostEnv(SMHHostType type) {
    hostType = type;
    dio.options.baseUrl = baseUrl;
  }

  void initDio() {
    String userAgent = 'smh-flutter';
    if (Platform.isAndroid) {
      userAgent += '-android-sdk';
    }
    if (Platform.isIOS) {
      userAgent += '-ios-sdk';
    }

    dio.options.headers = {
      "content-type": 'application/json',
      'accept': '*/*',
      'accept-encoding': 'gzip, deflate, br',
      'connection': 'keep-alive',
      'user-agent': userAgent,
    };
    dio.options.connectTimeout = 30000;
  }

  get baseUrl {
    String url;
    switch (hostType) {
      case SMHHostType.dev:
        url = _devBaseUrl;
        break;
      case SMHHostType.test:
        url = _testBaseUrl;
        break;
      case SMHHostType.preview:
        url = _previewBaseUrl;
        break;
      case SMHHostType.release:
      default:
        url = _releaseBaseUrl;
        break;
    }
    return url;
  }

  String serviceKey() {
    return "";
  }

  List<String>? urlPaths() {
    return null;
  }

  /// 公共请求头
  Map<String, dynamic>? serviceHeader() {
    return null;
  }

  /// 公共query参数
  Map<String, dynamic>? serviceQuery() {
    return null;
  }

  Map<String, dynamic> responseFactory(Response response) {
    dynamic dataMap;
    if (response.data != null && response.data != '') {
      if (response.statusCode == 302) {
        if (response.headers['location'] != null) {
          List<String> locactionList =
              response.headers['location'] as List<String>;
          final location = locactionList[0];
          dataMap = {'location': location};
        }
      } else {
        String dataStr = json.encode(response.data);
        dataMap = json.decode(dataStr);
      }
    }
    Map<String, dynamic> result = {
      'data': dataMap,
      'statusCode': response.statusCode,
      'statusMessage': response.statusMessage
    };
    return result;
  }

  SMHError errorFactory(DioError error) {
    SMHError smhError = SMHError();
    smhError.statusCode = error.response?.statusCode;
    smhError.statusMessage = error.response?.statusMessage;

    if (error.error is HttpException) {
      HttpException ex = error.error;
      smhError.statusMessage = ex.message;
    }

    if (error.response?.data is Map) {
      smhError.smhCode = error.response?.data?['code'];
      smhError.smhMessage = error.response?.data?['message'];
      smhError.smhZhMessage =
          SMHErrorCode.getZHMessage(smhError.smhCode) ?? smhError.smhMessage;
      smhError.requestId = error.response?.data?['requestId'];
    }

    if (error.requestOptions != null) {
      smhError.cosRequestId =
          error.requestOptions.headers['x-cos-request-id'].toString();
    }

    smhError.error = error;
    smhError.checkNetWorkState();

    /// 子线程中 error信息 发送失败
    if (Isolate.current.debugName != 'main') {
      smhError.error = error.toString();
    }

    return smhError;
  }
}

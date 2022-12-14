import 'dart:isolate';

import 'package:smh_flutter_sdk/beacon/smh_beacon_manager.dart';
import 'package:smh_flutter_sdk/core/base/smh_service.dart';
import 'package:smh_flutter_sdk/core/base/smh_services_manager.dart';
import 'package:smh_flutter_sdk/core/error/smh_error.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';
import 'package:dio/dio.dart';

enum RequestMethod { get, post, put, delete, patch, head }

typedef SMHFinishCalBack<T> = Function(SMHResponse<T>? result, SMHError? error);

abstract class SMHRequest<T> {
  String? path() {
    return null;
  }

  String? URLMethod() {
    return null;
  }

  String serviceKey() {
    return "";
  }

  RequestMethod method() {
    return RequestMethod.get;
  }

  Future<SMHResponse<T>?> request(
    List<String> paths, {
    String? urlMethod,
    Map<String, dynamic>? header,
    Map<String, dynamic>? query,
    dynamic body,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    SMHFinishCalBack<T>? finishCallback,
  }) async {
    String serviceName = getServiceName();
    DateTime startTime = DateTime.now();
    Map<String, String> reportParams = {};

    SMHService service;
    if (SMHServicesManager.servicesManager.serviceMap
        .containsKey(serviceKey())) {
      service = SMHServicesManager.servicesManager.serviceMap[serviceKey()]!;
    } else {
      SMHError smhError = SMHError();
      smhError.smhCode = 'ServiceNoRegister';
      smhError.smhMessage = serviceKey() + " no register";
      smhError.smhZhMessage = serviceKey() + " 没有注册";
      throw (smhError);
    }
    Dio dio = service.dio;

    Map<String, dynamic> headerParams = {};
    if (service.serviceHeader() != null) {
      headerParams.addAll(service.serviceHeader()!);
    }
    if (header != null) {
      headerParams.addAll(header);
    }

    Map<String, dynamic> queryParams = {};
    if (service.serviceQuery() != null) {
      queryParams.addAll(service.serviceQuery()!);
    }
    if (query != null) {
      queryParams.addAll(query);
    }
    Map<String, dynamic> tempQuery = {};
    queryParams.keys.forEach((e) {
      dynamic value = queryParams[e];
      tempQuery.addKeyWithObject(e, value);
    });
    queryParams = tempQuery;

    List urlPaths = [];
    if (service.urlPaths() != null) {
      urlPaths.addAll(service.urlPaths()!);
    }

    if (path() != null) {
      urlPaths.add(path());
    }

    urlPaths.addAll(paths);

    String url = urlPaths.join('/');
    String? urlM;
    if (urlMethod != null) {
      urlM = urlMethod;
    } else {
      urlM = URLMethod();
    }

    if (urlM != null) {
      url += '?$urlM';
    }

    Options options = Options(headers: headerParams);
    Future responseFurure;
    try {
      switch (method()) {
        case RequestMethod.get:
          {
            responseFurure = dio.get(url,
                queryParameters: queryParams,
                options: options,
                onReceiveProgress: onReceiveProgress);
          }
          break;
        case RequestMethod.post:
          {
            responseFurure = dio.post(url,
                data: body,
                queryParameters: queryParams,
                options: options,
                onReceiveProgress: onReceiveProgress,
                onSendProgress: onSendProgress);
          }
          break;
        case RequestMethod.put:
          {
            responseFurure = dio.put(url,
                data: body,
                queryParameters: queryParams,
                options: options,
                onReceiveProgress: onReceiveProgress,
                onSendProgress: onSendProgress);
          }
          break;
        case RequestMethod.delete:
          {
            responseFurure = dio.delete(url,
                data: body, queryParameters: queryParams, options: options);
          }
          break;
        case RequestMethod.patch:
          {
            responseFurure = dio.patch(url,
                data: body, queryParameters: queryParams, options: options);
          }
          break;
        case RequestMethod.head:
          {
            responseFurure = dio.head(url,
                data: body, queryParameters: queryParams, options: options);
          }
          break;
      }

      Response response = await responseFurure;

      dynamic dataMap = service.responseFactory(response);
      SMHResponse<T> smhResponse = SMHResponse<T>.fromJson(dataMap);
      smhResponse.headers = response.headers;
      if (Isolate.current.debugName == 'main') {
        reportParams['host'] = service.baseUrl;
        reportParams['smh_key'] =
            service.baseUrl + url + ':query:' + queryParams.toString();
        for (String item in urlPaths) {
          if (item.startsWith('space')) {
            reportParams['space_id'] = item;
            break;
          }
        }

        reportParams['service_name'] = serviceName;
        Future(() =>
            {SMHBeaconManager.manager.reportSuccess(params: reportParams)});
      }

      if (finishCallback != null) {
        finishCallback(smhResponse, null);
      } else {
        return smhResponse;
      }
    } on DioError catch (e) {
      SMHError smhError = service.errorFactory(e);
      if (Isolate.current.debugName == 'main') {
        reportParams['service_name'] = serviceName;
        reportParams['status_code'] = smhError.statusCode.toString();
        reportParams['error_message'] = smhError.statusMessage.toString() +
            ':' +
            smhError.smhMessage.toString();
        reportParams['error_code'] = smhError.smhCode.toString();
        reportParams['error_type'] = smhError.error.toString();
        reportParams['took_time'] =
            DateTime.now().difference(startTime).inMilliseconds.toString();
        reportParams['cos_request_id'] = smhError.cosRequestId ?? '';
        reportParams['request_id'] = smhError.requestId ?? '';
        SMHBeaconManager.manager.reportFail(params: reportParams);
      }
      if (finishCallback != null) {
        finishCallback(null, smhError);
      } else {
        print(smhError.toJson().toString());
        throw (smhError);
      }
    } catch (e) {
      SMHError smhError = SMHError();
      smhError.error = e;
      if (Isolate.current.debugName == 'main') {
        reportParams['service_name'] = serviceName;
        reportParams['status_code'] = e.toString();
        reportParams['error_message'] = e.toString();
        reportParams['error_code'] = e.toString();
        reportParams['error_type'] = e.toString();
        reportParams['took_time'] =
            DateTime.now().difference(startTime).inMilliseconds.toString();
        reportParams['cos_request_id'] = smhError.cosRequestId ?? '';
        reportParams['request_id'] = smhError.requestId ?? '';
        SMHBeaconManager.manager.reportFail(params: reportParams);
      }
      if (finishCallback != null) {
        finishCallback(null, smhError);
      } else {
        throw (smhError);
      }
    }
  }

  static String getServiceName() {
    var stackTrace = StackTrace.current;
    List<String> stackTraces = stackTrace.toString().split('#');
    String current = filterSMHName(stackTraces);
    current = filterSMHName(current.split(' '));
    return current;
  }

  static String filterSMHName(List<String> list) {
    String current = '';
    for (String item in list) {
      if (item.contains('SMHAPI') || item.contains('SMHUser')) {
        current = item;
        break;
      }
    }
    return current;
  }
}

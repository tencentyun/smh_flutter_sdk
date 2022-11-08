import 'package:smh_flutter_sdk/core/accesstoken/smh_accesstoken_cache.dart';
import 'package:smh_flutter_sdk/core/accesstoken/smh_refresh_accesstoken_handler.dart';
import 'package:smh_flutter_sdk/core/base/smh_service.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_access_token_entity.dart';
import 'package:dio/dio.dart';

class SMHAccessTokenInterceptor extends QueuedInterceptorsWrapper {
  SMHRefreshAccessTokenHander? accessTokenHander;
  late SMHService service;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      Map<String, dynamic> query = options.queryParameters;
      String? spaceId;
      options.path.split('/').forEach((element) {
        if (element.startsWith('space') && element != 'space') {
          spaceId = element;
        }
      });
      String? accessToken =
          SMHAccessTokenCache.manager.queryAccessToken(spaceId ?? '-');

      if (accessToken == null) {
        String? spaceOrgId;
        if (query.keys.contains('space_org_id')) {
          spaceOrgId = query['space_org_id'];
        }

        if (options.data is Map &&
            (options.data as Map).keys.contains('spaceOrgId')) {
          spaceOrgId = options.data['spaceOrgId'];
        }

        Future accessFuture = Future.microtask(() {
          return accessTokenHander?.refreshAccessToken(spaceId, spaceOrgId);
        });
        SMHAccessTokenEntity? accessInfo = await accessFuture;
        if (accessInfo != null) {
          SMHAccessTokenCache.manager.updateCache(accessInfo);
          query.addAll({'access_token': accessInfo.accessToken});
        }
      } else {
        query.addAll({'access_token': accessToken});
      }
      handler.next(options);
    } on DioError catch (e) {
      handler.reject(e);
    } catch (_) {}
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (checkAccessTokenError(err)) {
      try {
        String? spaceId;
        String? spaceOrgId;
        RequestOptions? request = err.response?.requestOptions;
        Map<String, dynamic> query = request!.queryParameters;
        request.path.split('/').forEach((element) {
          if (element.startsWith('space')) {
            spaceId = element;
          }
        });

        if (query.keys.contains('space_org_id')) {
          spaceOrgId = query['space_org_id'];
        }

        if (request.data is Map &&
            (request.data as Map).keys.contains('spaceOrgId')) {
          spaceOrgId = request.data['space_org_id'];
        }
        Future accessFuture = Future.microtask(() {
          return accessTokenHander?.refreshAccessToken(spaceId, spaceOrgId);
        });
        SMHAccessTokenEntity? accessInfo = await accessFuture;
        String? token = accessInfo?.accessToken;
        if (token == null) {
          handler.next(err);
          return;
        }
        query.addAll({'access_token': token});
        Response response = await service.dio.request(request.path,
            data: request.data,
            queryParameters: query,
            options: Options(
                method: request.method,
                headers: request.headers,
                followRedirects: err.requestOptions.followRedirects,
                validateStatus: err.requestOptions.validateStatus),
            cancelToken: request.cancelToken,
            onSendProgress: request.onSendProgress,
            onReceiveProgress: request.onReceiveProgress);

        handler.resolve(response);
      } on DioError catch (e) {
        handler.next(e);
      } catch (e) {
        super.onError(err, handler);
      }
    } else {
      super.onError(err, handler);
    }
  }

  static bool checkAccessTokenError(DioError err) {
    bool checkCode = false;
    bool checkMessage = false;
    if (err.response?.data is Map) {
      checkCode = (err.response?.data != null &&
          err.response?.data['code'] == 'InvalidAccessToken');
    } else {
      checkMessage = err.response?.statusMessage == 'Forbidden';
    }

    return (err.response != null &&
        err.response?.statusCode == 403 &&
        (checkCode || checkMessage));
  }
}

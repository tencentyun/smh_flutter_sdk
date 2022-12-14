import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SMHBeaconManager {
  static final String sdkVersion = '1.0.0';
  static final String androidAppKey = '0AND056LZDOVYY8P';
  static final String iosAppKey = '0IOS056LZFVC0H5P';
  String appKey = '';
  static final SMHBeaconManager manager = SMHBeaconManager._internal();
  bool enable = false;
  late String userId;
  late String organizationId;
  factory SMHBeaconManager() {
    return manager;
  }
  Map<String, String> commonParams = {};
  SMHBeaconManager._internal() {
    init();
  }

  void init() {}

  Future<void> initBeaconSDK({
    required String userId,
    required String organizationId,
    bool isDebug = false,
  }) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    if (Platform.isIOS) {
      commonParams['flutter_platform'] = 'ios';
      appKey = iosAppKey;
    }

    if (Platform.isAndroid) {
      commonParams['flutter_platform'] = 'android';
      appKey = androidAppKey;
    }
    commonParams['organization_id'] = organizationId;
    commonParams['user_id'] = userId;
    commonParams['smh_boundle_id'] = packageInfo.packageName;
    commonParams['app_name'] = packageInfo.appName;
    commonParams['smhsdk_version'] = sdkVersion;
    commonParams['smhsdk_version_code'] = sdkVersion;
  }

  reportFail({
    required Map<String, String> params,
    String eventCode = 'base_service',
    int eventType = 0,
  }) async {
    if (enable == false) {
      return;
    }
    params.addAll(commonParams);

    Connectivity connectivity = Connectivity();
    ConnectivityResult result = await connectivity.checkConnectivity(); // 网络状态；
    if (result == ConnectivityResult.wifi) {
      params['network_type'] = 'WIFI';
    }
    if (result == ConnectivityResult.mobile) {
      params['network_type'] = 'WWAN';
    }
    if (result == ConnectivityResult.none) {
      params['network_type'] = 'NONE';
    }
    params['event_result'] = 'Failure';
  }

  reportSuccess({
    required Map<String, String> params,
    String eventCode = 'base_service',
    int? eventType,
  }) async {
    if (enable == false) {
      return;
    }
    params.addAll(commonParams);
    Connectivity connectivity = Connectivity();
    ConnectivityResult result = await connectivity.checkConnectivity(); // 网络状态；
    if (result == ConnectivityResult.wifi) {
      params['network_type'] = 'WIFI';
    }
    if (result == ConnectivityResult.mobile) {
      params['network_type'] = 'WWAN';
    }
    if (result == ConnectivityResult.none) {
      params['network_type'] = 'NONE';
    }
    params['event_result'] = 'Success';
  }
}

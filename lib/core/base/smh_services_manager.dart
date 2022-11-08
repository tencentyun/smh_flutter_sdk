import 'package:smh_flutter_sdk/beacon/smh_beacon_manager.dart';

import 'smh_service.dart';

class SMHServicesManager {
  static final SMHServicesManager servicesManager =
      SMHServicesManager._internal();

  late SMHHostType currentType;
  late String currentHost;
  factory SMHServicesManager() {
    return servicesManager;
  }

  void init() {}

  Map<String, SMHService> serviceMap = {};
  SMHServicesManager._internal() {
    init();
  }

  /// 设置网络环境以及请求host;
  void configHostWithEnv(String url, SMHHostType type) {
    for (SMHService service in serviceMap.values) {
      service.configBaseHostWithEnv(url, type);
    }
  }

  /// 设置当前网络环境
  void setupCurrentEnv(SMHHostType type) {
    for (SMHService service in serviceMap.values) {
      service.setupCurrentHostEnv(type);
      currentHost = service.baseUrl;
      currentType = type;
    }
  }

  /// 注册SMH服务，
  void registerService(SMHService service) {
    service.initDio();
    serviceMap[service.serviceKey()] = service;
  }

  /// 初始化灯塔sdk
  /// 若集成不含灯塔版本SDK，则不用初始化灯塔
  Future<void> initBeaconSDK({
    required String userId,
    required String organizationId,
    bool isDebug = false,
  }) async {
    await SMHBeaconManager()
        .initBeaconSDK(userId: userId, organizationId: organizationId);
  }
}

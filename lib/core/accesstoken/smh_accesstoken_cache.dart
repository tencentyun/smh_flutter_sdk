import 'package:smh_flutter_sdk/model/user_model/s_m_h_access_token_entity.dart';

class SMHAccessTokenCache {
  static final SMHAccessTokenCache manager = SMHAccessTokenCache._internal();

  factory SMHAccessTokenCache() {
    return manager;
  }
  void init() {}
  Map<String, SMHAccessTokenCacheItem> cache = {};
  SMHAccessTokenCache._internal() {
    init();
  }

  updateCache(SMHAccessTokenEntity entity) {
    String key = entity.spaceId ?? '-';
    cache[key] = SMHAccessTokenCacheItem(entity, DateTime.now());
  }

  String? queryAccessToken(String spaceId) {
    SMHAccessTokenCacheItem? item = cache[spaceId];
    if (item == null || item.isAvailable() == false) {
      return null;
    }
    return item.entity.accessToken;
  }

  clean() {
    cache.clear();
  }
}

class SMHAccessTokenCacheItem {
  late SMHAccessTokenEntity entity;
  late DateTime dateTime;
  SMHAccessTokenCacheItem(this.entity, this.dateTime);

  bool isAvailable() {
    return DateTime.now()
        .isBefore(dateTime.add(Duration(seconds: entity.expiresIn! - 60)));
  }
}

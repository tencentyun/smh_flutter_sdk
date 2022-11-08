import 'package:smh_flutter_sdk/model/user_model/s_m_h_access_token_entity.dart';

abstract class SMHRefreshAccessTokenHander {
  Future<SMHAccessTokenEntity?>? refreshAccessToken(
      String? spaceId, String? spaceOrgId);
}

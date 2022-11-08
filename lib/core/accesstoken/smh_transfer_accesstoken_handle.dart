import 'package:smh_flutter_sdk/apis/user_apis/smh_user_space_apis.dart';
import 'package:smh_flutter_sdk/core/accesstoken/smh_refresh_accesstoken_handler.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_access_token_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';

class SMHTransferAccessTokenHandle extends SMHRefreshAccessTokenHander {
  String? orgId;
  String? userToken;

  SMHTransferAccessTokenHandle(this.orgId, this.userToken);

  @override
  Future<SMHAccessTokenEntity?>? refreshAccessToken(
      String? spaceId, String? spaceOrgId) async {
    if (this.orgId == null || this.userToken == null) {
      return null;
    }
    return Future<SMHAccessTokenEntity?>.microtask(() async {
      if (spaceId == null) {
        SMHResponse? base;
        try {
          base = await SMHUserSpaceApis.getUserInfoAndAccessToken(
              organizationId: this.orgId!, userToken: this.userToken!);
        } catch (e) {
          throw e;
        }
        return base?.data;
      } else {
        SMHResponse? base;
        try {
          base = await SMHUserSpaceApis.getSpaceAccessToken(
              organizationId: this.orgId!,
              userToken: this.userToken!,
              spaceId: spaceId,
              spaceOrgId: spaceOrgId);
        } catch (e) {
          throw e;
        }

        return base?.data;
      }
    });
  }
}

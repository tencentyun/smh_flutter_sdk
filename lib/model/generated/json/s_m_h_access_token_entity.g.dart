import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_access_token_entity.dart';

SMHAccessTokenEntity $SMHAccessTokenEntityFromJson(Map<String, dynamic> json) {
  final SMHAccessTokenEntity sMHAccessTokenEntity = SMHAccessTokenEntity();
  final String? libraryId = jsonConvert.convert<String>(json['libraryId']);
  if (libraryId != null) {
    sMHAccessTokenEntity.libraryId = libraryId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHAccessTokenEntity.spaceId = spaceId;
  }
  final String? accessToken = jsonConvert.convert<String>(json['accessToken']);
  if (accessToken != null) {
    sMHAccessTokenEntity.accessToken = accessToken;
  }
  final int? expiresIn = jsonConvert.convert<int>(json['expiresIn']);
  if (expiresIn != null) {
    sMHAccessTokenEntity.expiresIn = expiresIn;
  }
  return sMHAccessTokenEntity;
}

Map<String, dynamic> $SMHAccessTokenEntityToJson(SMHAccessTokenEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['libraryId'] = entity.libraryId;
  data['spaceId'] = entity.spaceId;
  data['accessToken'] = entity.accessToken;
  data['expiresIn'] = entity.expiresIn;
  return data;
}

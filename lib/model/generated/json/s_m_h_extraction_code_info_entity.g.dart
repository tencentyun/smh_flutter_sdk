import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_extraction_code_info_entity.dart';

SMHExtractionCodeInfoEntity $SMHExtractionCodeInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHExtractionCodeInfoEntity sMHExtractionCodeInfoEntity =
      SMHExtractionCodeInfoEntity();
  final String? libraryId = jsonConvert.convert<String>(json['libraryId']);
  if (libraryId != null) {
    sMHExtractionCodeInfoEntity.libraryId = libraryId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHExtractionCodeInfoEntity.spaceId = spaceId;
  }
  final String? accessToken = jsonConvert.convert<String>(json['accessToken']);
  if (accessToken != null) {
    sMHExtractionCodeInfoEntity.accessToken = accessToken;
  }
  final int? expiresIn = jsonConvert.convert<int>(json['expiresIn']);
  if (expiresIn != null) {
    sMHExtractionCodeInfoEntity.expiresIn = expiresIn;
  }
  return sMHExtractionCodeInfoEntity;
}

Map<String, dynamic> $SMHExtractionCodeInfoEntityToJson(
    SMHExtractionCodeInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['libraryId'] = entity.libraryId;
  data['spaceId'] = entity.spaceId;
  data['accessToken'] = entity.accessToken;
  data['expiresIn'] = entity.expiresIn;
  return data;
}

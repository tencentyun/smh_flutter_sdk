import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_extra_info_entity.dart';

SMHFileExtraInfoEntity $SMHFileExtraInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHFileExtraInfoEntity sMHFileExtraInfoEntity =
      SMHFileExtraInfoEntity();
  final int? spaceOrgId = jsonConvert.convert<int>(json['spaceOrgId']);
  if (spaceOrgId != null) {
    sMHFileExtraInfoEntity.spaceOrgId = spaceOrgId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHFileExtraInfoEntity.spaceId = spaceId;
  }
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    sMHFileExtraInfoEntity.path = path;
  }
  final int? favoriteId = jsonConvert.convert<int>(json['favoriteId']);
  if (favoriteId != null) {
    sMHFileExtraInfoEntity.favoriteId = favoriteId;
  }
  final int? favoriteGroupId =
      jsonConvert.convert<int>(json['favoriteGroupId']);
  if (favoriteGroupId != null) {
    sMHFileExtraInfoEntity.favoriteGroupId = favoriteGroupId;
  }
  final bool? isAuthorized = jsonConvert.convert<bool>(json['isAuthorized']);
  if (isAuthorized != null) {
    sMHFileExtraInfoEntity.isAuthorized = isAuthorized;
  }
  final int? authType = jsonConvert.convert<int>(json['authType']);
  if (authType != null) {
    sMHFileExtraInfoEntity.authType = authType;
  }
  return sMHFileExtraInfoEntity;
}

Map<String, dynamic> $SMHFileExtraInfoEntityToJson(
    SMHFileExtraInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['spaceOrgId'] = entity.spaceOrgId;
  data['spaceId'] = entity.spaceId;
  data['path'] = entity.path;
  data['favoriteId'] = entity.favoriteId;
  data['favoriteGroupId'] = entity.favoriteGroupId;
  data['isAuthorized'] = entity.isAuthorized;
  data['authType'] = entity.authType;
  return data;
}

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_file_authority_item_entity.dart';

SMHFileAuthorityItemEntity $SMHFileAuthorityItemEntityFromJson(
    Map<String, dynamic> json) {
  final SMHFileAuthorityItemEntity sMHFileAuthorityItemEntity =
      SMHFileAuthorityItemEntity();
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHFileAuthorityItemEntity.userId = userId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHFileAuthorityItemEntity.spaceId = spaceId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHFileAuthorityItemEntity.name = name;
  }
  final int? roleId = jsonConvert.convert<int>(json['roleId']);
  if (roleId != null) {
    sMHFileAuthorityItemEntity.roleId = roleId;
  }
  return sMHFileAuthorityItemEntity;
}

Map<String, dynamic> $SMHFileAuthorityItemEntityToJson(
    SMHFileAuthorityItemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['userId'] = entity.userId;
  data['spaceId'] = entity.spaceId;
  data['name'] = entity.name;
  data['roleId'] = entity.roleId;
  return data;
}

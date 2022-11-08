import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_space_tag_size_info_entity.dart';

SMHSpaceTagSizeInfoEntity $SMHSpaceTagSizeInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHSpaceTagSizeInfoEntity sMHSpaceTagSizeInfoEntity =
      SMHSpaceTagSizeInfoEntity();
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHSpaceTagSizeInfoEntity.size = size;
  }
  final String? spaceTag = jsonConvert.convert<String>(json['spaceTag']);
  if (spaceTag != null) {
    sMHSpaceTagSizeInfoEntity.spaceTag = SMHSpaceTag.values.byName(spaceTag);
  }

  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHSpaceTagSizeInfoEntity.spaceId = spaceId;
  }

  return sMHSpaceTagSizeInfoEntity;
}

Map<String, dynamic> $SMHSpaceTagSizeInfoEntityToJson(
    SMHSpaceTagSizeInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['size'] = entity.size;
  data['spaceId'] = entity.spaceId;
  data['spaceTag'] = entity.spaceTag?.name;
  return data;
}

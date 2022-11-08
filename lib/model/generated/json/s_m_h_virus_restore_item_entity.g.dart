import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_virus_restore_item_entity.dart';

SMHVirusRestoreItemEntity $SMHVirusRestoreItemEntityFromJson(
    Map<String, dynamic> json) {
  final SMHVirusRestoreItemEntity sMHVirusRestoreItemEntity =
      SMHVirusRestoreItemEntity();
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHVirusRestoreItemEntity.spaceId = spaceId;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHVirusRestoreItemEntity.path = path;
  }
  return sMHVirusRestoreItemEntity;
}

Map<String, dynamic> $SMHVirusRestoreItemEntityToJson(
    SMHVirusRestoreItemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['spaceId'] = entity.spaceId;
  data['path'] = entity.path;
  return data;
}

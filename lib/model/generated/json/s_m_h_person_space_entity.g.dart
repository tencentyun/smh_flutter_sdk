import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_person_space_entity.dart';

SMHPersonSpaceEntity $SMHPersonSpaceEntityFromJson(Map<String, dynamic> json) {
  final SMHPersonSpaceEntity sMHPersonSpaceEntity = SMHPersonSpaceEntity();
  final bool? hasPersonalSpace =
      jsonConvert.convert<bool>(json['hasPersonalSpace']);
  if (hasPersonalSpace != null) {
    sMHPersonSpaceEntity.hasPersonalSpace = hasPersonalSpace;
  }
  final String? capacity = jsonConvert.convert<String>(json['capacity']);
  if (capacity != null) {
    sMHPersonSpaceEntity.capacity = capacity;
  }
  final String? availableSpace =
      jsonConvert.convert<String>(json['availableSpace']);
  if (availableSpace != null) {
    sMHPersonSpaceEntity.availableSpace = availableSpace;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHPersonSpaceEntity.size = size;
  }
  return sMHPersonSpaceEntity;
}

Map<String, dynamic> $SMHPersonSpaceEntityToJson(SMHPersonSpaceEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['hasPersonalSpace'] = entity.hasPersonalSpace;
  data['capacity'] = entity.capacity;
  data['availableSpace'] = entity.availableSpace;
  data['size'] = entity.size;
  return data;
}

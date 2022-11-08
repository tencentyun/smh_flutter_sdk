import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_tag_item_entity.dart';

SMHTagItemEntity $SMHTagItemEntityFromJson(Map<String, dynamic> json) {
  final SMHTagItemEntity sMHTagItemEntity = SMHTagItemEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHTagItemEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHTagItemEntity.name = name;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    sMHTagItemEntity.type = type;
  }
  return sMHTagItemEntity;
}

Map<String, dynamic> $SMHTagItemEntityToJson(SMHTagItemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['type'] = entity.type;
  return data;
}

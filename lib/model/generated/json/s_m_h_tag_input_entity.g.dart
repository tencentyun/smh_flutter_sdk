import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_tag_input_entity.dart';

SMHTagInputEntity $SMHTagInputEntityFromJson(Map<String, dynamic> json) {
  final SMHTagInputEntity sMHTagInputEntity = SMHTagInputEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHTagInputEntity.id = id;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    sMHTagInputEntity.value = value;
  }
  return sMHTagInputEntity;
}

Map<String, dynamic> $SMHTagInputEntityToJson(SMHTagInputEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['value'] = entity.value;
  return data;
}

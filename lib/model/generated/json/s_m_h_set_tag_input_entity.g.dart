import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_set_tag_input_entity.dart';

SMHSetTagInputEntity $SMHSetTagInputEntityFromJson(Map<String, dynamic> json) {
  final SMHSetTagInputEntity sMHSetTagInputEntity = SMHSetTagInputEntity();
  final int? tagId = jsonConvert.convert<int>(json['tagId']);
  if (tagId != null) {
    sMHSetTagInputEntity.tagId = tagId;
  }
  final String? tagName = jsonConvert.convert<String>(json['tagName']);
  if (tagName != null) {
    sMHSetTagInputEntity.tagName = tagName;
  }
  final String? tagValue = jsonConvert.convert<String>(json['tagValue']);
  if (tagValue != null) {
    sMHSetTagInputEntity.tagValue = tagValue;
  }
  return sMHSetTagInputEntity;
}

Map<String, dynamic> $SMHSetTagInputEntityToJson(SMHSetTagInputEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['tagId'] = entity.tagId;
  data['tagName'] = entity.tagName;
  data['tagValue'] = entity.tagValue;
  return data;
}

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_file_tag_list_entity.dart';

SMHFileTagListEntity $SMHFileTagListEntityFromJson(Map<String, dynamic> json) {
  final SMHFileTagListEntity sMHFileTagListEntity = SMHFileTagListEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHFileTagListEntity.id = id;
  }
  final String? tagName = jsonConvert.convert<String>(json['tagName']);
  if (tagName != null) {
    sMHFileTagListEntity.tagName = tagName;
  }
  final int? tagType = jsonConvert.convert<int>(json['tagType']);
  if (tagType != null) {
    sMHFileTagListEntity.tagType = tagType;
  }
  return sMHFileTagListEntity;
}

Map<String, dynamic> $SMHFileTagListEntityToJson(SMHFileTagListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['tagName'] = entity.tagName;
  data['tagType'] = entity.tagType;
  return data;
}

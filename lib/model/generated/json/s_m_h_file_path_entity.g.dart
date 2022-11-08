import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_file_path_entity.dart';

SMHFilePathEntity $SMHFilePathEntityFromJson(Map<String, dynamic> json) {
  final SMHFilePathEntity sMHFilePathEntity = SMHFilePathEntity();
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHFilePathEntity.path = path;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHFilePathEntity.creationTime = creationTime;
  }
  return sMHFilePathEntity;
}

Map<String, dynamic> $SMHFilePathEntityToJson(SMHFilePathEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['path'] = entity.path;
  data['creationTime'] = entity.creationTime;
  return data;
}

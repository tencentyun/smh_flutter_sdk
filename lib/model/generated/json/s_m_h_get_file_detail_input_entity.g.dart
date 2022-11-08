import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_get_file_detail_input_entity.dart';

SMHGetFileDetailInputEntity $SMHGetFileDetailInputEntityFromJson(
    Map<String, dynamic> json) {
  final SMHGetFileDetailInputEntity sMHGetFileDetailInputEntity =
      SMHGetFileDetailInputEntity();
  final int? spaceOrgId = jsonConvert.convert<int>(json['spaceOrgId']);
  if (spaceOrgId != null) {
    sMHGetFileDetailInputEntity.spaceOrgId = spaceOrgId;
  }
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    sMHGetFileDetailInputEntity.path = path;
  }
  return sMHGetFileDetailInputEntity;
}

Map<String, dynamic> $SMHGetFileDetailInputEntityToJson(
    SMHGetFileDetailInputEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['spaceOrgId'] = entity.spaceOrgId;
  data['path'] = entity.path;
  return data;
}

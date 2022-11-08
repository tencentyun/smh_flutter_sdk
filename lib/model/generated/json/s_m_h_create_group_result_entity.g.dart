import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_create_group_result_entity.dart';

SMHCreateGroupResultEntity $SMHCreateGroupResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHCreateGroupResultEntity sMHCreateGroupResultEntity =
      SMHCreateGroupResultEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHCreateGroupResultEntity.id = id;
  }
  return sMHCreateGroupResultEntity;
}

Map<String, dynamic> $SMHCreateGroupResultEntityToJson(
    SMHCreateGroupResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  return data;
}

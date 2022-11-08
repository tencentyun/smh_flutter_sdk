import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_delete_file_result_entity.dart';

SMHDeleteFileResultEntity $SMHDeleteFileResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHDeleteFileResultEntity sMHDeleteFileResultEntity =
      SMHDeleteFileResultEntity();
  final int? recycledItemId = jsonConvert.convert<int>(json['recycledItemId']);
  if (recycledItemId != null) {
    sMHDeleteFileResultEntity.recycledItemId = recycledItemId;
  }
  return sMHDeleteFileResultEntity;
}

Map<String, dynamic> $SMHDeleteFileResultEntityToJson(
    SMHDeleteFileResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['recycledItemId'] = entity.recycledItemId;
  return data;
}

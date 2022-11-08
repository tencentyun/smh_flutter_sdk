import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_create_favorite_result_entity.dart';

SMHCreateFavoriteResultEntity $SMHCreateFavoriteResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHCreateFavoriteResultEntity sMHCreateFavoriteResultEntity =
      SMHCreateFavoriteResultEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHCreateFavoriteResultEntity.id = id;
  }
  return sMHCreateFavoriteResultEntity;
}

Map<String, dynamic> $SMHCreateFavoriteResultEntityToJson(
    SMHCreateFavoriteResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  return data;
}

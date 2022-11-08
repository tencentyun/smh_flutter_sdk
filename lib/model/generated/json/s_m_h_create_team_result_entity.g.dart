import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_create_team_result_entity.dart';

SMHCreateTeamResultEntity $SMHCreateTeamResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHCreateTeamResultEntity sMHCreateTeamResultEntity =
      SMHCreateTeamResultEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHCreateTeamResultEntity.id = id;
  }
  return sMHCreateTeamResultEntity;
}

Map<String, dynamic> $SMHCreateTeamResultEntityToJson(
    SMHCreateTeamResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  return data;
}

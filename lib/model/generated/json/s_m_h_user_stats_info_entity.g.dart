import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_stats_info_entity.dart';

SMHUserStatsInfoEntity $SMHUserStatsInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHUserStatsInfoEntity sMHUserStatsInfoEntity =
      SMHUserStatsInfoEntity();
  final int? userLimit = jsonConvert.convert<int>(json['userLimit']);
  if (userLimit != null) {
    sMHUserStatsInfoEntity.userLimit = userLimit;
  }
  final int? currentUser = jsonConvert.convert<int>(json['currentUser']);
  if (currentUser != null) {
    sMHUserStatsInfoEntity.currentUser = currentUser;
  }
  return sMHUserStatsInfoEntity;
}

Map<String, dynamic> $SMHUserStatsInfoEntityToJson(
    SMHUserStatsInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['userLimit'] = entity.userLimit;
  data['currentUser'] = entity.currentUser;
  return data;
}

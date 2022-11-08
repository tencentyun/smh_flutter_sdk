import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_space_quota_info_entity.dart';

SMHSpaceQuotaInfoEntity $SMHSpaceQuotaInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHSpaceQuotaInfoEntity sMHSpaceQuotaInfoEntity =
      SMHSpaceQuotaInfoEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHSpaceQuotaInfoEntity.id = id;
  }
  final String? capacity = jsonConvert.convert<String>(json['capacity']);
  if (capacity != null) {
    sMHSpaceQuotaInfoEntity.capacity = capacity;
  }
  return sMHSpaceQuotaInfoEntity;
}

Map<String, dynamic> $SMHSpaceQuotaInfoEntityToJson(
    SMHSpaceQuotaInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['capacity'] = entity.capacity;
  return data;
}

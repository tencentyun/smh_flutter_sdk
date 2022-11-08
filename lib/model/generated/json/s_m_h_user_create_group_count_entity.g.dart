import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_create_group_count_entity.dart';

SMHUserCreateGroupCountEntity $SMHUserCreateGroupCountEntityFromJson(
    Map<String, dynamic> json) {
  final SMHUserCreateGroupCountEntity sMHUserCreateGroupCountEntity =
      SMHUserCreateGroupCountEntity();
  final int? ownerId = jsonConvert.convert<int>(json['ownerId']);
  if (ownerId != null) {
    sMHUserCreateGroupCountEntity.ownerId = ownerId;
  }
  final int? count = jsonConvert.convert<int>(json['count']);
  if (count != null) {
    sMHUserCreateGroupCountEntity.count = count;
  }
  return sMHUserCreateGroupCountEntity;
}

Map<String, dynamic> $SMHUserCreateGroupCountEntityToJson(
    SMHUserCreateGroupCountEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ownerId'] = entity.ownerId;
  data['count'] = entity.count;
  return data;
}

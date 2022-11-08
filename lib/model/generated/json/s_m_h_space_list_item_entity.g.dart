import 'package:smh_flutter_sdk/model/api_model/s_m_h_space_list_item_entity.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_convert_content.dart';

SMHSpaceListItemEntity $SMHSpaceListItemEntityFromJson(
    Map<String, dynamic> json) {
  final SMHSpaceListItemEntity sMHSpaceListItemEntity =
      SMHSpaceListItemEntity();
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHSpaceListItemEntity.spaceId = spaceId;
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHSpaceListItemEntity.userId = userId;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHSpaceListItemEntity.creationTime = creationTime;
  }
  return sMHSpaceListItemEntity;
}

Map<String, dynamic> $SMHSpaceListItemEntityToJson(
    SMHSpaceListItemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['spaceId'] = entity.spaceId;
  data['userId'] = entity.userId;
  data['creationTime'] = entity.creationTime;
  return data;
}

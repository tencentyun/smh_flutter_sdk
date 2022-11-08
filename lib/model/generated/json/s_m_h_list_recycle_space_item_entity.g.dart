import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_list_recycle_space_item_entity.dart';

SMHListRecycleSpaceItemEntity $SMHListRecycleSpaceItemEntityFromJson(
    Map<String, dynamic> json) {
  final SMHListRecycleSpaceItemEntity sMHListRecycleSpaceItemEntity =
      SMHListRecycleSpaceItemEntity();
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHListRecycleSpaceItemEntity.spaceId = spaceId;
  }
  final bool? includeChildSpace =
      jsonConvert.convert<bool>(json['includeChildSpace']);
  if (includeChildSpace != null) {
    sMHListRecycleSpaceItemEntity.includeChildSpace = includeChildSpace;
  }
  return sMHListRecycleSpaceItemEntity;
}

Map<String, dynamic> $SMHListRecycleSpaceItemEntityToJson(
    SMHListRecycleSpaceItemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['spaceId'] = entity.spaceId;
  data['includeChildSpace'] = entity.includeChildSpace;
  return data;
}

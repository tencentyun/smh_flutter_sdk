import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_recycle_input_item_entity.dart';

SMHRecycleInputItemEntity $SMHRecycleInputItemEntityFromJson(
    Map<String, dynamic> json) {
  final SMHRecycleInputItemEntity sMHRecycleInputItemEntity =
      SMHRecycleInputItemEntity();
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHRecycleInputItemEntity.spaceId = spaceId;
  }
  final int? recycledItemId = jsonConvert.convert<int>(json['recycledItemId']);
  if (recycledItemId != null) {
    sMHRecycleInputItemEntity.recycledItemId = recycledItemId;
  }
  return sMHRecycleInputItemEntity;
}

Map<String, dynamic> $SMHRecycleInputItemEntityToJson(
    SMHRecycleInputItemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['spaceId'] = entity.spaceId;
  data['recycledItemId'] = entity.recycledItemId;
  return data;
}

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_batch_delete_input_entity.dart';

SMHBatchDeleteInputEntity $SMHBatchDeleteInputEntityFromJson(
    Map<String, dynamic> json) {
  final SMHBatchDeleteInputEntity sMHBatchDeleteInputEntity =
      SMHBatchDeleteInputEntity();
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    sMHBatchDeleteInputEntity.path = path;
  }
  final bool? permanent = jsonConvert.convert<bool>(json['permanent']);
  if (permanent != null) {
    sMHBatchDeleteInputEntity.permanent = permanent;
  }
  return sMHBatchDeleteInputEntity;
}

Map<String, dynamic> $SMHBatchDeleteInputEntityToJson(
    SMHBatchDeleteInputEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['path'] = entity.path;
  data['permanent'] = entity.permanent;
  return data;
}

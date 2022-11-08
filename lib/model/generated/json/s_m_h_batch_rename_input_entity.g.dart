import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_batch_rename_input_entity.dart';

SMHBatchRenameInputEntity $SMHBatchRenameInputEntityFromJson(
    Map<String, dynamic> json) {
  final SMHBatchRenameInputEntity sMHBatchRenameInputEntity =
      SMHBatchRenameInputEntity();
  final String? from = jsonConvert.convert<String>(json['from']);
  if (from != null) {
    sMHBatchRenameInputEntity.from = from;
  }
  final String? to = jsonConvert.convert<String>(json['to']);
  if (to != null) {
    sMHBatchRenameInputEntity.to = to;
  }
  final bool? moveAuthority = jsonConvert.convert<bool>(json['moveAuthority']);
  if (moveAuthority != null) {
    sMHBatchRenameInputEntity.moveAuthority = moveAuthority;
  }
  final String? conflictResolutionStrategy =
      jsonConvert.convert<String>(json['conflictResolutionStrategy']);
  if (conflictResolutionStrategy != null) {
    sMHBatchRenameInputEntity.conflictResolutionStrategy =
        conflictResolutionStrategy;
  }
  return sMHBatchRenameInputEntity;
}

Map<String, dynamic> $SMHBatchRenameInputEntityToJson(
    SMHBatchRenameInputEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['from'] = entity.from;
  data['to'] = entity.to;
  data['moveAuthority'] = entity.moveAuthority;
  data['conflictResolutionStrategy'] = entity.conflictResolutionStrategy;
  return data;
}

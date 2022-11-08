import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_batch_copy_input_entity.dart';

SMHBatchCopyInputEntity $SMHBatchCopyInputEntityFromJson(
    Map<String, dynamic> json) {
  final SMHBatchCopyInputEntity sMHBatchCopyInputEntity =
      SMHBatchCopyInputEntity();
  final String? copyFromLibraryId =
      jsonConvert.convert<String>(json['copyFromLibraryId']);
  if (copyFromLibraryId != null) {
    sMHBatchCopyInputEntity.copyFromLibraryId = copyFromLibraryId;
  }
  final String? copyFromSpaceId =
      jsonConvert.convert<String>(json['copyFromSpaceId']);
  if (copyFromSpaceId != null) {
    sMHBatchCopyInputEntity.copyFromSpaceId = copyFromSpaceId;
  }
  final String? copyFrom = jsonConvert.convert<String>(json['copyFrom']);
  if (copyFrom != null) {
    sMHBatchCopyInputEntity.copyFrom = copyFrom;
  }
  final String? to = jsonConvert.convert<String>(json['to']);
  if (to != null) {
    sMHBatchCopyInputEntity.to = to;
  }
  final String? conflictResolutionStrategy =
      jsonConvert.convert<String>(json['conflictResolutionStrategy']);
  if (conflictResolutionStrategy != null) {
    sMHBatchCopyInputEntity.conflictResolutionStrategy =
        SMHConflictResolutionStrategy.values.byName(conflictResolutionStrategy);
  }
  return sMHBatchCopyInputEntity;
}

Map<String, dynamic> $SMHBatchCopyInputEntityToJson(
    SMHBatchCopyInputEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['copyFromLibraryId'] = entity.copyFromLibraryId;
  data['copyFromSpaceId'] = entity.copyFromSpaceId;
  data['copyFrom'] = entity.copyFrom;
  data['to'] = entity.to;
  data['conflictResolutionStrategy'] = entity.conflictResolutionStrategy?.name;
  return data;
}

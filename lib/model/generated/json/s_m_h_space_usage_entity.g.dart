import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_space_usage_entity.dart';

SMHSpaceUsageEntity $SMHSpaceUsageEntityFromJson(Map<String, dynamic> json) {
  final SMHSpaceUsageEntity sMHSpaceUsageEntity = SMHSpaceUsageEntity();
  final String? capacity = jsonConvert.convert<String>(json['capacity']);
  if (capacity != null) {
    sMHSpaceUsageEntity.capacity = capacity;
  }
  final String? availableSpace =
      jsonConvert.convert<String>(json['availableSpace']);
  if (availableSpace != null) {
    sMHSpaceUsageEntity.availableSpace = availableSpace;
  }
  final String? totalAllocatedSpaceQuota =
      jsonConvert.convert<String>(json['totalAllocatedSpaceQuota']);
  if (totalAllocatedSpaceQuota != null) {
    sMHSpaceUsageEntity.totalAllocatedSpaceQuota = totalAllocatedSpaceQuota;
  }
  final String? totalFileSize =
      jsonConvert.convert<String>(json['totalFileSize']);
  if (totalFileSize != null) {
    sMHSpaceUsageEntity.totalFileSize = totalFileSize;
  }
  return sMHSpaceUsageEntity;
}

Map<String, dynamic> $SMHSpaceUsageEntityToJson(SMHSpaceUsageEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['capacity'] = entity.capacity;
  data['availableSpace'] = entity.availableSpace;
  data['totalAllocatedSpaceQuota'] = entity.totalAllocatedSpaceQuota;
  data['totalFileSize'] = entity.totalFileSize;
  return data;
}

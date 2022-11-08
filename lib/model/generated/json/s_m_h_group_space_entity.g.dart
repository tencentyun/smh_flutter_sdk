import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_space_entity.dart';

SMHGroupSpaceEntity $SMHGroupSpaceEntityFromJson(Map<String, dynamic> json) {
  final SMHGroupSpaceEntity sMHGroupSpaceEntity = SMHGroupSpaceEntity();
  final bool? shareLibraryQuota =
      jsonConvert.convert<bool>(json['shareLibraryQuota']);
  if (shareLibraryQuota != null) {
    sMHGroupSpaceEntity.shareLibraryQuota = shareLibraryQuota;
  }
  final String? libraryId = jsonConvert.convert<String>(json['libraryId']);
  if (libraryId != null) {
    sMHGroupSpaceEntity.libraryId = libraryId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHGroupSpaceEntity.spaceId = spaceId;
  }
  final String? capacity = jsonConvert.convert<String>(json['capacity']);
  if (capacity != null) {
    sMHGroupSpaceEntity.capacity = capacity;
  }
  final String? availableSpace =
      jsonConvert.convert<String>(json['availableSpace']);
  if (availableSpace != null) {
    sMHGroupSpaceEntity.availableSpace = availableSpace;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHGroupSpaceEntity.size = size;
  }
  return sMHGroupSpaceEntity;
}

Map<String, dynamic> $SMHGroupSpaceEntityToJson(SMHGroupSpaceEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['shareLibraryQuota'] = entity.shareLibraryQuota;
  data['libraryId'] = entity.libraryId;
  data['spaceId'] = entity.spaceId;
  data['capacity'] = entity.capacity;
  data['availableSpace'] = entity.availableSpace;
  data['size'] = entity.size;
  return data;
}

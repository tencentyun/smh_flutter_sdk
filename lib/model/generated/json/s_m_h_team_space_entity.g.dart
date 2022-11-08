import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_team_space_entity.dart';

SMHTeamSpaceEntity $SMHTeamSpaceEntityFromJson(Map<String, dynamic> json) {
  final SMHTeamSpaceEntity sMHTeamSpaceEntity = SMHTeamSpaceEntity();
  final String? libraryId = jsonConvert.convert<String>(json['libraryId']);
  if (libraryId != null) {
    sMHTeamSpaceEntity.libraryId = libraryId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHTeamSpaceEntity.spaceId = spaceId;
  }
  final String? capacity = jsonConvert.convert<String>(json['capacity']);
  if (capacity != null) {
    sMHTeamSpaceEntity.capacity = capacity;
  }
  final String? availableSpace =
      jsonConvert.convert<String>(json['availableSpace']);
  if (availableSpace != null) {
    sMHTeamSpaceEntity.availableSpace = availableSpace;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHTeamSpaceEntity.size = size;
  }
  return sMHTeamSpaceEntity;
}

Map<String, dynamic> $SMHTeamSpaceEntityToJson(SMHTeamSpaceEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['libraryId'] = entity.libraryId;
  data['spaceId'] = entity.spaceId;
  data['capacity'] = entity.capacity;
  data['availableSpace'] = entity.availableSpace;
  data['size'] = entity.size;
  return data;
}

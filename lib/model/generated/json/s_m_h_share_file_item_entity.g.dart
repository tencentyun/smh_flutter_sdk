import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_share_file_item_entity.dart';

SMHFileItemEntity $SMHFileItemEntityFromJson(Map<String, dynamic> json) {
  final SMHFileItemEntity sMHFileItemEntity = SMHFileItemEntity();
  final int? spaceOrgId = jsonConvert.convert<int>(json['spaceOrgId']);
  if (spaceOrgId != null) {
    sMHFileItemEntity.spaceOrgId = spaceOrgId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHFileItemEntity.spaceId = spaceId;
  }
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    sMHFileItemEntity.path = path;
  }
  final int? versionId = jsonConvert.convert<int>(json['versionId']);
  if (versionId != null) {
    sMHFileItemEntity.versionId = versionId;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHFileItemEntity.type = SMHFileType.byName(type);
  }
  return sMHFileItemEntity;
}

Map<String, dynamic> $SMHFileItemEntityToJson(SMHFileItemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['spaceOrgId'] = entity.spaceOrgId;
  data['spaceId'] = entity.spaceId;
  data['path'] = entity.path;
  data['versionId'] = entity.versionId;
  data['type'] = entity.type?.name;
  return data;
}

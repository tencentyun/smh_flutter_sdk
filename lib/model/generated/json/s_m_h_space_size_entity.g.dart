import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_space_size_entity.dart';

SMHSpaceSizeEntity $SMHSpaceSizeEntityFromJson(Map<String, dynamic> json) {
  final SMHSpaceSizeEntity sMHSpaceSizeEntity = SMHSpaceSizeEntity();
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHSpaceSizeEntity.size = size;
  }
  return sMHSpaceSizeEntity;
}

Map<String, dynamic> $SMHSpaceSizeEntityToJson(SMHSpaceSizeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['size'] = entity.size;
  return data;
}

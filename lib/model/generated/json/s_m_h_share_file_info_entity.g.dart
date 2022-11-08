import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_info_entity.dart';

SMHShareFileInfoEntity $SMHShareFileInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHShareFileInfoEntity sMHShareFileInfoEntity =
      SMHShareFileInfoEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHShareFileInfoEntity.id = id;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    sMHShareFileInfoEntity.url = url;
  }
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    sMHShareFileInfoEntity.code = code;
  }
  final bool? disabled = jsonConvert.convert<bool>(json['disabled']);
  if (disabled != null) {
    sMHShareFileInfoEntity.disabled = disabled;
  }
  final String? expireTime = jsonConvert.convert<String>(json['expireTime']);
  if (expireTime != null) {
    sMHShareFileInfoEntity.expireTime = expireTime;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHShareFileInfoEntity.creationTime = creationTime;
  }
  return sMHShareFileInfoEntity;
}

Map<String, dynamic> $SMHShareFileInfoEntityToJson(
    SMHShareFileInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['url'] = entity.url;
  data['code'] = entity.code;
  data['disabled'] = entity.disabled;
  data['expireTime'] = entity.expireTime;
  data['creationTime'] = entity.creationTime;
  return data;
}

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_login_qrcode_entity.dart';

SMHLoginQrcodeEntity $SMHLoginQrcodeEntityFromJson(Map<String, dynamic> json) {
  final SMHLoginQrcodeEntity sMHLoginQrcodeEntity = SMHLoginQrcodeEntity();
  final String? uuid = jsonConvert.convert<String>(json['uuid']);
  if (uuid != null) {
    sMHLoginQrcodeEntity.uuid = uuid;
  }
  return sMHLoginQrcodeEntity;
}

Map<String, dynamic> $SMHLoginQrcodeEntityToJson(SMHLoginQrcodeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['uuid'] = entity.uuid;
  return data;
}

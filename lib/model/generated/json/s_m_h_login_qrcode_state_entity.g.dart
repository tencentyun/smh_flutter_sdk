import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_login_qrcode_state_entity.dart';

SMHLoginQrcodeStateEntity $SMHLoginQrcodeStateEntityFromJson(
    Map<String, dynamic> json) {
  final SMHLoginQrcodeStateEntity sMHLoginQrcodeStateEntity =
      SMHLoginQrcodeStateEntity();
  final String? uuid = jsonConvert.convert<String>(json['uuid']);
  if (uuid != null) {
    sMHLoginQrcodeStateEntity.uuid = uuid;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    sMHLoginQrcodeStateEntity.status = SMHScanStatus.values.byName(status);
  }
  return sMHLoginQrcodeStateEntity;
}

Map<String, dynamic> $SMHLoginQrcodeStateEntityToJson(
    SMHLoginQrcodeStateEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['uuid'] = entity.uuid;
  data['status'] = entity.status?.name;
  return data;
}

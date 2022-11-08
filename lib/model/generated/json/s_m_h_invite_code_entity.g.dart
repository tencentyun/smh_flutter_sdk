import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_invite_code_entity.dart';

SMHInviteCodeEntity $SMHInviteCodeEntityFromJson(Map<String, dynamic> json) {
  final SMHInviteCodeEntity sMHInviteCodeEntity = SMHInviteCodeEntity();
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    sMHInviteCodeEntity.code = code;
  }
  return sMHInviteCodeEntity;
}

Map<String, dynamic> $SMHInviteCodeEntityToJson(SMHInviteCodeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  return data;
}

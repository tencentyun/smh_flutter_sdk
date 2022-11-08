import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_check_wechat_auth_result_entity.dart';

SMHCheckWechatAuthResultEntity $SMHCheckWechatAuthResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHCheckWechatAuthResultEntity sMHCheckWechatAuthResultEntity =
      SMHCheckWechatAuthResultEntity();
  final bool? available = jsonConvert.convert<bool>(json['available']);
  if (available != null) {
    sMHCheckWechatAuthResultEntity.available = available;
  }
  return sMHCheckWechatAuthResultEntity;
}

Map<String, dynamic> $SMHCheckWechatAuthResultEntityToJson(
    SMHCheckWechatAuthResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['available'] = entity.available;
  return data;
}

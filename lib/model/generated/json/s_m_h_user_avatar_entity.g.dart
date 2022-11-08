import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_avatar_entity.dart';

SMHUserAvatarEntity $SMHUserAvatarEntityFromJson(Map<String, dynamic> json) {
  final SMHUserAvatarEntity sMHUserAvatarEntity = SMHUserAvatarEntity();
  final String? avatar = jsonConvert.convert<String>(json['avatar']);
  if (avatar != null) {
    sMHUserAvatarEntity.avatar = avatar;
  }
  return sMHUserAvatarEntity;
}

Map<String, dynamic> $SMHUserAvatarEntityToJson(SMHUserAvatarEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['avatar'] = entity.avatar;
  return data;
}

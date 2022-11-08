import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_join_invite_result_entity.dart';

SMHJoinInviteResultEntity $SMHJoinInviteResultEntityFromJson(
    Map<String, dynamic> json) {
  final SMHJoinInviteResultEntity sMHJoinInviteResultEntity =
      SMHJoinInviteResultEntity();
  final bool? isSuccess = jsonConvert.convert<bool>(json['isSuccess']);
  if (isSuccess != null) {
    sMHJoinInviteResultEntity.isSuccess = isSuccess;
  }
  final bool? isNew = jsonConvert.convert<bool>(json['isNew']);
  if (isNew != null) {
    sMHJoinInviteResultEntity.isNew = isNew;
  }
  return sMHJoinInviteResultEntity;
}

Map<String, dynamic> $SMHJoinInviteResultEntityToJson(
    SMHJoinInviteResultEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['isSuccess'] = entity.isSuccess;
  data['isNew'] = entity.isNew;
  return data;
}

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_group_member_info_entity.dart';

SMHGroupMemberInfoEntity $SMHGroupMemberInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHGroupMemberInfoEntity sMHGroupMemberInfoEntity =
      SMHGroupMemberInfoEntity();
  final int? orgId = jsonConvert.convert<int>(json['orgId']);
  if (orgId != null) {
    sMHGroupMemberInfoEntity.orgId = orgId;
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHGroupMemberInfoEntity.userId = userId;
  }
  return sMHGroupMemberInfoEntity;
}

Map<String, dynamic> $SMHGroupMemberInfoEntityToJson(
    SMHGroupMemberInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['orgId'] = entity.orgId;
  data['userId'] = entity.userId;
  return data;
}

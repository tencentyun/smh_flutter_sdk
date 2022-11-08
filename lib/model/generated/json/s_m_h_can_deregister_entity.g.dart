import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_can_deregister_entity.dart';

SMHCanDeregisterEntity $SMHCanDeregisterEntityFromJson(
    Map<String, dynamic> json) {
  final SMHCanDeregisterEntity sMHCanDeregisterEntity =
      SMHCanDeregisterEntity();
  final bool? canDeregister = jsonConvert.convert<bool>(json['canDeregister']);
  if (canDeregister != null) {
    sMHCanDeregisterEntity.canDeregister = canDeregister;
  }
  final bool? hasGroup = jsonConvert.convert<bool>(json['hasGroup']);
  if (hasGroup != null) {
    sMHCanDeregisterEntity.hasGroup = hasGroup;
  }
  final bool? hasPersonalSpaceFile =
      jsonConvert.convert<bool>(json['hasPersonalSpaceFile']);
  if (hasPersonalSpaceFile != null) {
    sMHCanDeregisterEntity.hasPersonalSpaceFile = hasPersonalSpaceFile;
  }
  return sMHCanDeregisterEntity;
}

Map<String, dynamic> $SMHCanDeregisterEntityToJson(
    SMHCanDeregisterEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['canDeregister'] = entity.canDeregister;
  data['hasGroup'] = entity.hasGroup;
  data['hasPersonalSpaceFile'] = entity.hasPersonalSpaceFile;
  return data;
}

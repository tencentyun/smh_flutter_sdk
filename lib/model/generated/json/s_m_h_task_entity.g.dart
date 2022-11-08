import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_task_entity.dart';

SMHTaskEntity $SMHTaskEntityFromJson(Map<String, dynamic> json) {
  final SMHTaskEntity sMHTaskEntity = SMHTaskEntity();
  final int? taskId = jsonConvert.convert<int>(json['taskId']);
  if (taskId != null) {
    sMHTaskEntity.taskId = taskId;
  }
  return sMHTaskEntity;
}

Map<String, dynamic> $SMHTaskEntityToJson(SMHTaskEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['taskId'] = entity.taskId;
  return data;
}

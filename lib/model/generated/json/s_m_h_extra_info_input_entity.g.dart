import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_extra_info_input_entity.dart';

SMHExtraInfoInputEntity $SMHExtraInfoInputEntityFromJson(
    Map<String, dynamic> json) {
  final SMHExtraInfoInputEntity sMHExtraInfoInputEntity =
      SMHExtraInfoInputEntity();
  final int? spaceOrgId = jsonConvert.convert<int>(json['spaceOrgId']);
  if (spaceOrgId != null) {
    sMHExtraInfoInputEntity.spaceOrgId = spaceOrgId;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHExtraInfoInputEntity.spaceId = spaceId;
  }
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    sMHExtraInfoInputEntity.path = path;
  }
  final int? virusAuditStatus =
      jsonConvert.convert<int>(json['virusAuditStatus']);
  if (virusAuditStatus != null) {
    sMHExtraInfoInputEntity.virusAuditStatus =
        SMHVirusAuditStatus.values[virusAuditStatus];
  }
  return sMHExtraInfoInputEntity;
}

Map<String, dynamic> $SMHExtraInfoInputEntityToJson(
    SMHExtraInfoInputEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['spaceOrgId'] = entity.spaceOrgId;
  data['spaceId'] = entity.spaceId;
  data['path'] = entity.path;
  data['virusAuditStatus'] = entity.virusAuditStatus?.index;
  return data;
}

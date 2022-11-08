import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_recycle_item_info_entity.dart';

SMHRecycleItemInfoEntity $SMHRecycleItemInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHRecycleItemInfoEntity sMHRecycleItemInfoEntity =
      SMHRecycleItemInfoEntity();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHRecycleItemInfoEntity.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHRecycleItemInfoEntity.type = SMHFileType.byName(type);
  }
  final String? removalPerson =
      jsonConvert.convert<String>(json['removalPerson']);
  if (removalPerson != null) {
    sMHRecycleItemInfoEntity.removalPerson = removalPerson;
  }
  final String? creationPerson =
      jsonConvert.convert<String>(json['creationPerson']);
  if (creationPerson != null) {
    sMHRecycleItemInfoEntity.creationPerson = creationPerson;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHRecycleItemInfoEntity.size = size;
  }
  final String? removalTime = jsonConvert.convert<String>(json['removalTime']);
  if (removalTime != null) {
    sMHRecycleItemInfoEntity.removalTime = removalTime;
  }
  final String? remainingTime =
      jsonConvert.convert<String>(json['remainingTime']);
  if (remainingTime != null) {
    sMHRecycleItemInfoEntity.remainingTime = remainingTime;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHRecycleItemInfoEntity.path = path;
  }
  final String? spaceTag = jsonConvert.convert<String>(json['spaceTag']);
  if (spaceTag != null) {
    sMHRecycleItemInfoEntity.spaceTag = SMHSpaceTag.values.byName(spaceTag);
  }
  final SMHFileDetailContentsTeam? team =
      jsonConvert.convert<SMHFileDetailContentsTeam>(json['team']);
  if (team != null) {
    sMHRecycleItemInfoEntity.team = team;
  }
  final int? virusAuditStatus =
      jsonConvert.convert<int>(json['virusAuditStatus']);
  if (virusAuditStatus != null) {
    sMHRecycleItemInfoEntity.virusAuditStatus =
        SMHVirusAuditStatus.values[virusAuditStatus];
  }
  final String? virusName = jsonConvert.convert<String>(json['virusName']);
  if (virusName != null) {
    sMHRecycleItemInfoEntity.virusName = virusName;
  }
  final bool? canMarkAsNonVirus =
      jsonConvert.convert<bool>(json['canMarkAsNonVirus']);
  if (canMarkAsNonVirus != null) {
    sMHRecycleItemInfoEntity.canMarkAsNonVirus = canMarkAsNonVirus;
  }
  return sMHRecycleItemInfoEntity;
}

Map<String, dynamic> $SMHRecycleItemInfoEntityToJson(
    SMHRecycleItemInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type?.name;
  data['removalPerson'] = entity.removalPerson;
  data['creationPerson'] = entity.creationPerson;
  data['size'] = entity.size;
  data['removalTime'] = entity.removalTime;
  data['remainingTime'] = entity.remainingTime;
  data['path'] = entity.path;
  data['spaceTag'] = entity.spaceTag?.name;
  data['team'] = entity.team?.toJson();
  data['virusAuditStatus'] = entity.virusAuditStatus?.index;
  data['virusName'] = entity.virusName;
  data['canMarkAsNonVirus'] = entity.canMarkAsNonVirus;
  return data;
}

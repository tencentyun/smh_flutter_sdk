import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_organization_share_list_entity.dart';

SMHOrganizationShareListEntity $SMHOrganizationShareListEntityFromJson(
    Map<String, dynamic> json) {
  final SMHOrganizationShareListEntity sMHOrganizationShareListEntity =
      SMHOrganizationShareListEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHOrganizationShareListEntity.totalNum = totalNum;
  }
  final List<SMHOrganizationShareListContents>? contents = jsonConvert
      .convertListNotNull<SMHOrganizationShareListContents>(json['contents']);
  if (contents != null) {
    sMHOrganizationShareListEntity.contents = contents;
  }
  return sMHOrganizationShareListEntity;
}

Map<String, dynamic> $SMHOrganizationShareListEntityToJson(
    SMHOrganizationShareListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHOrganizationShareListContents $SMHOrganizationShareListContentsFromJson(
    Map<String, dynamic> json) {
  final SMHOrganizationShareListContents sMHOrganizationShareListContents =
      SMHOrganizationShareListContents();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHOrganizationShareListContents.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHOrganizationShareListContents.name = name;
  }
  final String? expireTime = jsonConvert.convert<String>(json['expireTime']);
  if (expireTime != null) {
    sMHOrganizationShareListContents.expireTime = expireTime;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHOrganizationShareListContents.creationTime = creationTime;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHOrganizationShareListContents.nickname = nickname;
  }
  final int? downloadCountUsed =
      jsonConvert.convert<int>(json['downloadCountUsed']);
  if (downloadCountUsed != null) {
    sMHOrganizationShareListContents.downloadCountUsed = downloadCountUsed;
  }
  final int? previewCountUsed =
      jsonConvert.convert<int>(json['previewCountUsed']);
  if (previewCountUsed != null) {
    sMHOrganizationShareListContents.previewCountUsed = previewCountUsed;
  }
  final int? downloadCount = jsonConvert.convert<int>(json['downloadCount']);
  if (downloadCount != null) {
    sMHOrganizationShareListContents.downloadCount = downloadCount;
  }
  final int? previewCount = jsonConvert.convert<int>(json['previewCount']);
  if (previewCount != null) {
    sMHOrganizationShareListContents.previewCount = previewCount;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHOrganizationShareListContents.type = SMHFileType.byName(type);
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHOrganizationShareListContents.fileType =
        SMHFileType.byName(fileType);
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHOrganizationShareListContents.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHOrganizationShareListContents.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHOrganizationShareListContents.previewAsIcon = previewAsIcon;
  }
  final bool? disabled = jsonConvert.convert<bool>(json['disabled']);
  if (disabled != null) {
    sMHOrganizationShareListContents.disabled = disabled;
  }
  return sMHOrganizationShareListContents;
}

Map<String, dynamic> $SMHOrganizationShareListContentsToJson(
    SMHOrganizationShareListContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['expireTime'] = entity.expireTime;
  data['creationTime'] = entity.creationTime;
  data['nickname'] = entity.nickname;
  data['downloadCountUsed'] = entity.downloadCountUsed;
  data['previewCountUsed'] = entity.previewCountUsed;
  data['downloadCount'] = entity.downloadCount;
  data['previewCount'] = entity.previewCount;
  data['type'] = entity.type;
  data['fileType'] = entity.fileType?.name;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['disabled'] = entity.disabled;
  return data;
}

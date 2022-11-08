import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_list_entity.dart';

SMHShareListEntity $SMHShareListEntityFromJson(Map<String, dynamic> json) {
  final SMHShareListEntity sMHShareListEntity = SMHShareListEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHShareListEntity.totalNum = totalNum;
  }
  final List<SMHShareListContents>? contents =
      jsonConvert.convertListNotNull<SMHShareListContents>(json['contents']);
  if (contents != null) {
    sMHShareListEntity.contents = contents;
  }
  return sMHShareListEntity;
}

Map<String, dynamic> $SMHShareListEntityToJson(SMHShareListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHShareListContents $SMHShareListContentsFromJson(Map<String, dynamic> json) {
  final SMHShareListContents sMHShareListContents = SMHShareListContents();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHShareListContents.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHShareListContents.name = name;
  }
  final String? expireTime = jsonConvert.convert<String>(json['expireTime']);
  if (expireTime != null) {
    sMHShareListContents.expireTime = expireTime;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHShareListContents.creationTime = creationTime;
  }
  final String? extractionCode =
      jsonConvert.convert<String>(json['extractionCode']);
  if (extractionCode != null) {
    sMHShareListContents.extractionCode = extractionCode;
  }
  final bool? disabled = jsonConvert.convert<bool>(json['disabled']);
  if (disabled != null) {
    sMHShareListContents.disabled = disabled;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHShareListContents.type = SMHFileType.byName(type);
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHShareListContents.size = size;
  }
  final int? previewCount = jsonConvert.convert<int>(json['previewCount']);
  if (previewCount != null) {
    sMHShareListContents.previewCount = previewCount;
  }
  final int? previewCountUsed =
      jsonConvert.convert<int>(json['previewCountUsed']);
  if (previewCountUsed != null) {
    sMHShareListContents.previewCountUsed = previewCountUsed;
  }
  final int? downloadCount = jsonConvert.convert<int>(json['downloadCount']);
  if (downloadCount != null) {
    sMHShareListContents.downloadCount = downloadCount;
  }
  final int? downloadCountUsed =
      jsonConvert.convert<int>(json['downloadCountUsed']);
  if (downloadCountUsed != null) {
    sMHShareListContents.downloadCountUsed = downloadCountUsed;
  }
  final bool? canModify = jsonConvert.convert<bool>(json['canModify']);
  if (canModify != null) {
    sMHShareListContents.canModify = canModify;
  }
  final bool? canSaveToNetDisc =
      jsonConvert.convert<bool>(json['canSaveToNetDisc']);
  if (canSaveToNetDisc != null) {
    sMHShareListContents.canSaveToNetDisc = canSaveToNetDisc;
  }
  final bool? canDownload = jsonConvert.convert<bool>(json['canDownload']);
  if (canDownload != null) {
    sMHShareListContents.canDownload = canDownload;
  }
  final bool? canPreview = jsonConvert.convert<bool>(json['canPreview']);
  if (canPreview != null) {
    sMHShareListContents.canPreview = canPreview;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    sMHShareListContents.status = status;
  }
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    sMHShareListContents.code = code;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHShareListContents.authorityList = authorityList;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHShareListContents.fileType = SMHFileType.byName(fileType);
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHShareListContents.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHShareListContents.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHShareListContents.previewAsIcon = previewAsIcon;
  }
  final bool? isPermanent = jsonConvert.convert<bool>(json['isPermanent']);
  if (isPermanent != null) {
    sMHShareListContents.isPermanent = isPermanent;
  }
  return sMHShareListContents;
}

Map<String, dynamic> $SMHShareListContentsToJson(SMHShareListContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['expireTime'] = entity.expireTime;
  data['creationTime'] = entity.creationTime;
  data['extractionCode'] = entity.extractionCode;
  data['disabled'] = entity.disabled;
  data['type'] = entity.type?.name;
  data['size'] = entity.size;
  data['previewCount'] = entity.previewCount;
  data['previewCountUsed'] = entity.previewCountUsed;
  data['downloadCount'] = entity.downloadCount;
  data['downloadCountUsed'] = entity.downloadCountUsed;
  data['canModify'] = entity.canModify;
  data['canSaveToNetDisc'] = entity.canSaveToNetDisc;
  data['canDownload'] = entity.canDownload;
  data['canPreview'] = entity.canPreview;
  data['status'] = entity.status;
  data['code'] = entity.code;
  data['authorityList'] = entity.authorityList?.toJson();
  data['fileType'] = entity.fileType?.name;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['isPermanent'] = entity.isPermanent;

  return data;
}

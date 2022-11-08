import 'package:smh_flutter_sdk/model/api_model/s_m_h_directory_detail_entity.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_directory_detail_info_entity.dart';

import 'base/json_convert_content.dart';

SMHUserDirectoryDetailInfoEntity $SMHUserDirectoryDetailInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHUserDirectoryDetailInfoEntity sMHUserDirectoryDetailInfoEntity =
      SMHUserDirectoryDetailInfoEntity();
  final String? organizationName =
      jsonConvert.convert<String>(json['organizationName']);
  if (organizationName != null) {
    sMHUserDirectoryDetailInfoEntity.organizationName = organizationName;
  }
  final String? creationPerson =
      jsonConvert.convert<String>(json['creationPerson']);
  if (creationPerson != null) {
    sMHUserDirectoryDetailInfoEntity.creationPerson = creationPerson;
  }
  final SMHFileDetailTeam? team =
      jsonConvert.convert<SMHFileDetailTeam>(json['team']);
  if (team != null) {
    sMHUserDirectoryDetailInfoEntity.team = team;
  }
  final SMHFileDetailGroup? group =
      jsonConvert.convert<SMHFileDetailGroup>(json['group']);
  if (group != null) {
    sMHUserDirectoryDetailInfoEntity.group = group;
  }
  final SMHFileDetailUser? user =
      jsonConvert.convert<SMHFileDetailUser>(json['user']);
  if (user != null) {
    sMHUserDirectoryDetailInfoEntity.user = user;
  }
  final String? spaceTag = jsonConvert.convert<String>(json['spaceTag']);
  if (spaceTag != null) {
    sMHUserDirectoryDetailInfoEntity.spaceTag =
        SMHSpaceTag.values.byName(spaceTag);
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHUserDirectoryDetailInfoEntity.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHUserDirectoryDetailInfoEntity.type = SMHFileType.byName(type);
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHUserDirectoryDetailInfoEntity.creationTime = creationTime;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHUserDirectoryDetailInfoEntity.modificationTime = modificationTime;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHUserDirectoryDetailInfoEntity.size = size;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHUserDirectoryDetailInfoEntity.path = path;
  }
  final String? fileType = jsonConvert.convert<String>(json['fileType']);
  if (fileType != null) {
    sMHUserDirectoryDetailInfoEntity.fileType =
        SMHFileType.byName(fileType);
  }
  final bool? previewByDoc = jsonConvert.convert<bool>(json['previewByDoc']);
  if (previewByDoc != null) {
    sMHUserDirectoryDetailInfoEntity.previewByDoc = previewByDoc;
  }
  final bool? previewByCI = jsonConvert.convert<bool>(json['previewByCI']);
  if (previewByCI != null) {
    sMHUserDirectoryDetailInfoEntity.previewByCI = previewByCI;
  }
  final bool? previewAsIcon = jsonConvert.convert<bool>(json['previewAsIcon']);
  if (previewAsIcon != null) {
    sMHUserDirectoryDetailInfoEntity.previewAsIcon = previewAsIcon;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHUserDirectoryDetailInfoEntity.authorityList = authorityList;
  }
  final List<SMHFileDetailContentsTagList>? tagList = jsonConvert
      .convertListNotNull<SMHFileDetailContentsTagList>(json['tagList']);
  if (tagList != null) {
    sMHUserDirectoryDetailInfoEntity.tagList = tagList;
  }
  final SMHDirectoryDetailLocalSync? localSync =
      jsonConvert.convert<SMHDirectoryDetailLocalSync>(json['localSync']);
  if (localSync != null) {
    sMHUserDirectoryDetailInfoEntity.localSync = localSync;
  }
  final bool? isAuthorized = jsonConvert.convert<bool>(json['isAuthorized']);
  if (isAuthorized != null) {
    sMHUserDirectoryDetailInfoEntity.isAuthorized = isAuthorized;
  }
  final bool? inDirectory = jsonConvert.convert<bool>(json['inDirectory']);
  if (inDirectory != null) {
    sMHUserDirectoryDetailInfoEntity.inDirectory = inDirectory;
  }
  final bool? inRecycledDirectory =
      jsonConvert.convert<bool>(json['inRecycledDirectory']);
  if (inRecycledDirectory != null) {
    sMHUserDirectoryDetailInfoEntity.inRecycledDirectory = inRecycledDirectory;
  }
  final int? virusAuditStatus =
      jsonConvert.convert<int>(json['virusAuditStatus']);
  if (virusAuditStatus != null) {
    sMHUserDirectoryDetailInfoEntity.virusAuditStatus =
        SMHVirusAuditStatus.values[virusAuditStatus];
  }
  final String? virusName = jsonConvert.convert<String>(json['virusName']);
  if (virusName != null) {
    sMHUserDirectoryDetailInfoEntity.virusName = virusName;
  }
  final bool? canMarkAsNonVirus =
      jsonConvert.convert<bool>(json['canMarkAsNonVirus']);
  if (canMarkAsNonVirus != null) {
    sMHUserDirectoryDetailInfoEntity.canMarkAsNonVirus = canMarkAsNonVirus;
  }
  return sMHUserDirectoryDetailInfoEntity;
}

Map<String, dynamic> $SMHUserDirectoryDetailInfoEntityToJson(
    SMHUserDirectoryDetailInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['organizationName'] = entity.organizationName;
  data['creationPerson'] = entity.creationPerson;
  data['team'] = entity.team?.toJson();
  data['group'] = entity.group?.toJson();
  data['user'] = entity.user?.toJson();
  data['spaceTag'] = entity.spaceTag?.name;
  data['name'] = entity.name;
  data['type'] = entity.type?.name;
  data['creationTime'] = entity.creationTime;
  data['modificationTime'] = entity.modificationTime;
  data['size'] = entity.size;
  data['path'] = entity.path;
  data['fileType'] = entity.fileType?.name;
  data['previewByDoc'] = entity.previewByDoc;
  data['previewByCI'] = entity.previewByCI;
  data['previewAsIcon'] = entity.previewAsIcon;
  data['authorityList'] = entity.authorityList?.toJson();
  data['tagList'] = entity.tagList?.map((v) => v.toJson()).toList();
  data['localSync'] = entity.localSync?.toJson();
  data['isAuthorized'] = entity.isAuthorized;
  data['inDirectory'] = entity.inDirectory;
  data['inRecycledDirectory'] = entity.inRecycledDirectory;
  data['virusAuditStatus'] = entity.virusAuditStatus?.index;
  data['virusName'] = entity.virusName;
  data['canMarkAsNonVirus'] = entity.canMarkAsNonVirus;
  return data;
}

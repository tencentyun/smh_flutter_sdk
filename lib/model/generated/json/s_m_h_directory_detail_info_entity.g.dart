import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_directory_detail_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_directory_detail_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_entity.dart';

SMHDirectoryDetailInfoEntity $SMHDirectoryDetailInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHDirectoryDetailInfoEntity sMHDirectoryDetailInfoEntity =
      SMHDirectoryDetailInfoEntity();
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHDirectoryDetailInfoEntity.path = path;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHDirectoryDetailInfoEntity.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHDirectoryDetailInfoEntity.type = SMHFileType.byName(type);
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHDirectoryDetailInfoEntity.userId = userId;
  }
  final String? creationTime =
      jsonConvert.convert<String>(json['creationTime']);
  if (creationTime != null) {
    sMHDirectoryDetailInfoEntity.creationTime = creationTime;
  }
  final String? modificationTime =
      jsonConvert.convert<String>(json['modificationTime']);
  if (modificationTime != null) {
    sMHDirectoryDetailInfoEntity.modificationTime = modificationTime;
  }
  final String? eTag = jsonConvert.convert<String>(json['eTag']);
  if (eTag != null) {
    sMHDirectoryDetailInfoEntity.eTag = eTag;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHDirectoryDetailInfoEntity.authorityList = authorityList;
  }
  final SMHDirectoryDetailLocalSync? localSync =
      jsonConvert.convert<SMHDirectoryDetailLocalSync>(json['localSync']);
  if (localSync != null) {
    sMHDirectoryDetailInfoEntity.localSync = localSync;
  }
  final List<SMHFileDetailContentsTagList>? tagList = jsonConvert
      .convertListNotNull<SMHFileDetailContentsTagList>(json['tagList']);
  if (tagList != null) {
    sMHDirectoryDetailInfoEntity.tagList = tagList;
  }
  final bool? isAuthorized = jsonConvert.convert<bool>(json['isAuthorized']);
  if (isAuthorized != null) {
    sMHDirectoryDetailInfoEntity.isAuthorized = isAuthorized;
  }
  return sMHDirectoryDetailInfoEntity;
}

Map<String, dynamic> $SMHDirectoryDetailInfoEntityToJson(
    SMHDirectoryDetailInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['path'] = entity.path;
  data['name'] = entity.name;
  data['type'] = entity.type?.name;
  data['userId'] = entity.userId;
  data['creationTime'] = entity.creationTime;
  data['modificationTime'] = entity.modificationTime;
  data['eTag'] = entity.eTag;
  data['authorityList'] = entity.authorityList?.toJson();
  data['localSync'] = entity.localSync?.toJson();
  data['tagList'] = entity.tagList?.map((v) => v.toJson()).toList();
  data['isAuthorized'] = entity.isAuthorized;
  return data;
}

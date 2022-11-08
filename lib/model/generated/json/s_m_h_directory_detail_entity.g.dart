import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_directory_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_favorite_file_list_entity.dart';

SMHDirectoryDetailEntity $SMHDirectoryDetailEntityFromJson(
    Map<String, dynamic> json) {
  final SMHDirectoryDetailEntity sMHDirectoryDetailEntity =
      SMHDirectoryDetailEntity();
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHDirectoryDetailEntity.path = path;
  }
  final int? fileCount = jsonConvert.convert<int>(json['fileCount']);
  if (fileCount != null) {
    sMHDirectoryDetailEntity.fileCount = fileCount;
  }
  final int? subDirCount = jsonConvert.convert<int>(json['subDirCount']);
  if (subDirCount != null) {
    sMHDirectoryDetailEntity.subDirCount = subDirCount;
  }
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHDirectoryDetailEntity.totalNum = totalNum;
  }
  final String? eTag = jsonConvert.convert<String>(json['eTag']);
  if (eTag != null) {
    sMHDirectoryDetailEntity.eTag = eTag;
  }
  final String? nextMarker = jsonConvert.convert<String>(json['nextMarker']);
  if (nextMarker != null) {
    sMHDirectoryDetailEntity.nextMarker = nextMarker;
  }
  final List<SMHFileListContent>? contents =
      jsonConvert.convertListNotNull<SMHFileListContent>(json['contents']);
  if (contents != null) {
    sMHDirectoryDetailEntity.contents = contents;
  }
  final SMHDirectoryDetailLocalSync? localSync =
      jsonConvert.convert<SMHDirectoryDetailLocalSync>(json['localSync']);
  if (localSync != null) {
    sMHDirectoryDetailEntity.localSync = localSync;
  }
  final SMHAuthorityRoleItemEntity? authorityList =
      jsonConvert.convert<SMHAuthorityRoleItemEntity>(json['authorityList']);
  if (authorityList != null) {
    sMHDirectoryDetailEntity.authorityList = authorityList;
  }
  return sMHDirectoryDetailEntity;
}

Map<String, dynamic> $SMHDirectoryDetailEntityToJson(
    SMHDirectoryDetailEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['path'] = entity.path;
  data['fileCount'] = entity.fileCount;
  data['subDirCount'] = entity.subDirCount;
  data['totalNum'] = entity.totalNum;
  data['eTag'] = entity.eTag;
  data['nextMarker'] = entity.nextMarker;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  data['localSync'] = entity.localSync?.toJson();
  data['authorityList'] = entity.authorityList?.toJson();
  return data;
}

SMHDirectoryDetailLocalSync $SMHDirectoryDetailLocalSyncFromJson(
    Map<String, dynamic> json) {
  final SMHDirectoryDetailLocalSync sMHDirectoryDetailLocalSync =
      SMHDirectoryDetailLocalSync();
  final int? syncId = jsonConvert.convert<int>(json['syncId']);
  if (syncId != null) {
    sMHDirectoryDetailLocalSync.syncId = syncId;
  }
  final String? strategy = jsonConvert.convert<String>(json['strategy']);
  if (strategy != null) {
    sMHDirectoryDetailLocalSync.strategy = strategy;
  }
  final bool? isSyncRootFolder =
      jsonConvert.convert<bool>(json['isSyncRootFolder']);
  if (isSyncRootFolder != null) {
    sMHDirectoryDetailLocalSync.isSyncRootFolder = isSyncRootFolder;
  }
  final String? syncUserId = jsonConvert.convert<String>(json['syncUserId']);
  if (syncUserId != null) {
    sMHDirectoryDetailLocalSync.syncUserId = syncUserId;
  }
  return sMHDirectoryDetailLocalSync;
}

Map<String, dynamic> $SMHDirectoryDetailLocalSyncToJson(
    SMHDirectoryDetailLocalSync entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['syncId'] = entity.syncId;
  data['strategy'] = entity.strategy;
  data['isSyncRootFolder'] = entity.isSyncRootFolder;
  data['syncUserId'] = entity.syncUserId;
  return data;
}

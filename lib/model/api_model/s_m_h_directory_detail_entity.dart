import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_directory_detail_entity.g.dart';

import '../user_model/s_m_h_authority_role_item_entity.dart';
import '../user_model/s_m_h_favorite_file_list_entity.dart';

@JsonSerializable()
class SMHDirectoryDetailEntity {
  List<String>? path;
  int? fileCount;
  int? subDirCount;
  int? totalNum;
  String? eTag;
  String? nextMarker;
  List<SMHFileListContent>? contents;
  SMHDirectoryDetailLocalSync? localSync;
  SMHAuthorityRoleItemEntity? authorityList;

  SMHDirectoryDetailEntity();

  factory SMHDirectoryDetailEntity.fromJson(Map<String, dynamic> json) =>
      $SMHDirectoryDetailEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHDirectoryDetailEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHDirectoryDetailLocalSync {
  /// syncId: 当该文件夹为同步盘时，返回同步任务 ID
  int? syncId;

  /// strategy: 当该文件夹为同步盘时，返回同步方式，local_to_cloud，非必返
  String? strategy;

  /// isSyncRootFolder: 当前文件夹是否为同步盘，如果是同步盘根目录返回 true，如果是同步盘子级节点，返回 false，如果不是同步盘，不返回该字段
  bool? isSyncRootFolder;

  /// syncUserId: 当该文件夹为同步盘时，返回设置同步任务的 userId
  String? syncUserId;

  SMHDirectoryDetailLocalSync();

  factory SMHDirectoryDetailLocalSync.fromJson(Map<String, dynamic> json) =>
      $SMHDirectoryDetailLocalSyncFromJson(json);

  Map<String, dynamic> toJson() => $SMHDirectoryDetailLocalSyncToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

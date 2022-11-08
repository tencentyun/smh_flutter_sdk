import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_file_detail_single_space_entity.g.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_entity.dart';

@JsonSerializable()
class SMHFileDetailSingleSpaceEntity {
  bool? isExist;

  /// name: 字符串，文件名称；
  String? name;

  /// path: 字符串数组，文件路径；
  List<String>? path;
  SMHFileType? type;
  String? creationTime;

  /// modificationTime: 日期字符串，修改时间；
  String? modificationTime;

  /// 版本号
  int? versionId;

  /// 权限列表
  SMHAuthorityRoleItemEntity? authorityList;
  String? contentType;

  /// size: 字符串，文件大小；
  String? size;
  String? eTag;
  String? crc64;
  Map<String, dynamic>? metaData;

  /// previewByDoc: 布尔值，是否可通过 wps 预览；
  bool? previewByDoc;

  /// previewByCI: 布尔值，是否可通过万象预览；
  bool? previewByCI;

  /// previewAsIcon: 布尔值，是否可用预览图做 icon；
  bool? previewAsIcon;

  /// fileType: 字符串，文件类型：excel、powerpoint 等，仅 file 返回，非必返；
  SMHFileType? fileType;
  List<SMHFileDetailContentsTagList>? tagList;

  SMHFileDetailSingleSpaceEntity();

  factory SMHFileDetailSingleSpaceEntity.fromJson(Map<String, dynamic> json) =>
      $SMHFileDetailSingleSpaceEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileDetailSingleSpaceEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

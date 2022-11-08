import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_file_detail_info_entity.g.dart';

import '../user_model/s_m_h_authority_role_item_entity.dart';

@JsonSerializable()
class SMHFileDetailInfoEntity {
  /// path: 字符串数组，完整路径；
  List<String>? path;

  /// name: 字符串，目录或相簿名或文件名；
  String? name;

  /// type: 字符串，条目类型：
  /// dir: 目录或相簿；
  /// file: 文件，仅用于文件类型媒体库；
  /// image: 图片，仅用于媒体类型媒体库；
  /// video: 视频，仅用于媒体类型媒体库；
  /// symlink: 符号链接；
  SMHFileType? type;

  /// userId: 字符串，创建人 ID；
  String? userId;

  /// creationTime: ISO 8601格式的日期与时间字符串，表示文件的创建时间或文件的上传时间，例如 2020-10-14T10:17:57.953Z；
  String? creationTime;

  /// modificationTime: 文件最近一次被覆盖的时间，或者目录内最近一次增删子目录或文件的时间；
  String? modificationTime;

  /// versionId: 版本号，可能为 null；
  int? versionId;

  /// size: 文件大小，为了避免数字精度问题，这里为字符串格式；
  String? size;

  /// eTag: 文件 ETag；
  String? eTag;

  /// crc64: 文件的 CRC64-ECMA182 校验值，为了避免数字精度问题，这里为字符串格式；
  String? crc64;

  /// contentType: 媒体类型；
  String? contentType;

  /// metaData: 文件元数据信息；
  Map<String, dynamic>? metaData;

  /// authorityList: TODO
  SMHAuthorityRoleItemEntity? authorityList;

  /// historySize: 历史版本占用大小；
  String? historySize;

  /// fileType: 文件类型：excel、powerpoint 等；
  SMHFileType? fileType;

  /// previewByDoc: 是否可通过 wps 预览；
  bool? previewByDoc;

  /// previewByCI: 是否可通过万象预览；
  bool? previewByCI;

  /// previewAsIcon: 是否可用预览图作为 icon；
  bool? previewAsIcon;

  SMHFileDetailInfoEntity();

  factory SMHFileDetailInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHFileDetailInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileDetailInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

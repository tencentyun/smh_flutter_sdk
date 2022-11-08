import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_search_file_result_entity.g.dart';

@JsonSerializable()
class SMHSearchFileResultEntity {
  /// searchId: 搜索任务 ID，用于异步获取搜索结果；
  String? searchId;

  /// hasMore: 布尔型，是否有更多搜索结果；
  bool? hasMore;

  /// nextMarker: 用于获取后续页的分页标识，仅当 hasMore 为 true 时才返回该字段；
  String? nextMarker;

  /// contents: 第一页搜索结果，可能为空数组，有关异步搜索的说明请参阅【接口说明】；
  List<SMHSearchFileResultContents>? contents;

  SMHSearchFileResultEntity();

  factory SMHSearchFileResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHSearchFileResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHSearchFileResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHSearchFileResultContents {
  /// type: 字符串，条目类型：
  /// dir: 目录或相簿；
  /// file: 文件，仅用于文件类型媒体库；
  /// image: 图片，仅用于媒体类型媒体库；
  /// video: 视频，仅用于媒体类型媒体库；
  /// symlink: 符号链接；
  SMHFileType? type;

  /// name: 字符串，目录或相簿名或文件名；
  String? name;

  /// creationTime: ISO 8601格式的日期与时间字符串，表示目录或相簿的创建时间或文件的上传时间，例如 2020-10-14T10:17:57.953Z；
  String? creationTime;

  /// modificationTime: 文件最近一次被覆盖的时间，或者目录内最近一次增删子目录或文件的时间；
  String? modificationTime;

  /// contentType: 媒体类型；
  String? contentType;

  /// versionId: 版本号；
  String? size;

  /// size: 文件大小，为了避免数字精度问题，这里为字符串格式；
  String? eTag;

  /// eTag: 文件 ETag；
  String? crc64;

  /// crc64: 文件的 CRC64-ECMA182 校验值，为了避免数字精度问题，这里为字符串格式；
  int? versionId;

  /// metaData: 文件元数据信息；
  Map<String, dynamic>? metaData;

  /// path: 当前项目所在的目录，包含当前项目的 name；
  List<dynamic>? path;

  /// previewByDoc: 是否可通过 wps 预览；
  bool? previewByDoc;

  /// previewByCI: 是否可通过万象预览；
  bool? previewByCI;

  /// previewAsIcon: 是否可使用预览图当做 icon；
  bool? previewAsIcon;

  /// fileType: 文件类型：excel、powerpoint 等；
  SMHFileType? fileType;

  /// modifierName: 字符串，更新者昵称
  String? modifierName;

  SMHSearchFileResultContents();

  factory SMHSearchFileResultContents.fromJson(Map<String, dynamic> json) =>
      $SMHSearchFileResultContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHSearchFileResultContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

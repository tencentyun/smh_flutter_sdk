import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_file_download_url_entity.g.dart';

@JsonSerializable()
class SMHFileDownloadUrlEntity {
  /// cosUrl: 带签名的下载链接，签名有效时长约 2 小时，需在签名有效期内发起下载；
  String? cosUrl;

  /// type: 文件类型；
  SMHFileType? type;

  /// creationTime: 文件首次完成上传的时间；
  String? creationTime;

  /// modificationTime: 文件最近一次被覆盖的时间；
  String? modificationTime;

  /// contentType: 媒体类型；
  String? contentType;

  /// size: 文件大小，为了避免数字精度问题，这里为字符串格式；
  String? size;

  /// eTag: 文件 ETag；
  String? eTag;

  /// crc64: 文件的 CRC64-ECMA182 校验值，为了避免数字精度问题，这里为字符串格式；
  String? crc64;

  /// fileType: 文件类型：excel、powerpoint 等；
  SMHFileType? fileType;

  /// previewByDoc: 是否可通过 wps 预览；
  bool? previewByDoc;

  /// previewByCI: 是否可通过万象预览；
  bool? previewByCI;

  /// previewAsIcon: 是否可用预览图当做 icon；
  bool? previewAsIcon;

  /// metaData: 元数据，如果没有元数据则不存在该字段；
  Map<String, dynamic>? metaData;

  SMHFileDownloadUrlEntity();

  factory SMHFileDownloadUrlEntity.fromJson(Map<String, dynamic> json) =>
      $SMHFileDownloadUrlEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileDownloadUrlEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_upload_fiile_result_entity.g.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

@JsonSerializable()
class SMHUploadFileResultEntity {
  /// path: 字符串数组 或 null，如果是字符串数组则表示最终的文件路径，数组中的最后一个元素代表最终的文件名，其他元素代表每一级目录名，因为可能存在同名文件自动重命名，所以这里的最终路径可能不等同于开始上传时指定的路径；如果是 null 则表示该文件所在的目录或其某个父级目录已被删除，该文件已经无法访问；
  List<String>? path;

  /// name: 最终文件名；
  String? name;

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

  /// metaData: 元数据，如果没有元数据则不存在该字段；
  Map<String, dynamic>? metaData;

  /// previewByCI: 布尔值，是否支持万象预览
  bool? previewByCI;
  bool? previewByDoc;
  bool? previewAsIcon;
  SMHFileType? fileType;

  /// virusAuditStatus: 0-6 查毒状态
  ///   0 未检测 （文件夹不标记可疑状态，一直为0）
  ///   1 检测中
  ///   2 无风险
  ///   3 风险文件
  ///   4 无法检测 （比如文件太大超过可检测范围，端侧当无风险处理）（超1G不检）
  ///   5 人为标记为无风险
  ///   6 检测任务失败
  SMHVirusAuditStatus? virusAuditStatus;
  SMHUploadFileResultEntity();

  factory SMHUploadFileResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHUploadFileResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHUploadFileResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

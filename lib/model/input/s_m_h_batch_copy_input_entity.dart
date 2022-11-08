import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_batch_copy_input_entity.g.dart';

@JsonSerializable()
class SMHBatchCopyInputEntity {
  /// copyFromLibraryId 可选参数，跨 library 复制文件时，被复制的源文件所在的 library ID；
  String? copyFromLibraryId;

  /// copyFromSpaceId 可选参数，跨 library 复制文件时，被复制的源文件所在的空间 ID；
  String? copyFromSpaceId;

  /// copyFrom: 必选参数，被复制的源目录、相簿或文件路径，必选参数；
  String? copyFrom;

  ///  必选参数，目标目录、相簿或文件路径，必选参数；
  String? to;

  /// conflictResolutionStrategy: 文件名冲突时的处理方式，ask: 冲突时返回 status: 409 及 SameNameDirectoryOrFileExists 错误码，
  /// rename: 冲突时自动重命名文件，
  /// overwrite: 如果冲突目标为目录时返回
  /// status: 409 及 SameNameDirectoryOrFileExists 错误码，否则覆盖已有文件，如果目标为目录或相簿时，默认为 ask 且不支持 overwrite，如果目标为文件默认为 rename，可选参数；
  SMHConflictResolutionStrategy? conflictResolutionStrategy;

  SMHBatchCopyInputEntity();

  factory SMHBatchCopyInputEntity.fromJson(Map<String, dynamic> json) =>
      $SMHBatchCopyInputEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHBatchCopyInputEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

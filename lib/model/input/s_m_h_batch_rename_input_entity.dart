import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_batch_rename_input_entity.g.dart';

@JsonSerializable()
class SMHBatchRenameInputEntity {
  /// from: 被重命名或移动的源目录、相簿或文件路径，必选参数；
  String? from;

  /// to: 目标目录、相簿或文件路径，必选参数；
  String? to;

  /// moveAuthority: 是否移动文件夹权限，可选参数，true 移动，false 不移动（默认）；
  bool? moveAuthority;

  /// conflictResolutionStrategy: 文件名冲突时的处理方式，ask: 冲突时返回 status: 409 及 SameNameDirectoryOrFileExists 错误码，
  /// rename: 冲突时自动重命名文件，
  /// overwrite: 如果冲突目标为目录时返回
  /// status: 409 及 SameNameDirectoryOrFileExists 错误码，否则覆盖已有文件，如果目标为目录或相簿时，默认为 ask 且不支持 overwrite，如果目标为文件默认为 rename；
  String? conflictResolutionStrategy;

  SMHBatchRenameInputEntity();

  factory SMHBatchRenameInputEntity.fromJson(Map<String, dynamic> json) =>
      $SMHBatchRenameInputEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHBatchRenameInputEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

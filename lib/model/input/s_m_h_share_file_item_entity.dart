import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_share_file_item_entity.g.dart';

@JsonSerializable()
class SMHFileItemEntity {
  /// 空间所在组织id
  int? spaceOrgId;

  /// 空间id
  String? spaceId;

  /// 路径
  String? path;

  /// 版本号
  int? versionId;

  /// 文件类型；dir / file
  SMHFileType? type;

  SMHFileItemEntity();

  factory SMHFileItemEntity.fromJson(Map<String, dynamic> json) =>
      $SMHFileItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

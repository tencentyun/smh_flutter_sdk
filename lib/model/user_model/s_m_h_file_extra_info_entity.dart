import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_file_extra_info_entity.g.dart';

@JsonSerializable()
class SMHFileExtraInfoEntity {
  /// spaceOrgId：空间所属企业 ID，
  int? spaceOrgId;

  /// spaceId 空间 ID
  String? spaceId;

  /// path 文件目录路径
  String? path;

  /// favoriteId 收藏 ID，如果未收藏则无此字段
  int? favoriteId;
  int? favoriteGroupId;

  /// isAuthorized 是否被共享
  bool? isAuthorized;

  /// authType: 0（共享给我） | 1（我共享的）；
  int? authType;

  SMHFileExtraInfoEntity();

  factory SMHFileExtraInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHFileExtraInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileExtraInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

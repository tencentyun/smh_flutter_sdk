import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_file_authority_item_entity.g.dart';

@JsonSerializable()
class SMHFileAuthorityItemEntity {
  /// spaceId 授权团队的空间 id，与 userId 二选一；
  String? userId;

  /// userId 授权用户的 id，与 spaceId 二选一；
  String? spaceId;

  /// name 授权团队名称 或 授权用户昵称，必选参数；
  String? name;

  /// roleId 授权的角色：操作者 or 上传者等，必选参数；
  int? roleId;

  SMHFileAuthorityItemEntity();

  factory SMHFileAuthorityItemEntity.fromJson(Map<String, dynamic> json) =>
      $SMHFileAuthorityItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileAuthorityItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

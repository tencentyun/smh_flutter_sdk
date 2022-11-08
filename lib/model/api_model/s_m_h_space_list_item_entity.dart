import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_space_list_item_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class SMHSpaceListItemEntity {
  /// spaceId: 租户空间 ID；
  String? spaceId;

  /// userId: 创建者用户 ID；
  String? userId;

  /// creationTime: 租户空间创建时间，ISO 8601格式的日期与时间字符串，例如 2020-10-14T10:17:57.953Z；
  String? creationTime;

  SMHSpaceListItemEntity();

  factory SMHSpaceListItemEntity.fromJson(Map<String, dynamic> json) =>
      $SMHSpaceListItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHSpaceListItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

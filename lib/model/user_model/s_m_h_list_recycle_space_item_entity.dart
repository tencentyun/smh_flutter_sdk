import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_list_recycle_space_item_entity.g.dart';

@JsonSerializable()
class SMHListRecycleSpaceItemEntity {
  String? spaceId;
  bool? includeChildSpace;

  SMHListRecycleSpaceItemEntity();

  factory SMHListRecycleSpaceItemEntity.fromJson(Map<String, dynamic> json) =>
      $SMHListRecycleSpaceItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHListRecycleSpaceItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

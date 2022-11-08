import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_recycle_input_item_entity.g.dart';

@JsonSerializable()
class SMHRecycleInputItemEntity {
  /// 空间id
  String? spaceId;

  /// 回收站 id
  int? recycledItemId;

  SMHRecycleInputItemEntity();

  factory SMHRecycleInputItemEntity.fromJson(Map<String, dynamic> json) =>
      $SMHRecycleInputItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHRecycleInputItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

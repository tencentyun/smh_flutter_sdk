import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_virus_restore_item_entity.g.dart';

@JsonSerializable()
class SMHVirusRestoreItemEntity {
  String? spaceId;
  List<String>? path;

  SMHVirusRestoreItemEntity();

  factory SMHVirusRestoreItemEntity.fromJson(Map<String, dynamic> json) =>
      $SMHVirusRestoreItemEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHVirusRestoreItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

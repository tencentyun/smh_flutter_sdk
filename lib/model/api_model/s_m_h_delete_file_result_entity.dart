import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_delete_file_result_entity.g.dart';

@JsonSerializable()
class SMHDeleteFileResultEntity {
  /// recycledItemId: 回收站项目 ID，用于从回收站永久删除或恢复指定项目；
  int? recycledItemId;

  SMHDeleteFileResultEntity();

  factory SMHDeleteFileResultEntity.fromJson(Map<String, dynamic> json) =>
      $SMHDeleteFileResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHDeleteFileResultEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

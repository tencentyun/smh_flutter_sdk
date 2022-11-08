import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_batch_delete_input_entity.g.dart';

@JsonSerializable()
class SMHBatchDeleteInputEntity {
  /// path: 被删除的目录、相簿或文件路径，必选参数；
  String? path;

  /// permanent: 当开启回收站时，可选参数，则该参数指定将文件移入回收站还是永久删除文件，true: 永久删除，false: 移入回收站，默认为 false；
  bool? permanent;

  SMHBatchDeleteInputEntity();

  factory SMHBatchDeleteInputEntity.fromJson(Map<String, dynamic> json) =>
      $SMHBatchDeleteInputEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHBatchDeleteInputEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_file_tag_list_entity.g.dart';

@JsonSerializable()
class SMHFileTagListEntity {
  ///  id: 文件标签 id
  int? id;

  ///  tagName：标签名称
  String? tagName;

  ///  tagType：标签类型
  int? tagType;

  SMHFileTagListEntity();

  factory SMHFileTagListEntity.fromJson(Map<String, dynamic> json) =>
      $SMHFileTagListEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHFileTagListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_file_path_entity.g.dart';

@JsonSerializable()
class SMHFilePathEntity {
  /// path: 字符串数组 或 null，如果是字符串数组则表示最终的文件路径，数组中的最后一个元素代表最终的文件名，其他元素代表每一级目录名，因为可能存在同名文件自动重命名，所以这里的最终路径可能不等同于移动或重命名时指定的目标路径；如果是 null 则表示目标路径的某级父级目录已被删除，该目标文件已经无法访问；
  List<String>? path;

  /// 创建时间
  String? creationTime;
  SMHFilePathEntity();

  factory SMHFilePathEntity.fromJson(Map<String, dynamic> json) =>
      $SMHFilePathEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHFilePathEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

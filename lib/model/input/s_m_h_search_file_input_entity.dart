import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_search_file_input_entity.g.dart';

@JsonSerializable()
class SMHSearchFileInputEntity {
  /// keyword: 搜索关键字，可使用空格分隔多个关键字，关键字之间为“或”的关系并优先展示匹配关键字较多的项目；
  String? keyword;

  /// scope: 搜索范围，指定搜索的目录，可选参数，如搜索根目录可指定为空字符串、“/”或不指定该字段；
  String? scope;

  /// type: 搜索类型，可选参数，字符串或字符串数组，当前支持的类型包括：
  /// all: 搜索所有类型文件和文件夹，当不传 type 或传空时默认为 all；
  /// dir: 仅搜索目录，不搜索文件；
  /// file: 仅搜索所有类型文件，不搜索目录；
  /// doc、xls 或 ppt: 仅搜索 Word、Excel 或 Powerpoint 类型文档，对应的文件扩展名为 .doc(x)、.xls(x) 或 .ppt(x)；
  /// pdf 或 txt: 仅搜索 PDF 或纯文本类型文档，对应的文件扩展名为 .pdf 或 .txt；
  /// image、video 或 audio: 仅搜索图片、视频或音频类型文件，对应的文件 MIME（Content Type）分别为 image/*、video/* 或 audio/*；
  /// powerpoint: 仅搜索演示文稿，如 .ppt、.pptx、.pot、.potx 等；
  /// excel: 仅搜索表格文件，如 .xls、.xlsx、.ett、.xltx、.csv 等；
  /// word: 仅搜索文档，如 .doc、.docx、.dot、.wps、.wpt 等；
  /// text: 仅搜索纯文本，如 .txt、.asp、.htm 等；
  SMHFileType? type;

  /// tags: 搜索标签，可多选，可选参数；
  List<SMHSearchFileInputTags>? tags;

  /// extname: 搜索文件后缀，可选参数，字符串数组
  List<String>? extname;

  /// creators: 搜索创建/更新者，可选参数，对象数组
  List<SMHSearchFileInputCreators>? creators;

  /// minFileSize/maxFileSize: 搜索文件大小范围，整数，单位 Byte，均为可选参数
  int? minFileSize;
  int? maxFileSize;

  /// modificationTimeStart/modificationTimeEnd: 搜索更新时间范围，时间戳字符串，与时区无关，均可选参数
  String? modificationTimeStart;
  String? modificationTimeEnd;

  SMHSearchFileInputEntity();

  factory SMHSearchFileInputEntity.fromJson(Map<String, dynamic> json) =>
      $SMHSearchFileInputEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHSearchFileInputEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHSearchFileInputTags {
  /// id: 标签 id，必选参数；
  int? id;

  /// value: 标签值，可选参数，用于键值对标签，如：标签名 ios 标签值 13.2，搜索特定版本标签；
  String? value;

  SMHSearchFileInputTags();

  factory SMHSearchFileInputTags.fromJson(Map<String, dynamic> json) =>
      $SMHSearchFileInputTagsFromJson(json);

  Map<String, dynamic> toJson() => $SMHSearchFileInputTagsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHSearchFileInputCreators {
  /// 用户所在组织id
  int? userOrgId;

  /// 用户id
  String? userId;

  SMHSearchFileInputCreators();

  factory SMHSearchFileInputCreators.fromJson(Map<String, dynamic> json) =>
      $SMHSearchFileInputCreatorsFromJson(json);

  Map<String, dynamic> toJson() => $SMHSearchFileInputCreatorsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

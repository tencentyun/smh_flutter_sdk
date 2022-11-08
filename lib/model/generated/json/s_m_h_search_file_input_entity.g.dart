import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_search_file_input_entity.dart';

SMHSearchFileInputEntity $SMHSearchFileInputEntityFromJson(
    Map<String, dynamic> json) {
  final SMHSearchFileInputEntity sMHSearchFileInputEntity =
      SMHSearchFileInputEntity();
  final String? keyword = jsonConvert.convert<String>(json['keyword']);
  if (keyword != null) {
    sMHSearchFileInputEntity.keyword = keyword;
  }
  final String? scope = jsonConvert.convert<String>(json['scope']);
  if (scope != null) {
    sMHSearchFileInputEntity.scope = scope;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    sMHSearchFileInputEntity.type = SMHFileType.byName(type);
  }
  final List<SMHSearchFileInputTags>? tags =
      jsonConvert.convertListNotNull<SMHSearchFileInputTags>(json['tags']);
  if (tags != null) {
    sMHSearchFileInputEntity.tags = tags;
  }
  final List<String>? extname =
      jsonConvert.convertListNotNull<String>(json['extname']);
  if (extname != null) {
    sMHSearchFileInputEntity.extname = extname;
  }
  final List<SMHSearchFileInputCreators>? creators = jsonConvert
      .convertListNotNull<SMHSearchFileInputCreators>(json['creators']);
  if (creators != null) {
    sMHSearchFileInputEntity.creators = creators;
  }
  final int? minFileSize = jsonConvert.convert<int>(json['minFileSize']);
  if (minFileSize != null) {
    sMHSearchFileInputEntity.minFileSize = minFileSize;
  }
  final int? maxFileSize = jsonConvert.convert<int>(json['maxFileSize']);
  if (maxFileSize != null) {
    sMHSearchFileInputEntity.maxFileSize = maxFileSize;
  }
  final String? modificationTimeStart =
      jsonConvert.convert<String>(json['modificationTimeStart']);
  if (modificationTimeStart != null) {
    sMHSearchFileInputEntity.modificationTimeStart = modificationTimeStart;
  }
  final String? modificationTimeEnd =
      jsonConvert.convert<String>(json['modificationTimeEnd']);
  if (modificationTimeEnd != null) {
    sMHSearchFileInputEntity.modificationTimeEnd = modificationTimeEnd;
  }
  return sMHSearchFileInputEntity;
}

Map<String, dynamic> $SMHSearchFileInputEntityToJson(
    SMHSearchFileInputEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['keyword'] = entity.keyword;
  data['scope'] = entity.scope;
  data['type'] = entity.type?.name;
  data['tags'] = entity.tags?.map((v) => v.toJson()).toList();
  data['extname'] = entity.extname;
  data['creators'] = entity.creators?.map((v) => v.toJson()).toList();
  data['minFileSize'] = entity.minFileSize;
  data['maxFileSize'] = entity.maxFileSize;
  data['modificationTimeStart'] = entity.modificationTimeStart;
  data['modificationTimeEnd'] = entity.modificationTimeEnd;
  return data;
}

SMHSearchFileInputTags $SMHSearchFileInputTagsFromJson(
    Map<String, dynamic> json) {
  final SMHSearchFileInputTags sMHSearchFileInputTags =
      SMHSearchFileInputTags();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHSearchFileInputTags.id = id;
  }
  final String? value = jsonConvert.convert<String>(json['value']);
  if (value != null) {
    sMHSearchFileInputTags.value = value;
  }
  return sMHSearchFileInputTags;
}

Map<String, dynamic> $SMHSearchFileInputTagsToJson(
    SMHSearchFileInputTags entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['value'] = entity.value;
  return data;
}

SMHSearchFileInputCreators $SMHSearchFileInputCreatorsFromJson(
    Map<String, dynamic> json) {
  final SMHSearchFileInputCreators sMHSearchFileInputCreators =
      SMHSearchFileInputCreators();
  final int? userOrgId = jsonConvert.convert<int>(json['userOrgId']);
  if (userOrgId != null) {
    sMHSearchFileInputCreators.userOrgId = userOrgId;
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHSearchFileInputCreators.userId = userId;
  }
  return sMHSearchFileInputCreators;
}

Map<String, dynamic> $SMHSearchFileInputCreatorsToJson(
    SMHSearchFileInputCreators entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['userOrgId'] = entity.userOrgId;
  data['userId'] = entity.userId;
  return data;
}

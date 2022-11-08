import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_favorite_group_list_entity.dart';

SMHFavoriteGroupListEntity $SMHFavoriteGroupListEntityFromJson(
    Map<String, dynamic> json) {
  final SMHFavoriteGroupListEntity sMHFavoriteGroupListEntity =
      SMHFavoriteGroupListEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHFavoriteGroupListEntity.totalNum = totalNum;
  }
  final List<SMHFavoriteGroupListContents>? contents = jsonConvert
      .convertListNotNull<SMHFavoriteGroupListContents>(json['contents']);
  if (contents != null) {
    sMHFavoriteGroupListEntity.contents = contents;
  }
  return sMHFavoriteGroupListEntity;
}

Map<String, dynamic> $SMHFavoriteGroupListEntityToJson(
    SMHFavoriteGroupListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHFavoriteGroupListContents $SMHFavoriteGroupListContentsFromJson(
    Map<String, dynamic> json) {
  final SMHFavoriteGroupListContents sMHFavoriteGroupListContents =
      SMHFavoriteGroupListContents();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHFavoriteGroupListContents.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHFavoriteGroupListContents.name = name;
  }
  final String? tag = jsonConvert.convert<String>(json['tag']);
  if (tag != null) {
    sMHFavoriteGroupListContents.tag = tag;
  }
  return sMHFavoriteGroupListContents;
}

Map<String, dynamic> $SMHFavoriteGroupListContentsToJson(
    SMHFavoriteGroupListContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['tag'] = entity.tag;
  return data;
}

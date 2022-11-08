import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_space_storage_info_entity.dart';

SMHSpaceStorageInfoEntity $SMHSpaceStorageInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHSpaceStorageInfoEntity sMHSpaceStorageInfoEntity =
      SMHSpaceStorageInfoEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHSpaceStorageInfoEntity.totalNum = totalNum;
  }
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    sMHSpaceStorageInfoEntity.page = page;
  }
  final int? pageSize = jsonConvert.convert<int>(json['pageSize']);
  if (pageSize != null) {
    sMHSpaceStorageInfoEntity.pageSize = pageSize;
  }
  final List<SMHSpaceStorageInfoContents>? contents = jsonConvert
      .convertListNotNull<SMHSpaceStorageInfoContents>(json['contents']);
  if (contents != null) {
    sMHSpaceStorageInfoEntity.contents = contents;
  }
  return sMHSpaceStorageInfoEntity;
}

Map<String, dynamic> $SMHSpaceStorageInfoEntityToJson(
    SMHSpaceStorageInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['page'] = entity.page;
  data['pageSize'] = entity.pageSize;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHSpaceStorageInfoContents $SMHSpaceStorageInfoContentsFromJson(
    Map<String, dynamic> json) {
  final SMHSpaceStorageInfoContents sMHSpaceStorageInfoContents =
      SMHSpaceStorageInfoContents();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHSpaceStorageInfoContents.id = id;
  }
  final int? parentId = jsonConvert.convert<int>(json['parentId']);
  if (parentId != null) {
    sMHSpaceStorageInfoContents.parentId = parentId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHSpaceStorageInfoContents.name = name;
  }
  final String? spaceId = jsonConvert.convert<String>(json['spaceId']);
  if (spaceId != null) {
    sMHSpaceStorageInfoContents.spaceId = spaceId;
  }
  final List<String>? path =
      jsonConvert.convertListNotNull<String>(json['path']);
  if (path != null) {
    sMHSpaceStorageInfoContents.path = path;
  }
  final int? userCount = jsonConvert.convert<int>(json['userCount']);
  if (userCount != null) {
    sMHSpaceStorageInfoContents.userCount = userCount;
  }
  final String? capacity = jsonConvert.convert<String>(json['capacity']);
  if (capacity != null) {
    sMHSpaceStorageInfoContents.capacity = capacity;
  }
  final String? availableSpace =
      jsonConvert.convert<String>(json['availableSpace']);
  if (availableSpace != null) {
    sMHSpaceStorageInfoContents.availableSpace = availableSpace;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHSpaceStorageInfoContents.size = size;
  }
  final String? internetTraffic =
      jsonConvert.convert<String>(json['internetTraffic']);
  if (internetTraffic != null) {
    sMHSpaceStorageInfoContents.internetTraffic = internetTraffic;
  }
  return sMHSpaceStorageInfoContents;
}

Map<String, dynamic> $SMHSpaceStorageInfoContentsToJson(
    SMHSpaceStorageInfoContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['parentId'] = entity.parentId;
  data['name'] = entity.name;
  data['spaceId'] = entity.spaceId;
  data['path'] = entity.path;
  data['userCount'] = entity.userCount;
  data['capacity'] = entity.capacity;
  data['availableSpace'] = entity.availableSpace;
  data['size'] = entity.size;
  data['internetTraffic'] = entity.internetTraffic;
  return data;
}

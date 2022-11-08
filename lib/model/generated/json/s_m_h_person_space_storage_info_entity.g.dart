import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_person_space_storage_info_entity.dart';

SMHPersonSpaceStorageInfoEntity $SMHPersonSpaceStorageInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHPersonSpaceStorageInfoEntity sMHPersonSpaceStorageInfoEntity =
      SMHPersonSpaceStorageInfoEntity();
  final int? totalNum = jsonConvert.convert<int>(json['totalNum']);
  if (totalNum != null) {
    sMHPersonSpaceStorageInfoEntity.totalNum = totalNum;
  }
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    sMHPersonSpaceStorageInfoEntity.page = page;
  }
  final int? pageSize = jsonConvert.convert<int>(json['pageSize']);
  if (pageSize != null) {
    sMHPersonSpaceStorageInfoEntity.pageSize = pageSize;
  }
  final List<SMHPersonSpaceStorageInfoContents>? contents = jsonConvert
      .convertListNotNull<SMHPersonSpaceStorageInfoContents>(json['contents']);
  if (contents != null) {
    sMHPersonSpaceStorageInfoEntity.contents = contents;
  }
  return sMHPersonSpaceStorageInfoEntity;
}

Map<String, dynamic> $SMHPersonSpaceStorageInfoEntityToJson(
    SMHPersonSpaceStorageInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['totalNum'] = entity.totalNum;
  data['page'] = entity.page;
  data['pageSize'] = entity.pageSize;
  data['contents'] = entity.contents?.map((v) => v.toJson()).toList();
  return data;
}

SMHPersonSpaceStorageInfoContents $SMHPersonSpaceStorageInfoContentsFromJson(
    Map<String, dynamic> json) {
  final SMHPersonSpaceStorageInfoContents sMHPersonSpaceStorageInfoContents =
      SMHPersonSpaceStorageInfoContents();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHPersonSpaceStorageInfoContents.id = id;
  }
  final String? countryCode = jsonConvert.convert<String>(json['countryCode']);
  if (countryCode != null) {
    sMHPersonSpaceStorageInfoContents.countryCode = countryCode;
  }
  final String? phoneNumber = jsonConvert.convert<String>(json['phoneNumber']);
  if (phoneNumber != null) {
    sMHPersonSpaceStorageInfoContents.phoneNumber = phoneNumber;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    sMHPersonSpaceStorageInfoContents.nickname = nickname;
  }
  final String? role = jsonConvert.convert<String>(json['role']);
  if (role != null) {
    sMHPersonSpaceStorageInfoContents.role = role;
  }
  final bool? enabled = jsonConvert.convert<bool>(json['enabled']);
  if (enabled != null) {
    sMHPersonSpaceStorageInfoContents.enabled = enabled;
  }
  final bool? allowPersonalSpace =
      jsonConvert.convert<bool>(json['allowPersonalSpace']);
  if (allowPersonalSpace != null) {
    sMHPersonSpaceStorageInfoContents.allowPersonalSpace = allowPersonalSpace;
  }
  final String? capacity = jsonConvert.convert<String>(json['capacity']);
  if (capacity != null) {
    sMHPersonSpaceStorageInfoContents.capacity = capacity;
  }
  final String? availableSpace =
      jsonConvert.convert<String>(json['availableSpace']);
  if (availableSpace != null) {
    sMHPersonSpaceStorageInfoContents.availableSpace = availableSpace;
  }
  final String? size = jsonConvert.convert<String>(json['size']);
  if (size != null) {
    sMHPersonSpaceStorageInfoContents.size = size;
  }
  final String? internetTraffic =
      jsonConvert.convert<String>(json['internetTraffic']);
  if (internetTraffic != null) {
    sMHPersonSpaceStorageInfoContents.internetTraffic = internetTraffic;
  }
  return sMHPersonSpaceStorageInfoContents;
}

Map<String, dynamic> $SMHPersonSpaceStorageInfoContentsToJson(
    SMHPersonSpaceStorageInfoContents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['countryCode'] = entity.countryCode;
  data['phoneNumber'] = entity.phoneNumber;
  data['nickname'] = entity.nickname;
  data['role'] = entity.role;
  data['enabled'] = entity.enabled;
  data['allowPersonalSpace'] = entity.allowPersonalSpace;
  data['capacity'] = entity.capacity;
  data['availableSpace'] = entity.availableSpace;
  data['size'] = entity.size;
  data['internetTraffic'] = entity.internetTraffic;
  return data;
}

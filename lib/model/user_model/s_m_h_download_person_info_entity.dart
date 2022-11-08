import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_download_person_info_entity.g.dart';

@JsonSerializable()
class SMHDownloadPersonInfoEntity {
  int? ret;
  SMHDownloadPersonInfoData? data;

  SMHDownloadPersonInfoEntity();

  factory SMHDownloadPersonInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHDownloadPersonInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHDownloadPersonInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHDownloadPersonInfoData {
  SMHDownloadPersonInfoDataResp? resp;

  SMHDownloadPersonInfoData();

  factory SMHDownloadPersonInfoData.fromJson(Map<String, dynamic> json) =>
      $SMHDownloadPersonInfoDataFromJson(json);

  Map<String, dynamic> toJson() => $SMHDownloadPersonInfoDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHDownloadPersonInfoDataResp {
  int? ret;
  String? wxOpenId;
  String? wxUnionId;
  String? wxNickName;
  String? idfv;
  String? mobile;
  String? model;
  String? system;
  List<SMHDownloadPersonInfoDataRespAccountInfo>? accountInfo;
  int? id;

  SMHDownloadPersonInfoDataResp();

  factory SMHDownloadPersonInfoDataResp.fromJson(Map<String, dynamic> json) =>
      $SMHDownloadPersonInfoDataRespFromJson(json);

  Map<String, dynamic> toJson() => $SMHDownloadPersonInfoDataRespToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHDownloadPersonInfoDataRespAccountInfo {
  int? accountType;
  int? cloudSpace;
  int? usedSpace;
  int? remainSpace;
  int? expireDate;

  SMHDownloadPersonInfoDataRespAccountInfo();

  factory SMHDownloadPersonInfoDataRespAccountInfo.fromJson(
          Map<String, dynamic> json) =>
      $SMHDownloadPersonInfoDataRespAccountInfoFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHDownloadPersonInfoDataRespAccountInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

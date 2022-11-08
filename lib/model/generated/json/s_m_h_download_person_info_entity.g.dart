import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_download_person_info_entity.dart';

SMHDownloadPersonInfoEntity $SMHDownloadPersonInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHDownloadPersonInfoEntity sMHDownloadPersonInfoEntity =
      SMHDownloadPersonInfoEntity();
  final int? ret = jsonConvert.convert<int>(json['ret']);
  if (ret != null) {
    sMHDownloadPersonInfoEntity.ret = ret;
  }
  final SMHDownloadPersonInfoData? data =
      jsonConvert.convert<SMHDownloadPersonInfoData>(json['data']);
  if (data != null) {
    sMHDownloadPersonInfoEntity.data = data;
  }
  return sMHDownloadPersonInfoEntity;
}

Map<String, dynamic> $SMHDownloadPersonInfoEntityToJson(
    SMHDownloadPersonInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ret'] = entity.ret;
  data['data'] = entity.data?.toJson();
  return data;
}

SMHDownloadPersonInfoData $SMHDownloadPersonInfoDataFromJson(
    Map<String, dynamic> json) {
  final SMHDownloadPersonInfoData sMHDownloadPersonInfoData =
      SMHDownloadPersonInfoData();
  final SMHDownloadPersonInfoDataResp? resp =
      jsonConvert.convert<SMHDownloadPersonInfoDataResp>(json['resp']);
  if (resp != null) {
    sMHDownloadPersonInfoData.resp = resp;
  }
  return sMHDownloadPersonInfoData;
}

Map<String, dynamic> $SMHDownloadPersonInfoDataToJson(
    SMHDownloadPersonInfoData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resp'] = entity.resp?.toJson();
  return data;
}

SMHDownloadPersonInfoDataResp $SMHDownloadPersonInfoDataRespFromJson(
    Map<String, dynamic> json) {
  final SMHDownloadPersonInfoDataResp sMHDownloadPersonInfoDataResp =
      SMHDownloadPersonInfoDataResp();
  final int? ret = jsonConvert.convert<int>(json['ret']);
  if (ret != null) {
    sMHDownloadPersonInfoDataResp.ret = ret;
  }
  final String? wxOpenId = jsonConvert.convert<String>(json['wxOpenId']);
  if (wxOpenId != null) {
    sMHDownloadPersonInfoDataResp.wxOpenId = wxOpenId;
  }
  final String? wxUnionId = jsonConvert.convert<String>(json['wxUnionId']);
  if (wxUnionId != null) {
    sMHDownloadPersonInfoDataResp.wxUnionId = wxUnionId;
  }
  final String? wxNickName = jsonConvert.convert<String>(json['wxNickName']);
  if (wxNickName != null) {
    sMHDownloadPersonInfoDataResp.wxNickName = wxNickName;
  }
  final String? idfv = jsonConvert.convert<String>(json['idfv']);
  if (idfv != null) {
    sMHDownloadPersonInfoDataResp.idfv = idfv;
  }
  final String? mobile = jsonConvert.convert<String>(json['mobile']);
  if (mobile != null) {
    sMHDownloadPersonInfoDataResp.mobile = mobile;
  }
  final String? model = jsonConvert.convert<String>(json['model']);
  if (model != null) {
    sMHDownloadPersonInfoDataResp.model = model;
  }
  final String? system = jsonConvert.convert<String>(json['system']);
  if (system != null) {
    sMHDownloadPersonInfoDataResp.system = system;
  }
  final List<SMHDownloadPersonInfoDataRespAccountInfo>? accountInfo =
      jsonConvert.convertListNotNull<SMHDownloadPersonInfoDataRespAccountInfo>(
          json['accountInfo']);
  if (accountInfo != null) {
    sMHDownloadPersonInfoDataResp.accountInfo = accountInfo;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHDownloadPersonInfoDataResp.id = id;
  }
  return sMHDownloadPersonInfoDataResp;
}

Map<String, dynamic> $SMHDownloadPersonInfoDataRespToJson(
    SMHDownloadPersonInfoDataResp entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ret'] = entity.ret;
  data['wxOpenId'] = entity.wxOpenId;
  data['wxUnionId'] = entity.wxUnionId;
  data['wxNickName'] = entity.wxNickName;
  data['idfv'] = entity.idfv;
  data['mobile'] = entity.mobile;
  data['model'] = entity.model;
  data['system'] = entity.system;
  data['accountInfo'] = entity.accountInfo?.map((v) => v.toJson()).toList();
  data['id'] = entity.id;
  return data;
}

SMHDownloadPersonInfoDataRespAccountInfo
    $SMHDownloadPersonInfoDataRespAccountInfoFromJson(
        Map<String, dynamic> json) {
  final SMHDownloadPersonInfoDataRespAccountInfo
      sMHDownloadPersonInfoDataRespAccountInfo =
      SMHDownloadPersonInfoDataRespAccountInfo();
  final int? accountType = jsonConvert.convert<int>(json['accountType']);
  if (accountType != null) {
    sMHDownloadPersonInfoDataRespAccountInfo.accountType = accountType;
  }
  final int? cloudSpace = jsonConvert.convert<int>(json['cloudSpace']);
  if (cloudSpace != null) {
    sMHDownloadPersonInfoDataRespAccountInfo.cloudSpace = cloudSpace;
  }
  final int? usedSpace = jsonConvert.convert<int>(json['usedSpace']);
  if (usedSpace != null) {
    sMHDownloadPersonInfoDataRespAccountInfo.usedSpace = usedSpace;
  }
  final int? remainSpace = jsonConvert.convert<int>(json['remainSpace']);
  if (remainSpace != null) {
    sMHDownloadPersonInfoDataRespAccountInfo.remainSpace = remainSpace;
  }
  final int? expireDate = jsonConvert.convert<int>(json['expireDate']);
  if (expireDate != null) {
    sMHDownloadPersonInfoDataRespAccountInfo.expireDate = expireDate;
  }
  return sMHDownloadPersonInfoDataRespAccountInfo;
}

Map<String, dynamic> $SMHDownloadPersonInfoDataRespAccountInfoToJson(
    SMHDownloadPersonInfoDataRespAccountInfo entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['accountType'] = entity.accountType;
  data['cloudSpace'] = entity.cloudSpace;
  data['usedSpace'] = entity.usedSpace;
  data['remainSpace'] = entity.remainSpace;
  data['expireDate'] = entity.expireDate;
  return data;
}

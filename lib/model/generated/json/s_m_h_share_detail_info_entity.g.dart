import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';

import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_detail_info_entity.dart';

SMHShareDetailInfoEntity $SMHShareDetailInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHShareDetailInfoEntity sMHShareDetailInfoEntity =
      SMHShareDetailInfoEntity();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHShareDetailInfoEntity.name = name;
  }
  final String? expireTime = jsonConvert.convert<String>(json['expireTime']);
  if (expireTime != null) {
    sMHShareDetailInfoEntity.expireTime = expireTime;
  }
  final bool? disabled = jsonConvert.convert<bool>(json['disabled']);
  if (disabled != null) {
    sMHShareDetailInfoEntity.disabled = disabled;
  }
  final bool? needExtractionCode =
      jsonConvert.convert<bool>(json['needExtractionCode']);
  if (needExtractionCode != null) {
    sMHShareDetailInfoEntity.needExtractionCode = needExtractionCode;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    sMHShareDetailInfoEntity.status = status;
  }
  final bool? canSaveToNetDisc =
      jsonConvert.convert<bool>(json['canSaveToNetDisc']);
  if (canSaveToNetDisc != null) {
    sMHShareDetailInfoEntity.canSaveToNetDisc = canSaveToNetDisc;
  }
  final String? userId = jsonConvert.convert<String>(json['userId']);
  if (userId != null) {
    sMHShareDetailInfoEntity.userId = userId;
  }
  final String? userAvatar = jsonConvert.convert<String>(json['userAvatar']);
  if (userAvatar != null) {
    sMHShareDetailInfoEntity.userAvatar = userAvatar;
  }
  final String? userNickname =
      jsonConvert.convert<String>(json['userNickname']);
  if (userNickname != null) {
    sMHShareDetailInfoEntity.userNickname = userNickname;
  }

  final String? orgName = jsonConvert.convert<String>(json['orgName']);
  if (orgName != null) {
    sMHShareDetailInfoEntity.orgName = orgName;
  }

  final bool? isPermanent = jsonConvert.convert<bool>(json['isPermanent']);
  if (isPermanent != null) {
    sMHShareDetailInfoEntity.isPermanent = isPermanent;
  }

  final String? editionFlag = jsonConvert.convert<String>(json['editionFlag']);
  if (editionFlag != null) {
    sMHShareDetailInfoEntity.editionFlag =
        SMHEditionFlag.values.byName(editionFlag);
  }
  return sMHShareDetailInfoEntity;
}

Map<String, dynamic> $SMHShareDetailInfoEntityToJson(
    SMHShareDetailInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['expireTime'] = entity.expireTime;
  data['disabled'] = entity.disabled;
  data['needExtractionCode'] = entity.needExtractionCode;
  data['status'] = entity.status;
  data['canSaveToNetDisc'] = entity.canSaveToNetDisc;
  data['userId'] = entity.userId;
  data['userAvatar'] = entity.userAvatar;
  data['userNickname'] = entity.userNickname;
  data['editionFlag'] = entity.editionFlag?.name;
  data['orgName'] = entity.orgName;
  data['isPermanent'] = entity.isPermanent;
  return data;
}

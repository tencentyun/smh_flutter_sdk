import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_share_detail_info_entity.g.dart';

@JsonSerializable()
class SMHShareDetailInfoEntity {
  /// name：字符串，分享文件名称集合
  String? name;

  /// expireTime：日期字符串，过期时间
  String? expireTime;

  /// disabled: 布尔型，是否被禁用
  bool? disabled;

  /// needExtractionCode：布尔值，是否需要提取码
  bool? needExtractionCode;

  /// status：整型，审核状态，0 未审核 1 审核中 2 审核通过 3 审核未通过
  int? status;

  /// canSaveToNetDisc：布尔值，是否允许保存至网盘
  bool? canSaveToNetDisc;

  /// userId：整数，分享人 ID
  String? userId;

  /// userAvatar：字符串，分享人头像
  String? userAvatar;

  /// userNickname：字符串，分享人昵称
  String? userNickname;

  /// editionFlag：字符串，分享企业版本，personal 个人版 team 团队版 enterprise 企业版；
  SMHEditionFlag? editionFlag;

  /// 字符串，分享人组织名称；
  String? orgName;

  /// 布尔型，是否永久有效，可选参数，默认 false；
  bool? isPermanent;
  SMHShareDetailInfoEntity();

  factory SMHShareDetailInfoEntity.fromJson(Map<String, dynamic> json) =>
      $SMHShareDetailInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHShareDetailInfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_message_list_entity.g.dart';

@JsonSerializable()
class SMHMessageListEntity {
  /// unreadMessageNumber: 未读消息数量
  int? unreadMessageNumber;

  /// unreadWarnMessageNumber: 未读告警消息数量
  int? unreadWarnMessageNumber;

  /// unreadSystemMessageNumber: 未读系统消息数量
  int? unreadSystemMessageNumber;

  /// totalNum: 总数
  int? totalNum;

  /// contents
  List<SMHMessageListContents>? contents;

  SMHMessageListEntity();

  factory SMHMessageListEntity.fromJson(Map<String, dynamic> json) =>
      $SMHMessageListEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHMessageListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHMessageListContents {
  /// id: 消息ID
  int? id;

  /// title: 消息标题
  String? title;

  /// content: 消息内容
  String? content;

  /// notifiedBy: 消息发送人ID
  String? notifiedBy;

  /// notifiedByNickname: 消息发送人昵称，可空
  String? notifiedByNickname;

  /// notifiedByAvatar: 消息发送人头像
  String? notifiedByAvatar;

  /// type: 消息类型
  int? type;

  /// hasRead: 是否已读
  bool? hasRead;

  /// creationTime: 创建时间
  String? creationTime;

  /// messageAction: 消息详细分类，可选值：authority、share、esign、userManage、quota
  SMHMessageAction? messageAction;

  SMHMessageListContents();

  factory SMHMessageListContents.fromJson(Map<String, dynamic> json) =>
      $SMHMessageListContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHMessageListContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_space_dymanic_entity.g.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

@JsonSerializable()
class SMHSpaceDymanicEntity {
  SMHSpaceDymanicTotal? total;

  /// hitsCount: 本次搜索返回的结果总数
  int? hitsCount;

  /// hasMore: 布尔型，是否有更多搜索结果；
  bool? hasMore;

  /// searchFinished: 布尔型，搜索任务是否完成；
  bool? searchFinished;
  bool? allResultCovered;
  List<SMHSpaceDymanicContents>? contents;

  /// lastHit: 搜索任务结束时，返回本次搜索任务的最后一条记录，数据结构与 contents 中记录一致；搜索任务未结束则无此字段；
  SMHSpaceDymanicContentsList? lastHit;

  /// searchId: 搜索任务 ID，用于异步获取搜索结果；
  String? searchId;
  SMHSpaceDymanicEntity();

  factory SMHSpaceDymanicEntity.fromJson(Map<String, dynamic> json) =>
      $SMHSpaceDymanicEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHSpaceDymanicEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHSpaceDymanicTotal {
  /// value: 数字，总数
  int? value;

  /// relation: 字符串，eq表示总数为 total.value，gte 表示总数比 total.value 更多
  String? relation;

  SMHSpaceDymanicTotal();

  factory SMHSpaceDymanicTotal.fromJson(Map<String, dynamic> json) =>
      $SMHSpaceDymanicTotalFromJson(json);

  Map<String, dynamic> toJson() => $SMHSpaceDymanicTotalToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHSpaceDymanicContents {
  String? date;
  List<SMHSpaceDymanicContentsList>? list;

  SMHSpaceDymanicContents();

  factory SMHSpaceDymanicContents.fromJson(Map<String, dynamic> json) =>
      $SMHSpaceDymanicContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHSpaceDymanicContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHSpaceDymanicContentsList {
  int? id;

  /// logType：日志类型 user | api
  SMHLoginType? logType;
  String? operationTime;
  String? action;
  String? actionType;

  /// libraryId: 组织 libraryId；
  String? libraryId;

  /// spaceId: 空间 ID
  String? spaceId;

  /// spaceTag: 空间 tag
  SMHSpaceTag? spaceTag;

  /// operatorId：操作者 ID
  String? operatorId;

  /// operatorName：操作者昵称
  String? operatorName;

  /// operatorAvatar: 操作者头像
  String? operatorAvatar;

  /// objectPath：操作前的对象路径，绝对路径，包含文件名
  String? objectPath;

  /// objectName：操作前对象名称
  String? objectName;

  /// details：操作内容
  String? details;
  SMHDymanicActionType? actionTypeDetail;

  /// isFile：是否是文件
  bool? isFile;

  /// toObjectName: 操作后的对象名称
  String? toObjectName;

  /// toObjectPath: 操作后的对象路径，绝对路径，包含文件名
  String? toObjectPath;

  /// toParentId：操作后的对象 parentId
  int? toParentId;

  /// contentType：操作后的对象内容类型
  String? contentType;

  /// type：文件类型，dir | file；
  SMHFileType? type;

  /// isExist: 是否存在；
  bool? isExist;
  int? orgId;

  /// fileType：操作后的对象文件类型
  SMHFileType? fileType;

  /// previewByDoc: 是否可通过 onlyoffice 预览；
  bool? previewByDoc;

  /// previewByCI: 是否可通过万象预览；
  bool? previewByCI;

  /// previewAsIcon: 是否可用预览图当做 icon；
  bool? previewAsIcon;

  /// group: 群组空间信息；和共享群组空间信息、团队空间信息三选一返回
  SMHFileDetailGroup? group;

  /// user: 用户空间信息；和共享群组空间信息、团队空间信息三选一返回
  SMHFileDetailUser? user;

  /// team 团队空间信息； 和共享群组空间信息、用户空间信息三选一返回
  SMHFileDetailTeam? team;

  SMHSpaceDymanicContentsList();

  factory SMHSpaceDymanicContentsList.fromJson(Map<String, dynamic> json) =>
      $SMHSpaceDymanicContentsListFromJson(json);

  Map<String, dynamic> toJson() => $SMHSpaceDymanicContentsListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

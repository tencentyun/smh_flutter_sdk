import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_work_space_dymanic_entity.g.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

@JsonSerializable()
class SMHWorkSpaceDymanicEntity {
  /// totalNum: 总数；
  int? totalNum;

  /// contents: 查询结果；
  List<SMHWorkSpaceDymanicContents>? contents;

  SMHWorkSpaceDymanicEntity();

  factory SMHWorkSpaceDymanicEntity.fromJson(Map<String, dynamic> json) =>
      $SMHWorkSpaceDymanicEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHWorkSpaceDymanicEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHWorkSpaceDymanicContents {
  ///   操作日期
  String? date;
  List<SMHWorkSpaceDymanicContentsList>? list;

  SMHWorkSpaceDymanicContents();

  factory SMHWorkSpaceDymanicContents.fromJson(Map<String, dynamic> json) =>
      $SMHWorkSpaceDymanicContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHWorkSpaceDymanicContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHWorkSpaceDymanicContentsList {
  ///   name：群组 or 团队名称
  String? name;

  ///     details：操作内容
  List<SMHWorkSpaceDymanicContentsListDetails>? details;

  SMHWorkSpaceDymanicContentsList();

  factory SMHWorkSpaceDymanicContentsList.fromJson(Map<String, dynamic> json) =>
      $SMHWorkSpaceDymanicContentsListFromJson(json);

  Map<String, dynamic> toJson() => $SMHWorkSpaceDymanicContentsListToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHWorkSpaceDymanicContentsListDetails {
  ///     id 动态 ID；
  int? id;

  ///     logType：日志类型 user | api
  SMHLoginType? logType;

  ///     operationTime：操作时间
  String? operationTime;

  ///     action：操作名称

  String? action;
  SMHActionType? actionType;

  ///     libraryId: 组织 libraryId；
  String? libraryId;

  ///     spaceId: 空间 ID
  String? spaceId;

  ///     spaceTag: 空间 tag
  SMHSpaceTag? spaceTag;

  ///     operatorId：操作者 ID
  String? operatorId;

  ///     operatorName：操作者昵称
  String? operatorName;

  ///     operatorAvatar: 操作者头像
  String? operatorAvatar;

  ///     operatorPhoneNumber: 操作者手机号
  String? objectPath;

  ///     objectName：操作前对象名称
  String? objectName;
  String? details;

  ///     actionTypeDetail：操作类型详情
  SMHDymanicActionType? actionTypeDetail;

  ///     isFile：是否是文件
  bool? isFile;

  ///     toObjectName: 操作后的对象名称
  String? toObjectName;

  ///     objectPath：操作前的对象路径，绝对路径，包含文件名
  String? toObjectPath;

  ///     toParentId：操作后的对象 parentId
  int? toParentId;

  ///     contentType：操作后的对象内容类型
  String? contentType;

  ///     type：文件类型，dir | file；
  SMHFileType? type;

  ///     isExist: 是否存在；
  bool? isExist;

  ///     orgId：组织 ID
  int? orgId;

  ///  orgName：组织 名称
  String? orgName;

  ///     fileType：操作后的对象文件类型
  SMHFileType? fileType;

  ///     previewByDoc: 是否可通过 onlyoffice 预览；
  bool? previewByDoc;

  ///     previewByCI: 是否可通过万象预览；
  bool? previewByCI;

  ///     previewAsIcon: 是否可用预览图当做 icon；
  bool? previewAsIcon;

  /// team 团队空间信息； 和共享群组空间信息、用户空间信息三选一返回
  SMHFileDetailTeam? team;

  /// group: 共享群组空间信息；和 用户空间信息、团队空间信息三选一返回
  SMHFileDetailGroup? group;

  /// user: 用户空间信息；和共享群组空间信息、团队空间信息三选一返回
  SMHFileDetailUser? user;

  SMHWorkSpaceDymanicContentsListDetails();

  factory SMHWorkSpaceDymanicContentsListDetails.fromJson(
          Map<String, dynamic> json) =>
      $SMHWorkSpaceDymanicContentsListDetailsFromJson(json);

  Map<String, dynamic> toJson() =>
      $SMHWorkSpaceDymanicContentsListDetailsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

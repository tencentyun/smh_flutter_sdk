import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_recycle_items_entity.g.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

@JsonSerializable()
class SMHRecycleItemsEntity {
  /// totalNum: 整数，回收站所有文件和文件夹总数。
  int? totalNum;

  /// nextMarker: 字符串或整数，用于顺序列出分页的标识；
  String? nextMarker;

  /// contents: 对象数组，目录或相簿内的具体内容：
  List<SMHRecycleItemsContents>? contents;

  SMHRecycleItemsEntity();

  factory SMHRecycleItemsEntity.fromJson(Map<String, dynamic> json) =>
      $SMHRecycleItemsEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHRecycleItemsEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHRecycleItemsContents {
  ///   recycledItemId: 数字，回收站id；
  int? recycledItemId;

  String? spaceId;

  ///   originalPath: 数组，原始路径；
  List<String>? originalPath;

  ///   size: 文件大小，为了避免数字精度问题，这里为字符串格式；
  String? size;

  ///   previewByDoc: 是否可通过 wps 预览；
  bool? previewByDoc;

  ///   previewByCI: 是否可通过万象预览；
  bool? previewByCI;

  ///   previewAsIcon: 是否可用预览图当做 icon；
  bool? previewAsIcon;

  ///   fileType: 文件类型：excel、powerpoint 等；
  SMHFileType? fileType;

  ///   name: 字符串，目录或相簿名或文件名；
  String? name;

  ///   type: 字符串，条目类型：
  ///     dir: 目录或相簿；
  ///     file: 文件，仅用于文件类型媒体库；
  ///     image: 图片，仅用于媒体类型媒体库；
  ///     video: 视频，仅用于媒体类型媒体库；
  SMHFileType? type;

  ///   creationTime: ISO 8601格式的日期与时间字符串，表示目录或相簿的创建时间或文件的上传时间，例如 2020-10-14T10:17:57.953Z；
  String? creationTime;

  ///   modificationTime: ISO 8601格式的日期与时间字符串，表示目录或相簿的修改时间，例如 2020-10-14T10:17:57.953Z；
  String? modificationTime;

  ///   removalTime: ISO 8601格式的日期与时间字符串，表示目录或相簿的删除时间，例如 2020-10-14T10:17:57.953Z；
  String? removalTime;

  ///   remainingTime: 数字，剩余天数，不足一天的部分不计入；
  int? remainingTime;
  bool? isOverRestoreTime;

  ///   authorityList 允许操作的权限；
  SMHAuthorityRoleItemEntity? authorityList;
  String? removedByNickname;
  String? removedByAvatar;
  SMHSpaceTag? spaceTag;
  SMHFileDetailTeam? team;
  SMHFileDetailUser? user;
  SMHFileDetailGroup? group;

  SMHRecycleItemsContents();

  factory SMHRecycleItemsContents.fromJson(Map<String, dynamic> json) =>
      $SMHRecycleItemsContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHRecycleItemsContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

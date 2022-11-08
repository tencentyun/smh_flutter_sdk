import 'dart:convert';

import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_related_to_me_list_entity.g.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';

import '../api_model/s_m_h_directory_detail_entity.dart';

@JsonSerializable()
class SMHRelatedToMeListEntity {
  /// totalNum: 总数
  int? totalNum;

  /// nextMarker: 字符串或整数，用于顺序列出分页的标识；
  String? nextMarker;

  /// contents: 文件列表
  List<SMHRelatedToMeListContents>? contents;

  SMHRelatedToMeListEntity();

  factory SMHRelatedToMeListEntity.fromJson(Map<String, dynamic> json) =>
      $SMHRelatedToMeListEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHRelatedToMeListEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SMHRelatedToMeListContents {
  /// description: 与我相关的描述；
  String? description;

  /// spaceId：字符串，空间 ID；
  String? spaceId;

  /// spaceOrgId: 空间所属企业 ID；
  int? spaceOrgId;

  /// type: 字符串，文件目录类型：
  ///   dir: 目录或相簿；
  ///   file: 文件，仅用于文件类型媒体库；
  SMHFileType? type;

  /// visible 是否可见（文件目录被删除或无权限时为 false)；
  bool? visible;

  /// modificationTime: 文件最近一次被覆盖的时间；
  String? modificationTime;

  /// fileType: 文件类型：excel、powerpoint 等；
  SMHFileType? fileType;

  /// contentType: 媒体类型；
  String? contentType;

  /// name 文件目名称；
  String? name;

  /// size: 文件目录大小；
  String? size;

  /// crc64: 文件的 CRC64-ECMA182 校验值，为了避免数字精度问题，这里为字符串格式；
  String? crc64;
  String? eTag;

  /// userId: 文件创建者 ID；
  String? userId;

  /// previewByDoc: 是否可通过 onlyoffice 预览；
  bool? previewByDoc;

  /// previewByCI: 是否可通过万象预览；
  bool? previewByCI;

  /// previewAsIcon: 是否可用预览图做 icon；
  bool? previewAsIcon;

  /// authorityList:允许操作的权限；
  SMHAuthorityRoleItemEntity? authorityList;

  /// localSync: 当该文件夹是同步盘，或是同步盘的子级文件目录时，返回该字段
  SMHDirectoryDetailLocalSync? localSync;
  SMHFileDetailTeam? team;
  SMHFileDetailGroup? group;
  SMHFileDetailUser? user;

  /// isUserBelongSpace: 是否存在于用户加入的空间
  bool? isUserBelongSpace;

  SMHRelatedToMeListContents();

  factory SMHRelatedToMeListContents.fromJson(Map<String, dynamic> json) =>
      $SMHRelatedToMeListContentsFromJson(json);

  Map<String, dynamic> toJson() => $SMHRelatedToMeListContentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_share_file_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_extraction_code_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_detail_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

class SMHUserShareApis {
  static const String urlPrefix = 'v1/share';

  /// 修改分享链接。
  ///
  /// 权限要求：超级管理员或系统管理员可以修改任意分享链接；普通用户仅可删除自己创建的分享链接；
  /// OrganizationId: 组织 ID，必选参数；
  /// ShareId: 分享 ID；
  /// UserToken: 用户令牌，必选参数；
  /// expireTime：日期字符串，过期时间，必选参数；
  /// extractionCode：字符串，提取码，可选参数；
  /// linkToLatestVersion：布尔型，是否链接到最新版，必选参数；
  /// canPreview：布尔型，是否能预览，必选参数；
  /// canDownload：布尔型，是否能下载，必选参数；
  /// canSaveToNetDisc：布尔型，是否能保存到网盘，必选参数；
  /// canModify:布尔型，是否可在线编辑，可选参数；
  /// previewCount: 预览次数限制，可选参数；
  /// downloadCount: 下载次数限制，可选参数；
  /// disabled: 布尔型，是否被禁用，可选参数，默认 false；
  /// isPermanent: 布尔型，是否永久有效，可选参数，默认 false；
  static Future<SMHResponse<SMHShareFileInfoEntity>?> updateShareFileInfo({
    required String organizationId,
    required String userToken,
    required String shareId,
    String? expireTime,
    String? extractionCode,
    bool? linkToLatestVersion,
    bool? canPreview,
    bool? canDownload,
    bool? canSaveToNetDisc,
    bool? canModify,
    int? previewCount,
    int? downloadCount,
    bool? disabled,
    bool? isPermanent,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> body = {};
    body.addKeyWithObject('expireTime', expireTime);
    body.addKeyWithObject('extractionCode', extractionCode);
    body.addKeyWithObject('linkToLatestVersion', linkToLatestVersion);
    body.addKeyWithObject('canPreview', canPreview);
    body.addKeyWithObject('canDownload', canDownload);
    body.addKeyWithObject('canSaveToNetDisc', canSaveToNetDisc);
    body.addKeyWithObject('canModify', canModify);
    body.addKeyWithObject('previewCount', previewCount);
    body.addKeyWithObject('downloadCount', downloadCount);
    body.addKeyWithObject('disabled', disabled);
    body.addKeyWithObject('isPermanent', isPermanent);
    return SMHPostRequest<SMHShareFileInfoEntity>().request(
        [urlPrefix, organizationId, 'update', shareId],
        query: {'user_token': userToken},
        body: body,
        finishCallback: finishCallback);
  }

  /// 分享文件
  ///
  /// 权限要求：超级管理员或系统管理员可以修改任意分享链接；普通用户仅可删除自己创建的分享链接；
  /// OrganizationId: 组织 ID，必选参数；
  /// name：字符串，分享文件名集合，如果有多个文件，显示第一个文件名 + 等，必选参数；
  /// directoryInfoList：数组，文件信息集合，必选参数；
  /// spaceOrgId: 整数，所属组织 ID，可选参数，默认为当前登录组织 ID；
  /// spaceId：字符串，空间 ID；
  /// path：字符串，文件路径；
  /// versionId：整数，文件版本 id；
  /// type：文件类型；
  /// expireTime：日期字符串，过期时间，必选参数；
  /// extractionCode：字符串，提取码；
  /// linkToLatestVersion：布尔型，是否链接到最新版，必选参数；
  /// canPreview：布尔型，是否能预览，必选参数；
  /// canDownload：布尔型，是否能下载，必选参数；
  /// canSaveToNetDisc：布尔型，是否能保存到网盘，必选参数；
  /// previewCount：最大可预览次数，可选参数，默认无限制；
  /// downloadCount：最大可下载次数，可选参数，默认无限制；
  /// isPermanent: 布尔型，是否永久有效，可选参数，默认 false；
  static Future<SMHResponse<SMHShareFileInfoEntity>?> shareFileInfo({
    required String organizationId,
    required String userToken,
    required String name,
    required List<SMHFileItemEntity> directoryInfoList,
    required String expireTime,
    required bool linkToLatestVersion,
    required bool canPreview,
    required bool canDownload,
    required bool canSaveToNetDisc,
    bool? canModify,
    String? extractionCode,
    int? previewCount,
    int? downloadCount,
    bool? isPermanent,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> body = {};
    body.addKeyWithObject('name', name);
    body.addKeyWithObject(
        'directoryInfoList', directoryInfoList.map((e) => e.toJson()).toList());
    body.addKeyWithObject('expireTime', expireTime);
    body.addKeyWithObject('extractionCode', extractionCode);
    body.addKeyWithObject('linkToLatestVersion', linkToLatestVersion);
    body.addKeyWithObject('canPreview', canPreview);
    body.addKeyWithObject('canDownload', canDownload);
    body.addKeyWithObject('canSaveToNetDisc', canSaveToNetDisc);
    body.addKeyWithObject('canModify', canModify);
    body.addKeyWithObject('previewCount', previewCount);
    body.addKeyWithObject('downloadCount', downloadCount);
    body.addKeyWithObject('isPermanent', isPermanent);
    return SMHPostRequest<SMHShareFileInfoEntity>().request(
        [urlPrefix, organizationId],
        query: {'user_token': userToken},
        body: body,
        finishCallback: finishCallback);
  }

  /// 删除分享链接
  ///
  /// 权限要求：超级管理员或系统管理员可以删除任意分享链接；普通用户仅可删除自己创建的分享链接；
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 用户令牌，必选参数；
  /// 字符串数组，每个元素对应要删除的分享 ID；
  static Future<SMHResponse?> deleteShareLink({
    required String organizationId,
    required String userToken,
    required List<String> shareIds,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request([urlPrefix, organizationId, 'delete'],
        query: {'user_token': userToken},
        body: shareIds,
        finishCallback: finishCallback);
  }

  /// 禁用分享链接
  ///
  /// 权限要求：超级管理员或系统管理员可以删除任意分享链接；普通用户仅可删除自己创建的分享链接；
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 用户令牌，必选参数；
  /// 字符串数组，每个元素对应要删除的分享 ID；
  static Future<SMHResponse?> disableShareLink({
    required String organizationId,
    required String userToken,
    required String shareId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
        [urlPrefix, organizationId, 'disabled', shareId],
        query: {'user_token': userToken}, finishCallback: finishCallback);
  }

  /// 获取分享链接信息（打开分享 url 时查询）
  ///
  /// ShareToken: 分享 url 上带上的 Hash 值；
  static Future<SMHResponse?> getShareLinkDetailInfo({
    required String shareToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHShareDetailInfoEntity>().request(
        [urlPrefix, 'url-detail', shareToken],
        finishCallback: finishCallback);
  }

  /// 获取我分享的链接
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// OrderBy: 排序方式，name | creationTime | expireTime | previewCountUsed | downloadCountUsed 默认过期时间，可选参数；
  /// OrderByType: 排列顺序，正序或倒序 desc or asc，可选参数；
  /// UserToken: 用户令牌，必选参数；
  static Future<SMHResponse<SMHShareListEntity>?> getMyShareFileList({
    required String organizationId,
    required String userToken,
    int page = 1,
    int pageSize = 20,
    String? marker,
    int? limit,
    SMHShareListOrderBy orderBy = SMHShareListOrderBy.expireTime,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {
      'order_by': orderBy.name,
      'order_by_type': orderByType.name,
      'user_token': userToken
    };
    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }
    return SMHGetRequest<SMHShareListEntity>().request(
        [urlPrefix, organizationId, 'list'],
        query: query, finishCallback: finishCallback);
  }

  /// 获取链接详情
  ///
  /// OrganizationId: 组织 ID，必选参数；
  /// ShareId: 分享 ID，必选参数；；
  /// UserToken: 用户令牌，必选参数；
  static Future<SMHResponse<SMHShareFileDetailEntity>?> getShareLinkDetail({
    required String organizationId,
    required String userToken,
    required String shareId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHShareFileDetailEntity>().request(
        [urlPrefix, organizationId, 'detail', shareId],
        query: {'user_token': userToken}, finishCallback: finishCallback);
  }

  /// 验证提取码
  ///
  ///  ShareToken: 分享 url 上带上的 Hash 值；
  ///  ExtractionCode: 提取码；
  ///  UserToken: 访问令牌，可选参数；
  static Future<SMHResponse<SMHExtractionCodeInfoEntity>?>
      getVerifyExtractionCode({
    required String shareToken,
    required String extractionCode,
    String? userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('user_token', userToken);
    query.addKeyWithObject('extraction_code', extractionCode);
    return SMHGetRequest<SMHExtractionCodeInfoEntity>().request(
      [urlPrefix, 'verify-extraction-code', shareToken],
      query: query,
      finishCallback: finishCallback,
    );
  }
}

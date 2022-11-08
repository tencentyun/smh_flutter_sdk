import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/error/smh_error.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/core/services/smh_transfer_service.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_avatar_params_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_download_person_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_person_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_avatar_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_list_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';
import 'package:dio/dio.dart';

class SMHUserAccountApis {
  static const String urlPrefix = 'v1/user';

  /// 查询用户个人信息，移动端在下载个人信息时使用。
  ///
  /// 接口说明
  /// 在调用此接口前，需要端侧通过 store 接口上报的数据至 store 获取 code，上报的数据格式为" {"idfv": "xxxx", "model": "xxx", "system": "xxx"}。
  /// OrganizationId: 组织 ID，必选参数
  /// Codes：端侧上报的数据标识，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse<SMHDownloadPersonInfoEntity>?> downloadPersonInfo({
    required String organizationId,
    required String code,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHDownloadPersonInfoEntity>().request(
      [urlPrefix, organizationId, 'information-report'],
      query: {'code': code, 'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 批量删除用户
  ///
  /// 功能描述
  /// 一次删除多个用户。
  /// 接口说明
  /// 超级管理员可新增、删除任意普通成员或系统管理员
  /// 系统管理员可新增、删除任意普通成员
  /// 普通成员不可新增、删除用户
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserIds：待删除的用户 ID 列表，用逗号分隔，如12,13
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> batchDeleteUser({
    required String organizationId,
    required String userToken,
    required List<String> userIds,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, organizationId, userIds.join(',')],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 更新用户信息。
  ///
  /// 超级管理员可更新任意普通成员或系统管理员信息
  /// 系统管理员可更新任意普通成员信息
  /// 普通成员只可更新自身信息
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 用户访问令牌，必选参数；
  /// nickname: 字符串，昵称，可选参数；
  /// email: 字符串，邮箱，可选参数；
  /// comment: 字符串，备注，可选参数；
  /// enabled: 布尔值，启用状态，可选参数；
  /// role: 字符串，用户角色，'superAdmin' | 'admin' | 'user'，可选参数；
  /// allowPersonalSpace: 布尔值，是否允许分配个人空间，可选参数；
  static Future<SMHResponse?> updatePersonInfo({
    required String organizationId,
    required String userToken,
    required String userId,
    String? nickname,
    String? email,
    String? comment,
    String? enabled,
    String? role,
    String? allowPersonalSpace,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> body = {};
    body.addKeyWithObject('nickname', nickname);
    body.addKeyWithObject('email', email);
    body.addKeyWithObject('comment', comment);
    body.addKeyWithObject('enabled', enabled);
    body.addKeyWithObject('role', role);
    body.addKeyWithObject('allowPersonalSpace', allowPersonalSpace);

    return SMHPostRequest().request(
      [urlPrefix, organizationId, userId],
      query: {'user_token': userToken},
      body: body,
      finishCallback: finishCallback,
    );
  }

  /// 查询用户。
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// WithSpaceUsage: 是否同时获取个人空间用量信息，1|0，默认 0；
  /// WithBelongingTeams: 是否同时获取用户所属的团队信息，1|0，默认 0；
  /// ExcludeTeamUser：是否过滤已有团队归属的用户，1|0，默认 0；
  /// Keyword: 查询的手机号或昵称，如果不带 keyword 参数，则是查询组织下的所有用户
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// OrderBy: 排序方式，支持 role | enabled | nickname，默认 role;
  /// OrderByType: 排列顺序，正序或倒序 desc or asc；
  static Future<SMHResponse<SMHPersonInfoEntity>?> getPersonInfo({
    required String organizationId,
    required String userToken,
    required String userId,
    bool? withSpaceUsage = false,
    bool? withBelongingTeams = false,
    bool? excludeTeamUser = false,
    String? keyword,
    int page = 1,
    int pageSize = 20,
    String? marker,
    int? limit,
    SMHMemberOrderBy? orderBy,
    SMHOrderByType? orderByType,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject(
        'with_belonging_teams', withBelongingTeams?.smhToString());
    query.addKeyWithObject('exclude_team_user', excludeTeamUser?.smhToString());
    query.addKeyWithObject('with_space_usage', withSpaceUsage?.smhToString());
    query.addKeyWithObject('order_by', orderBy?.name);
    query.addKeyWithObject('order_by_type', orderByType?.name);
    query.addKeyWithObject('user_token', userToken);

    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }

    return SMHGetRequest<SMHPersonInfoEntity>().request(
      [urlPrefix, organizationId, userId],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 查询用户列表。
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// WithSpaceUsage: 是否同时获取个人空间用量信息，1|0，默认 0；
  /// WithBelongingTeams: 是否同时获取用户所属的团队信息，1|0，默认 0；
  /// ExcludeTeamUser：是否过滤已有团队归属的用户，1|0，默认 0；
  /// Keyword: 查询的手机号或昵称，如果不带 keyword 参数，则是查询组织下的所有用户
  /// Page: 分页码，默认第一页，可选参数；
  /// PageSize: 分页大小，默认 20，可选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// OrderBy: 排序方式，支持 role | enabled | nickname，默认 role;
  /// OrderByType: 排列顺序，正序或倒序 desc or asc；
  static Future<SMHResponse<SMHUserListInfoEntity>?> getPersonListInfo({
    required String organizationId,
    required String userToken,
    bool? withSpaceUsage = false,
    bool? withBelongingTeams = false,
    bool? excludeTeamUser = false,
    String? keyword,
    int page = 1,
    int pageSize = 20,
    String? marker,
    int? limit,
    SMHMemberOrderBy? orderBy,
    SMHOrderByType? orderByType,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject(
        'with_belonging_teams', withBelongingTeams?.smhToString());
    query.addKeyWithObject('exclude_team_user', excludeTeamUser?.smhToString());
    query.addKeyWithObject('with_space_usage', withSpaceUsage?.smhToString());
    query.addKeyWithObject('order_by', orderBy?.name);
    query.addKeyWithObject('order_by_type', orderByType?.name);
    query.addKeyWithObject('user_token', userToken);

    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }

    return SMHGetRequest<SMHUserListInfoEntity>().request(
      [urlPrefix, organizationId],
      query: query,
      finishCallback: finishCallback,
    );
  }

  static const urlPrefixAvatar = 'v1/file';

  /// 确认上传头像。
  /// 若不传 for_current_org 参数，用户在不同组织中展示相同的头像
  ///
  /// UserToken: 用户令牌，必选参数；
  /// for_current_org: 是否只用于当前机构，可选参数；
  /// FilePath: 头像文件 path，即获取头像简单上传文件参数中的响应字段 path，必选参数；
  static Future<SMHResponse<SMHUserAvatarEntity>?> confirmUploadAvatar({
    required String userToken,
    required String filePath,
    required bool forCurrentOrg,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest<SMHUserAvatarEntity>().request(
      [urlPrefixAvatar, 'avatar', filePath],
      urlMethod: forCurrentOrg ? 'for_current_org' : '',
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 获取头像简单上传文件参数
  ///
  /// 接口说明
  /// PUT 简单上传指使用 HTTP PUT 请求上传一个文件，调用 COS 接口时，请求体即为文件的内容；
  /// 调用该接口将返回一系列用于 PUT 简单上传请求和确认上传完成的参数，上传的目标 URL 为 https://{Domain}``{Path}，其中 Domain 为响应体中的 domain 字段，Path 为响应体中的 path 字段，例如 https://examplebucket-1250000000.cos.ap-beijing.myqcloud.com/smhxxx/xxx.mp4；
  /// PUT 简单上传时还需要指定一系列额外的请求头部字段，这些字段的名和值包含在响应体中的 headers 字段中；
  /// 在完成实际上传后，上传的目标 URL 将返回 HTTP 200 OK；
  ///
  /// UserToken: 用户令牌，必选参数
  /// FileExt: 请求上传的文件后缀，仅支持 png/jpg/jpeg，必选参数
  static Future<SMHResponse<SMHAvatarParamsEntity>?> getUploadAvatarParams({
    required String userToken,
    required SMHUploadAvatar fileExt,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPutRequest<SMHAvatarParamsEntity>().request(
      [urlPrefixAvatar, 'avatar'],
      query: {'user_token': userToken, 'ext': fileExt.name},
      finishCallback: finishCallback,
    );
  }

  /// 上传头像
  ///
  /// image 头像二进制数据
  /// params 上传头像参数
  static Future<Response?> uploadAvatar(
      SMHAvatarParamsEntity params, List<int>? image) {
    SMHTransferService uploadService =
        SMHTransferService('https://' + params.domain!);
    Future<Response?> response;
    try {
      response = uploadService.dio.put(params.path!,
          data: image, options: Options(headers: params.headers!.toJson()));
    } on DioError catch (error) {
      SMHError smhError = uploadService.errorFactory(error);
      throw smhError;
    }
    return response;
  }
}

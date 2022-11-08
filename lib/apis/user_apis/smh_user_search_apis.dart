import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_search_team_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

class SMHUesrSearchApis {
  static const String urlPrefix = 'v1/search';

  /// 开始搜索团队。
  /// 接口说明
  ///
  /// 使用本接口发起异步搜索任务时，接口将在大约 2s 的时间返回，如果在返回时有部分或全部搜索结果，则返回已搜索出的结果的第一页（每页 20 个），
  /// 如果暂未搜索到结果则返回空数组，因此该接口实际返回的 contents 数量可能为 0 到 20 之间不等，且是否还有更多搜索结果，不应参考 contents 的数量，而应参考 hasMore 字段；
  /// 当需要获取后续页时，使用【继续获取搜索结果】接口；
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// CheckChildren: 1 或 0，检查是否有 children，可选参数
  /// CheckManagementPermission: 1 或 0，只搜索能够管理的团队，可选参数
  /// keyword: 字符串，搜索关键字，可使用空格分隔多个关键字，关键字之间为“或”的关系并优先展示匹配关键字较多的项目，可选参数；
  /// ancestorId: 整数，搜索范围，指定搜索的祖先团队，如搜索所有团队可不指定该字段，可选参数；
  static Future<SMHResponse<SMHSearchTeamResultEntity>?> searchTeam({
    required String organizationId,
    required String userToken,
    required String keyword,
    required int ancestorId,
    bool? checkChildren = false,
    bool? checkManagementPermission = false,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest<SMHSearchTeamResultEntity>().request(
      [urlPrefix, organizationId, 'team'],
      query: {
        'check_children': checkChildren?.smhToString(),
        'check_management_permission': checkManagementPermission?.smhToString(),
        'user_token': userToken
      },
      body: {'keyword': keyword, 'ancestorId': ancestorId},
      finishCallback: finishCallback,
    );
  }

  /// 继续获取搜索结果
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  /// CheckChildren: 1 或 0，检查是否有 children，可选参数
  /// Marker: 分页标识，创建搜索任务时或继续获取搜索结果时返回的 nextMarker 字段；
  static Future<SMHResponse<SMHSearchTeamResultEntity>?> searchNextTeam({
    required String organizationId,
    required String userToken,
    required String searchId,
    bool? checkChildren,
    String? marker,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHSearchTeamResultEntity>().request(
      [urlPrefix, organizationId, 'team', searchId],
      query: {
        'check_children': checkChildren?.smhToString(),
        'marker': marker,
        'user_token': userToken
      },
      finishCallback: finishCallback,
    );
  }

  /// 删除搜索任务
  ///
  /// 当客户端跳出搜索界面或更新搜索条件时，建议调用本接口结束并删除前次搜索任务；
  /// SearchId: 搜索任务 ID；
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> deleteSearchTeam({
    required String organizationId,
    required String userToken,
    required String searchId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHDeleteRequest().request(
      [urlPrefix, organizationId, searchId],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }
}

import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_list_recycle_space_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_virus_restore_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_virus_setting_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

class SMHUserVirusApis {
  static const String urlPrefix = 'v1/virus-detection';

  /// 可疑文件恢复接口（可批量）
  ///
  /// 要求权限：
  /// 企业空间、个人空间、共享空间管理员
  /// 共享空间：编辑者、操作者
  /// 个人空间的文件
  ///
  /// 在调用此接口前，需要端侧通过 store 接口上报的数据至 store 获取 code，上报的数据格式为" {"idfv": "xxxx", "model": "xxx", "system": "xxx"}。
  /// OrganizationId: 组织 ID，必选参数
  /// Codes：端侧上报的数据标识，必选参数
  /// UserToken: 用户令牌，必选参数
  /// restoreItems 恢复数据集合
  ///   spaceId 空间 ID
  ///   path 文件路径
  static Future<SMHResponse?> restoreVirusFile({
    required String organizationId,
    required String userToken,
    required List<SMHVirusRestoreItemEntity> restoreItems,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, organizationId, 'restore'],
      query: {'user_token': userToken},
      body: {'restoreItems': restoreItems.map((e) => e.toJson()).toList()},
      finishCallback: finishCallback,
    );
  }

  /// 可疑文件列表
  ///
  /// 功能描述
  /// 用于列出可疑文件列表，跨空间。
  /// 接口说明
  /// 目录内容的列出顺序为：默认无排序，根据传入参数 orderBy 和 orderByType 来决定排列顺序。
  ///
  /// 请求参数：
  /// OrganizationId: 组织 ID，必选参数；
  /// Marker: 用于顺序列出分页的标识，可选参数；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制；
  /// OrderBy: 排序字段，按名称排序为 name，按文件大小排序为 size，按时间排序为 creationTime；
  /// OrderByType: 排序方式，升序为 asc，降序为 desc；
  /// UserToken: 用户访问令牌，必选参数；
  /// 请求体
  static Future<SMHResponse<SMHFileDetailEntity>?> listVirusFile({
    required String organizationId,
    required String userToken,
    required List<SMHListRecycleSpaceItemEntity> spaceItems,
    int? page = 1,
    int? pageSize = 20,
    String? marker,
    String? limit,
    SMHOrderByType orderByType = SMHOrderByType.desc,
    SMHFileListOrderBy orderBy = SMHFileListOrderBy.creationTime,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {
      'user_token': userToken,
      'order_by': orderBy.name,
      'order_by_type': orderByType.name
    };
    if (limit != null && marker != null) {
      query.addKeyWithObject('limit', limit);
      query.addKeyWithObject('marker', marker);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }

    return SMHPostRequest<SMHFileDetailEntity>().request(
      [urlPrefix, organizationId, 'list'],
      query: query,
      body: {'spaceItems': spaceItems.map((e) => e.toJson()).toList()},
      finishCallback: finishCallback,
    );
  }

  /// 获取安全扫描开关设置信息
  ///
  /// 功能描述
  /// 用于获取安全扫描开关设置信息
  /// 接口说明
  /// 管理中心配置
  /// 请求参数：
  /// OrganizationId: 组织 ID，必选参数；
  /// UserToken: 用户访问令牌，必选参数；
  /// 成功，返回 HTTP 200 OK；失败，返回 HTTP 500 Internal Server Error。
  static Future<SMHResponse<SMHVirusSettingEntity>?> getVirusSettings({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHVirusSettingEntity>().request(
      [urlPrefix, organizationId, 'settings'],
      query: {
        'user_token': userToken,
      },
      finishCallback: finishCallback,
    );
  }

  /// 安全扫描开关设置接口
  /// 功能描述
  /// 用于对安全扫描开关设置
  ///
  /// enableAntivirus 是否开启云查毒
  static Future<SMHResponse?> setVirusSettings({
    required String organizationId,
    required String userToken,
    required bool enableAntivirus,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPutRequest().request(
      [urlPrefix, organizationId, 'settings'],
      query: {
        'user_token': userToken,
      },
      body: {
        'enableAntivirus': enableAntivirus.toString(),
      },
      finishCallback: finishCallback,
    );
  }
}

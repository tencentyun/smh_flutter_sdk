import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_space_dymanic_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_work_space_dymanic_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

class SMHUserDynamicApis {
  static const String urlPrefix = 'v1/dynamic';

  /// 查看工作台动态。
  /// 接口说明
  ///
  /// 动态从产生到可搜索，中间可能存在分钟级延迟
  /// 请求参数：
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse<SMHWorkSpaceDymanicEntity>?> getWorkspaceDynamic({
    required String organizationId,
    required String userToken,
    required List<SMHDymanicActionType> actionTypeDetail,
    required String startTime,
    required String endTime,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest<SMHWorkSpaceDymanicEntity>().request(
      [urlPrefix, organizationId, 'workbench-list'],
      query: {'user_token': userToken},
      body: {
        'startTime': startTime,
        'endTime': endTime,
        'actionTypeDetail': actionTypeDetail.map((e) => e.name).join('|')
      },
      finishCallback: finishCallback,
    );
  }

  /// 查看单个空间（个人空间、团队空间、共享空间）或空间下的文件夹动态。
  ///
  /// 动态从产生到可搜索，中间可能存在分钟级延迟
  /// 使用本接口发起异步搜索任务时，接口将在大约 2s 的时间返回，如果在返回时有部分或全部搜索结果，则返回已搜索出的结果的第一页（每页 20 个），如果暂未搜索到结果则返回空数组，因此该接口实际返回的 contents 数量可能为 0 到 20 之间不等，且是否还有更多搜索结果，不应参考 contents 的数量，而应参考 hasMore 字段；
  /// 当需要获取后续页时，使用【继续获取空间或文件夹动态】接口；
  /// spaceOrgId: 空间所在企业 ID，可选参数，不传默认为当前企业，主要用于跨企业查询共享群组场景；
  /// spaceId: 空间 ID，可选参数，不填则筛选自身拥有权限的所有空间动态；
  /// actionTypeDetail: 动态类型，多种类型用|分隔；当前支持类型如下：
  ///                   download 下载
  ///                   preview 预览
  ///                   delete 删除
  ///                   move 移动
  ///                   rename 重命名
  ///                   copy 复制
  ///                   create 新建
  ///                   update 更新
  ///                   restore 还原
  /// startTime/endTime: 搜索时间范围，建议使用示例中的标准时间，与时区无关；
  /// groupBy: 可选参数，根据指定字段来聚合返回，目前仅支持 operationTime；
  /// dirPath: 可选参数，文件夹 path，搜索文件夹动态时传入；
  static Future<SMHResponse<SMHSpaceDymanicEntity>?> getSpaceDynamic({
    required String organizationId,
    required String userToken,
    required List<SMHDymanicActionType> actionTypeDetail,
    required String startTime,
    required String endTime,
    String? dirPath,
    String? spaceOrgId,
    String? spaceId,
    String? groupBy = 'operationTime',
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> body = {};
    body.addKeyWithObject('startTime', startTime);
    body.addKeyWithObject('endTime', endTime);
    body.addKeyWithObject(
        'actionTypeDetail', actionTypeDetail.map((e) => e.name).join('|'));
    body.addKeyWithObject('spaceOrgId', spaceOrgId);
    body.addKeyWithObject('spaceId', spaceId);
    body.addKeyWithObject('dirPath', dirPath);
    body.addKeyWithObject('groupBy', groupBy);
    return SMHPostRequest<SMHSpaceDymanicEntity>().request(
      [urlPrefix, organizationId, 'list'],
      query: {'user_token': userToken},
      body: body,
      finishCallback: finishCallback,
    );
  }

  /// 继续获取空间或文件夹动态
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// SpaceOrgId: 空间机构 ID，可选参数，与【查看空间或文件夹动态接口】保持一致；
  /// UserToken: 用户令牌，必选参数
  /// GroupBy: 可选参数，根据指定字段来聚合返回，目前仅支持 operationTime；
  /// Marker: 分页标识，创建搜索任务时或继续获取搜索结果时返回的 nextMarker 字段，可选参数；
  static Future<SMHResponse<SMHSpaceDymanicEntity>?> getNextSpaceDynamic({
    required String organizationId,
    required String userToken,
    required String searchId,
    String? spaceOrgId,
    String? marker,
    String? groupBy = 'operationTime',
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('marker', marker);
    query.addKeyWithObject('space_org_id', spaceOrgId);
    query.addKeyWithObject('user_token', userToken);
    query.addKeyWithObject('group_by', groupBy);
    return SMHGetRequest<SMHSpaceDymanicEntity>().request(
      [urlPrefix, organizationId, searchId],
      query: query,
      finishCallback: finishCallback,
    );
  }
}

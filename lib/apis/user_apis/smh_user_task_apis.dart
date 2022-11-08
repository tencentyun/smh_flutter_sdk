import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_task_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_task_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';

class SMHUserTaskApis {
  static const urlPrefix = 'v1/task';

  /// 取消任务接口
  ///
  /// 并非所有任务都支持取消操作，详见启用异步任务的具体接口
  /// OrganizationId: 组织 ID，必选参数；
  /// TaskId: 任务 ID，必选参数；
  /// UserToken: 访问令牌，必选参数；
  static Future<SMHResponse<SMHTaskEntity>?> cancelTask({
    required String organizationId,
    required String userToken,
    required String taskId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest<SMHTaskEntity>().request(
      [urlPrefix, organizationId, 'cancel', taskId],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 查询异步任务状态。
  ///
  /// 任务的具体返回请参阅会产生异步任务的接口说明，部分接口会根据任务耗时情况返回同步或异步结果，此时异步结果通常与同步结果的格式保持一致；
  /// OrganizationId: 组织 ID，必选参数；
  /// TaskIdList: 任务 ID 列表，用逗号分隔，例如 10 或 10,12,13，必选参数；
  /// UserToken: 访问令牌，必选参数；
  static Future<SMHResponse<SMHTaskResultEntity>?> getTaskState({
    required String organizationId,
    required String userToken,
    required List<String> taskIds,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHTaskResultEntity>().request(
      [urlPrefix, organizationId, taskIds.join(',')],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }
}

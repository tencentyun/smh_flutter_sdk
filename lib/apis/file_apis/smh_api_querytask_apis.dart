import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_api_requests.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_api_task_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';

class SMHAPIQueryTaskApis {
  static const String urlPrefix = 'v1/task';

  /// 用于查询耗时任务执行情况
  /// 接口说明
  ///
  /// 任务的具体返回请参阅会产生异步任务的接口说明，部分接口会根据任务耗时情况返回同步或异步结果，此时异步结果通常与同步结果的格式保持一致；
  /// 仅能查询到任务结束时间在最近30天的任务，更早期的任务叫无法查询；
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// TaskIdList: 任务 ID 列表，用逗号分隔，例如 10 或 10,12,13；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<List<SMHApiTaskResultEntity>>?> queryTask({
    required String libraryId,
    required String spaceId,
    required List<String> taskIdList,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiGetRequest<List<SMHApiTaskResultEntity>>().request(
      [urlPrefix, libraryId, spaceId, taskIdList.join(',')],
      query: {
        'user_id': userId,
      },
      finishCallback: finishCallback,
    );
  }
}

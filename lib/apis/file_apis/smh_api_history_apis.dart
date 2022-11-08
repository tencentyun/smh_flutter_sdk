import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_api_requests.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_history_setting_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_setting_history_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

class SMHAPIHistoryApis {
  static const String urlPrefix = 'v1/directory-history';

  /// 用于删除历史版本
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  static Future<SMHResponse?> deleteHistory({
    required String libraryId,
    required String spaceId,
    required List<String> historyIds,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPostRequest().request(
      [urlPrefix, libraryId, spaceId, 'delete'],
      body: historyIds,
      finishCallback: finishCallback,
    );
  }

  /// 用于查询历史版本配置信息
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHHistorySettingEntity>?> getHistorySetting({
    required String libraryId,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiGetRequest<SMHHistorySettingEntity>().request(
      [urlPrefix, libraryId, 'library-history'],
      query: {'user_id': userId},
      finishCallback: finishCallback,
    );
  }

  /// 设置历史版本为最新版本
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// HistoryId: 历史版本 ID，必选参数；
  static Future<SMHResponse<SMHSettingHistoryResultEntity>?> setLastVersion({
    required String libraryId,
    required String spaceId,
    required String historyId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPostRequest<SMHSettingHistoryResultEntity>().request(
      [
        urlPrefix,
        libraryId,
        spaceId,
        'latest-version',
        historyId,
      ],
      finishCallback: finishCallback,
    );
  }

  /// 设置历史版本配置信息
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// enableFileHistory: 布尔型，是否打开历史版本；
  /// fileHistoryCount: 数字，历史版本最大数量；
  /// fileHistoryExpireDay: 数字，历史版本过期时间；
  /// isClearFileHistory: 布尔型，是否清除历史版本，在关闭历史版本时传入，可选参数；
  static Future<SMHResponse?> updateHistorySetting({
    required String libraryId,
    bool? enableFileHistory,
    int? fileHistoryCount,
    int? fileHistoryExpireDay,
    bool? isClearFileHistory,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> body = {};
    body.addKeyWithObject('enableFileHistory', enableFileHistory);
    body.addKeyWithObject('fileHistoryCount', fileHistoryCount);
    body.addKeyWithObject('fileHistoryExpireDay', fileHistoryExpireDay);
    body.addKeyWithObject('isClearFileHistory', isClearFileHistory);

    return SMHApiPostRequest().request(
      [urlPrefix, libraryId, 'library-history'],
      body: body,
      finishCallback: finishCallback,
    );
  }
}

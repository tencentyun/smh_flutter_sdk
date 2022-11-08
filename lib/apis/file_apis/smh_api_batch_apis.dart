import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_api_requests.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_batch_copy_result_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_batch_delete_result_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_batch_rename_result_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_batch_copy_input_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_batch_delete_input_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_batch_rename_input_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

class SMHAPIBatchApis {
  static const String urlPrefix = 'v1/batch';

  /// 批量删除目录或文件
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  ///
  /// SMHBatchDeleteInputEntity:
  /// path: 被删除的目录、相簿或文件路径，必选参数；
  /// permanent: 当开启回收站时，可选参数，则该参数指定将文件移入回收站还是永久删除文件，true: 永久删除，false: 移入回收站，默认为 false
  ///
  /// 执行成功
  /// 当项目较多以异步方式删除时，返回 HTTP 202 Accepted；
  /// 当项目较少以同步方式删除时，返回 HTTP 200 OK（全部执行成功）或 HTTP 207 Multi-Status（存在部分或全部执行失败）；
  static Future<SMHResponse<SMHBatchDeleteResultEntity>?> batchDeleteFile({
    required String libraryId,
    required String spaceId,
    required List<SMHBatchDeleteInputEntity> inputs,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPostRequest<SMHBatchDeleteResultEntity>().request(
        [urlPrefix, libraryId, spaceId],
        urlMethod: 'delete',
        query: {'user_id': userId},
        body: inputs.map((e) => e.toJson()).toList(),
        finishCallback: finishCallback);
  }

  /// 用于批量复制目录或文件
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// ShareAccessToken: 分享链接验证提取码时返回的 accessToken；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  ///
  /// SMHBatchCopyInputEntity:
  /// path: 被删除的目录、相簿或文件路径，必选参数；
  /// permanent: 当开启回收站时，可选参数，则该参数指定将文件移入回收站还是永久删除文件，true: 永久删除，false: 移入回收站，默认为 false；
  ///
  /// 执行成功
  /// 当项目较多以异步方式复制时，返回 HTTP 202 Accepted；
  /// 当项目较少以同步方式复制时，返回 HTTP 200 OK（全部执行成功）或 HTTP 207 Multi-Status（存在部分或全部执行失败）；
  static Future<SMHResponse<SMHBatchCopyResultEntity>?> batchCopyFile({
    required String libraryId,
    required String spaceId,
    required List<SMHBatchCopyInputEntity> inputs,
    String? userId,
    String? shareAccessToken,
    SMHFinishCalBack? finishCallback,
  }) {
    var query = {
      'user_id': userId,
    };
    query.addKeyWithObject('share_access_token', shareAccessToken);
    return SMHApiPostRequest<SMHBatchCopyResultEntity>().request(
      [urlPrefix, libraryId, spaceId],
      urlMethod: 'copy',
      query: query,
      body: inputs.map((e) => e.toJson()).toList(),
      finishCallback: finishCallback,
    );
  }

  /// 批量重命名或移动目录或文件
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  ///
  /// 执行成功
  /// 当项目较多以异步方式重命名或移动时，返回 HTTP 202 Accepted；
  /// 当项目较少以同步方式重命名或移动时，返回 HTTP 200 OK（全部执行成功）或 HTTP 207 Multi-Status（存在部分或全部执行失败）；
  static Future<SMHResponse<SMHBatchRenameResultEntity>?>
      batchMoveOrRenameFile({
    required String libraryId,
    required String spaceId,
    required List<SMHBatchRenameInputEntity> inputs,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPostRequest<SMHBatchRenameResultEntity>().request(
        [urlPrefix, libraryId, spaceId],
        urlMethod: 'move',
        query: {'user_id': userId},
        body: inputs.map((e) => e.toJson()).toList(),
        finishCallback: finishCallback);
  }
}

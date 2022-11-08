import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_message_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_message_settings_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

/// 消息操作接口
class SMHUesrMessageApis {
  static const urlPrefix = 'v1/message';

  /// 修改用户消息配置
  ///
  /// OrganizationId: 组织 ID；
  /// UserToken: 用户访问令牌，必选参数；
  /// authorityAndSettingMsg 是否开启权限或设置消息
  /// shareMsg 是否开启外链消息
  /// esignMsg 是否开启电子签消息
  /// userManageMsg 是否开启用户管理消息
  /// quotaAndRenewMsg 是否开启扩容或续期消息
  /// securityMsg 是否开启安全扫描消息
  static Future<SMHResponse?> updateMessageSetting({
    required String organizationId,
    required String userToken,
    bool? authorityAndSettingMsg,
    bool? shareMsg,
    bool? esignMsg,
    bool? userManageMsg,
    bool? quotaAndRenewMsg,
    bool? securityMsg,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> body = {};
    body.addKeyWithObject('authorityAndSettingMsg', authorityAndSettingMsg);
    body.addKeyWithObject('shareMsg', shareMsg);
    body.addKeyWithObject('esignMsg', esignMsg);
    body.addKeyWithObject('userManageMsg', userManageMsg);
    body.addKeyWithObject('quotaAndRenewMsg', quotaAndRenewMsg);
    body.addKeyWithObject('securityMsg', securityMsg);

    return SMHPutRequest().request(
      [urlPrefix, organizationId, 'settings'],
      query: {'user_token': userToken},
      body: {'receiveMessageConfig': body},
      finishCallback: finishCallback,
    );
  }

  /// 查询用户接收消息配置
  ///
  /// OrganizationId: 组织 ID；
  /// UserToken: 用户访问令牌，必选参数；
  static Future<SMHResponse<SMHMessageSettingsEntity>?> getMessageSetting({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHMessageSettingsEntity>().request(
      [urlPrefix, organizationId, 'settings'],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 用于删除所有消息
  ///
  /// OrganizationId: 组织 ID；
  /// MessageType: 消息类型，0 所有（默认），1 系统消息，2 告警消息，可选；
  /// UserToken: 用户访问令牌，必选参数；
  static Future<SMHResponse?> deleteAllMessage({
    required String organizationId,
    required String userToken,
    SMHMessageType? messageType = SMHMessageType.all,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, organizationId, 'delete'],
      query: {'user_token': userToken, 'type': messageType!.index},
      finishCallback: finishCallback,
    );
  }

  /// 用于删除指定消息
  ///
  /// OrganizationId: 组织 ID；
  /// MessageId: 消息 ID；
  /// UserToken: 用户访问令牌，必选参数；
  static Future<SMHResponse?> deleteMessage({
    required String organizationId,
    required String userToken,
    required String messageId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHDeleteRequest().request(
      [urlPrefix, organizationId, messageId],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 用于删除部分消息
  ///
  /// OrganizationId: 组织 ID；
  /// MessageId: 消息 ID；
  /// UserToken: 用户访问令牌，必选参数；
  static Future<SMHResponse?> batchDeleteMessage({
    required String organizationId,
    required String userToken,
    required List<String> messageIds,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, organizationId, 'delete'],
      urlMethod: 'part',
      query: {'user_token': userToken},
      body: {'messageIdList': messageIds},
      finishCallback: finishCallback,
    );
  }

  /// 用于标记所有消息已读
  ///
  /// OrganizationId: 组织 ID；
  /// MessageType: 消息类型，0 所有（默认），1 系统消息，2 告警消息，可选；
  /// UserToken: 用户访问令牌，必选参数；
  static Future<SMHResponse?> readAllMessage({
    required String organizationId,
    required String userToken,
    SMHMessageType? messageType = SMHMessageType.all,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPutRequest().request(
      [urlPrefix, organizationId, 'read'],
      urlMethod: 'all',
      query: {'user_token': userToken, 'type': messageType!.index},
      finishCallback: finishCallback,
    );
  }

  /// 用于标记消息已读
  ///
  /// OrganizationId: 组织 ID；
  /// messageIds: 消息 id 集合，必填
  /// UserToken: 用户访问令牌，必选参数；
  static Future<SMHResponse?> readMessage({
    required String organizationId,
    required String userToken,
    required List<String> messageIds,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPutRequest().request(
      [urlPrefix, organizationId, 'read'],
      query: {'user_token': userToken},
      body: messageIds,
      finishCallback: finishCallback,
    );
  }

  /// 获取用户消息列表
  ///
  /// OrganizationId: 组织 ID；
  /// MessageType: 消息类型，0 所有（默认），1 系统消息，2 告警消息；
  /// ReadState: 阅读状态，0 全部（默认），1 未读，2 已读；
  /// Page: 页码；
  /// PageSize: 分页数量；
  /// Marker: 用于顺序列出分页的标识，可选参数，不能与 page 和 page_size 参数同时使用；
  /// Limit: 用于顺序列出分页时本地列出的项目数限制，可选参数，不能与 page 和 page_size 参数同时使用；
  /// UserToken: 用户访问令牌，必选参数；
  static Future<SMHResponse<SMHMessageListEntity>?> getMessageList({
    required String organizationId,
    required String userToken,
    SMHMessageType? messageType = SMHMessageType.all,
    SMHMessageReadState? readState = SMHMessageReadState.all,
    int page = 1,
    int pageSize = 20,
    String? marker,
    int? limit,
    SMHFinishCalBack? finishCallback,
  }) {
    var query = {
      'type': messageType!.index,
      'read_state': readState!.index,
      'user_token': userToken
    };
    if (marker != null && limit != null) {
      query.addKeyWithObject('marker', marker);
      query.addKeyWithObject('limit', limit);
    } else {
      query.addKeyWithObject('page', page);
      query.addKeyWithObject('page_size', pageSize);
    }

    return SMHGetRequest<SMHMessageListEntity>().request(
      [urlPrefix, organizationId],
      query: query,
      finishCallback: finishCallback,
    );
  }
}

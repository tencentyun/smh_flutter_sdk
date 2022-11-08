import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_user_requests.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_can_deregister_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';

class SMHUserDeregisterApis {
  static const String urlPrefix = 'v1/deregister';

  /// 在企业成员注销犹豫期，驳回其它成员提交的注销操作
  ///
  /// 超管可以驳回系统管理员和普通用户的注销
  /// 系统管理员可以驳回普通用户的注销
  /// 成员注销 30 天后，用户数据从系统中删除，不可撤消注销
  /// 仅适用于企业版
  ///
  /// OrganizationId: 组织 ID，必选参数
  /// UserId： 驳回的用户 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse?> cancelMemberDeregister({
    required String organizationId,
    required String userId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest().request(
      [urlPrefix, organizationId, 'cancel', userId],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 检查企业成员是否满足注销条件
  ///
  /// 接口说明
  /// 超级管理员不可注销自身
  /// 当个人空间清空（包括回收站）且所创建的群组都解散时才能注销用户
  /// OrganizationId: 组织 ID，必选参数
  /// UserToken: 用户令牌，必选参数
  static Future<SMHResponse<SMHCanDeregisterEntity>?> checkMemberCanDeregister({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHGetRequest<SMHCanDeregisterEntity>().request(
      [urlPrefix, organizationId, 'check'],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }

  /// 在指定组织中注销账户
  ///
  /// 注销后，不可再登入该组织
  /// 用户仅可注销自身
  /// 超级管理员不可注销自身
  /// 企业成员注销 30 天后/个人版或团队成员注销 15 天后，用户数据从系统中删除
  /// 账号注销后，会向该用户其它设备推送 ws 消息 {"type": "deregister"}
  static Future<SMHResponse<SMHCanDeregisterEntity>?> memberDeregister({
    required String organizationId,
    required String userToken,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHPostRequest<SMHCanDeregisterEntity>().request(
      [urlPrefix, organizationId],
      query: {'user_token': userToken},
      finishCallback: finishCallback,
    );
  }
}

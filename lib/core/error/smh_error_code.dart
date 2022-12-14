class SMHErrorCode {
  /// 错误请求
  static final String BadRequest = "BadRequest";

  /// 媒体库ID或密钥为空
  static final String EmptyLibraryIdOrSecret = "EmptyLibraryIdOrSecret";

  /// 用户ID长度超出限制
  static final String UserIdLengthExceed = "UserIdLengthExceed";

  /// 客户端ID长度超出限制
  static final String ClientIdLengthExceed = "ClientIdLengthExceed";

  /// 媒体库密钥为空
  static final String EmptyLibrarySecret = "EmptyLibrarySecret";

  /// 媒体库ID为空
  static final String EmptyLibraryId = "EmptyLibraryId";

  /// 该媒体库非多租户模式
  static final String NotMultiSpaceLibrary = "NotMultiSpaceLibrary";

  /// 访问令牌为空
  static final String EmptyAccessToken = "EmptyAccessToken";

  /// 文件已被删除或移动至其他位置
  static final String EmptyPath = "EmptyPath";

  /// 目录名长度超出限制，请修改
  static final String DirectoryNameLengthExceed = "DirectoryNameLengthExceed";

  /// 目录名称不合法，请修改
  static final String DirectoryNotAllowed = "DirectoryNotAllowed";

  /// 仅允许存在一级目录，请联系管理员修改
  static final String DirectoryLevelExceed = "DirectoryLevelExceed";

  /// 文件名称为空，请重新设置
  static final String EmptyFileName = "EmptyFileName";

  /// 文件名称长度超过限制，请修改
  static final String FileNameLengthExceed = "FileNameLengthExceed";

  /// 本目录不支持此类型文件
  static final String ExtnameNotAllowed = "ExtnameNotAllowed";

  /// 不支持上传文件至根目录，请联系管理员修改
  static final String UploadToRootDirectoryNotAllowed =
      "UploadToRootDirectoryNotAllowed";

  /// 源目录无效
  static final String InvalidSourceDirectory = "InvalidSourceDirectory";

  /// 目标路径为源文件夹的子文件夹，请重新选择
  static final String SourceDirectoryIsParentOfDestination =
      "SourceDirectoryIsParentOfDestination";

  /// 源文件无效
  static final String InvalidSourceFile = "InvalidSourceFile";

  /// 源路径无效
  static final String InvalidSourcePath = "InvalidSourcePath";

  /// 该文件为无效文件，请检查后重新上传
  static final String InvalidTargetFile = "InvalidTargetFile";

  /// 目标路径无效
  static final String InvalidDestinationPath = "InvalidDestinationPath";

  /// 目标文件类型与源文件不匹配
  static final String FileTypeNotMatched = "FileTypeNotMatched";

  /// 文件分段上传未完成
  static final String MultipartUploadIncomplete = "MultipartUploadIncomplete";

  /// 可用存储额度不足
  static final String QuotaLimitReached = "QuotaLimitReached";

  /// 可用存储额度不足
  static final String LibraryQuotaLimitReached = "LibraryQuotaLimitReached";

  /// 本操作需要更多存储空间，请联系管理员
  static final String QuotaCapacityRequired = "QuotaCapacityRequired";

  /// 存储额度无效
  static final String QuotaCapacityInvalid = "QuotaCapacityInvalid";

  /// 多租户空间需要分配空间额度
  static final String QuotaSpacesRequired = "QuotaSpacesRequired";

  /// 参数无效
  static final String ParamInvalid = "ParamInvalid";

  /// 回收站未开启
  static final String RecycleBinNotEnabled = "RecycleBinNotEnabled";

  /// 指定的冲突解决策略无效或不受支持
  static final String InvalidConflictResolutionStrategy =
      "InvalidConflictResolutionStrategy";

  /// 排序字段无效
  static final String OrderByNotAllowed = "OrderByNotAllowed";

  /// 排序方式无效
  static final String OrderByTypeNotAllowed = "OrderByTypeNotAllowed";

  /// 最新版本不能够被删除
  static final String DirectoryHistoryNotBeDeleted =
      "DirectoryHistoryNotBeDeleted";

  /// 搜索功能未开启
  static final String SearchNotEnabled = "SearchNotEnabled";

  /// 获取文件失败
  static final String BadCrc64 = "BadCrc64";

  /// 暂不支持该文件类型
  static final String DocumentTypeNotSupport = "DocumentTypeNotSupport";

  /// 该模板名称无效
  static final String InvalidTemplateName = "InvalidTemplateName";

  /// 未开启个人空间
  static final String PersonalSpaceNotAllowed = "PersonalSpaceNotAllowed";

  /// 未找到历史版本
  static final String DirectoryHistoryNotFound = "DirectoryHistoryNotFound";

  /// 批量导入用户表格表头信息不完整，请参考导入模板填写
  static final String InvalidBatchAllowlistInfo = "InvalidBatchAllowlistInfo";

  /// 团队空间文件不可移交至其子团队空间
  static final String ChildTeamAsDestinationTeam = "ChildTeamAsDestinationTeam";

  /// 二维码与当前登录企业不匹配，请使用该域名绑定的企业网盘APP扫码
  static final String QrCodeOrganizationNotMatch = "QrCodeOrganizationNotMatch";

  /// 当前域名未关联企业
  static final String NoOrganizationOfSpecifiedDomain =
      "NoOrganizationOfSpecifiedDomain";

  /// 权限角色不存在
  static final String InvalidAuthorityRoleId = "InvalidAuthorityRoleId";

  /// 企微配置测试失败，请检查后重新填写
  static final String InvalidWeworkParams = "InvalidWeworkParams";

  /// 二维码无效或已过期，请刷新后重试
  static final String InvalidWeworkAuthCode = "InvalidWeworkAuthCode";

  /// 企业ID参数无效，请检查后重新填写
  static final String InvalidWeworkCorpid = "InvalidWeworkCorpid";

  /// Secret参数无效，请检查后重新填写
  static final String InvalidWeworkCredential = "InvalidWeworkCredential";

  /// AgentId参数错误，请检查后重新填写
  static final String InvalidWeworkAgentId = "InvalidWeworkAgentId";

  /// 在线编辑文档不能超过 4M
  static final String EditFileSizeExceed = "EditFileSizeExceed";

  /// 用户license数达购买上限，若需新建用户请扩容
  static final String UserLimitReached = "UserLimitReached";

  /// 权限设置失败，不支持对自己授权
  static final String AuthorizeMyselfNotAllowed = "AuthorizeMyselfNotAllowed";

  /// 企微应用回调 URL 配置错误
  static final String InvalidWeworkRedirectUrl = "InvalidWeworkRedirectUrl";

  /// 该任务不可被删除
  static final String TaskNotDeletable = "TaskNotDeletable";

  /// 不支持对企业根目录执行该操作
  static final String RootDirectoryNotAllowed = "RootDirectoryNotAllowed";

  /// 企业剩余可用流量额度不足
  static final String NoEnoughRemainingTrafficQuota =
      "NoEnoughRemainingTrafficQuota";

  /// 同步任务 ID 不存在
  static final String DirectorySyncIdInvalid = "DirectorySyncIdInvalid";

  /// 同步盘已被锁定
  static final String SyncFolderLocked = "SyncFolderLocked";

  /// 文件因存储空间不足被删除
  static final String FileRemovedByQuota = "FileRemovedByQuota";

  /// 处理超时，请稍后再试
  static final String ProcessTimeout = "ProcessTimeout";

  /// 所选用户空间额度不足，请重新选择
  static final String DestUserSpaceQuotaLimited = "DestUserSpaceQuotaLimited";

  /// 下载或预览次数限制只支持单文件分享
  static final String ShareDownloadOrPreviewCountLimitOnlyAllowedSingleFile =
      "ShareDownloadOrPreviewCountLimitOnlyAllowedSingleFile";

  /// 图形验证码无效
  static final String InvalidGraphicCaptcha = "InvalidGraphicCaptcha";

  /// 参数重复
  static final String DuplicatePropertyInParams = "DuplicatePropertyInParams";

  /// 群组管理员不允许退出群组
  static final String GroupOwnerCanNotExit = "GroupOwnerCanNotExit";

  /// 群组名称不合法，请重新填写
  static final String InvalidGroupName = "InvalidGroupName";

  /// 群组用户授权信息错误
  static final String InvalidGroupUserAuthRoleId = "InvalidGroupUserAuthRoleId";

  /// 分块上传
  static final String MultipartUploadPartTooSmall =
      "MultipartUploadPartTooSmall";

  /// 搜索参数无效，请重新输入
  static final String SearchIdInvalid = "SearchIdInvalid";

  /// 请修改文件(夹)名称后，重新提交
  static final String DirectoryNameNotAvailable = "DirectoryNameNotAvailable";

  /// 群主个人空间不存在
  static final String GroupOwnerSpaceNotFound = "GroupOwnerSpaceNotFound";

  /// 当前帐号未加入任何团队，请前往官网购买
  static final String OrganizationNotRegistered = "OrganizationNotRegistered";

  /// 文件内容不合规，不支持进行该操作
  static final String FileContentNotAvailable = "FileContentNotAvailable";

  /// 文件正在审核中，请稍后再试
  static final String FileContentIsLoading = "FileContentIsLoading";

  /// 超级管理员不允许注销，请转交管理员身份后进行操作
  static final String DeregisterNotAllowedForSuperAdmin =
      "DeregisterNotAllowedForSuperAdmin";

  /// 获取微信用户信息失败
  static final String GetWechatUserInfoFailed = "GetWechatUserInfoFailed";

  /// 玉符参数校验失败，请检查后重新填写
  static final String InvalidYufuParams = "InvalidYufuParams";

  /// 当前企业暂未开通企业微信代开发应用功能
  static final String WeworkDelegateAppNotEnabled =
      "WeworkDelegateAppNotEnabled";

  /// 当前企业暂未关联企业微信应用
  static final String WeworkIntegrationNotInstalled =
      "WeworkIntegrationNotInstalled";

  /// 未获取部门名称和员工姓名授权，请前往企业微信管理后台修改
  static final String NoAuthToNameOfWeworkDelegateApp =
      "NoAuthToNameOfWeworkDelegateApp";

  /// 该用户当前未激活账号
  static final String InactiveUserId = "InactiveUserId";

  /// 未激活用户需前往 企业微信工作台-腾讯云企业网盘 绑定手机号
  static final String InatciveUserPhoneNotBind = "InatciveUserPhoneNotBind";

  /// 清除配置后方可重新绑定应用
  static final String DuplicateWeworkIntegration = "DuplicateWeworkIntegration";

  /// 团队名称重复
  static final String DuplicateTeamName = "DuplicateTeamName";

  /// 访问令牌无效/过期/不匹配
  static final String InvalidAccessToken = "InvalidAccessToken";

  /// 访问令牌不匹配
  static final String AccessTokenNotMatchSpace = "AccessTokenNotMatchSpace";

  /// 无权限
  static final String NoPermission = "NoPermission";

  /// 企业已关闭分享功能，请联系管理员开启
  static final String OrganizationNotEnableShare = "OrganizationNotEnableShare";

  /// 服务已到期，续期后方可继续使用
  static final String LibraryServiceTimeExpired = "LibraryServiceTimeExpired";

  /// 服务已到期，续期后方可继续使用
  static final String OrganizationServiceTimeExpired =
      "OrganizationServiceTimeExpired";

  /// 当前企业用户数已达购买上限，请联系管理员处理
  static final String OrganizationUserInactive = "OrganizationUserInactive";

  /// 腾讯会议授权失败
  static final String MeetingOauthFailed = "MeetingOauthFailed";

  /// 创建腾讯会议失败
  static final String CreateMeetingFailed = "CreateMeetingFailed";

  /// 指定组织中未找到该手机号
  static final String PhoneNumberNotInSpecifiedOrganization =
      "PhoneNumberNotInSpecifiedOrganization";

  /// 无法操作其它用户发起的任务
  static final String NoPermissionToOtherUserTask =
      "NoPermissionToOtherUserTask";

  /// 未绑定 CoFile企业网盘帐号，请进行绑定
  static final String UserNotBindPhoneNumber = "UserNotBindPhoneNumber";

  /// 文件预览次数已达上限
  static final String FilePreviewCountLimitReached =
      "FilePreviewCountLimitReached";

  /// 文件下载次数已达上限
  static final String FileDownloadCountLimitReached =
      "FileDownloadCountLimitReached";

  /// 会中分享不允许选择文件夹
  static final String DirectoryNotAllowedForSingleFileShare =
      "DirectoryNotAllowedForSingleFileShare";

  /// 协作群组数量达到上限，升级套餐可解锁更多群组
  static final String ShareGroupLimit = "ShareGroupLimit";

  /// 协作群组成员达到上限，升级套餐可解锁更大群组
  static final String ShareGroupUserCountLimit = "ShareGroupUserCountLimit";

  /// 该用户不在群组中
  static final String UserNotInGroup = "UserNotInGroup";

  /// 企业创建外链数量达到上限，升级套餐解锁更多
  static final String OrganizationShareLinkLimitReached =
      "OrganizationShareLinkLimitReached";

  /// 此套餐暂不支持团队管理员
  static final String OrganizationTeamAdminNotAllowed =
      "OrganizationTeamAdminNotAllowed";

  /// 此套餐暂不支持获取共享群组动态
  static final String GetShareGroupDynamicNotAllowed =
      "GetShareGroupDynamicNotAllowed";

  /// 海外手机号暂不支持
  static final String OverseasPhoneNumberNotAllowed =
      "OverseasPhoneNumberNotAllowed";

  /// 暂不支持海外手机号
  static final String OperationNotAllowedForOverseasPhoneNumberToken =
      "OperationNotAllowedForOverseasPhoneNumberToken";

  /// 此套餐暂不支持分享管理
  static final String ShareManageNotAllowed = "ShareManageNotAllowed";

  /// 此套餐暂不支持水印管理
  static final String WatermarkManageNotAllowed = "WatermarkManageNotAllowed";

  /// 此套餐暂不支持离职转接
  static final String ResignationTransferNotAllowed =
      "ResignationTransferNotAllowed";

  /// 此套餐暂不支持企业微信同步
  static final String WechatIntegrationNotAllowed =
      "WechatIntegrationNotAllowed";

  /// 此套餐暂不支持日志
  static final String LogManageNotAllowed = "LogManageNotAllowed";

  /// 此套餐暂不支持统计数据
  static final String StatsReportNotAllowed = "StatsReportNotAllowed";

  /// 此套餐暂不支持同步盘
  static final String DirectoryLocalSyncNotAllowed =
      "DirectoryLocalSyncNotAllowed";

  /// 此套餐暂不支持历史版本
  static final String DirectoryHistoryNotAllowed = "DirectoryHistoryNotAllowed";

  /// 文件历史版本达到上限，升级套餐解锁更多
  static final String DirectoryHistoryCountLimitReached =
      "DirectoryHistoryCountLimitReached";

  /// 不支持在线编辑文档
  static final String OnlineEditNotAllowed = "OnlineEditNotAllowed";

  /// 已超过可恢复时间，无法恢复
  static final String RecoveryTimeExceeded = "RecoveryTimeExceeded";

  /// 不支持团队空间
  static final String CreateTeamSpaceNotAllowed = "CreateTeamSpaceNotAllowed";

  /// 企业初始化中，请耐心等待
  static final String LibraryInitializing = "LibraryInitializing";

  /// 该手机号码已绑定其他微信帐号
  static final String DuplicateBindPhoneNumber = "DuplicateBindPhoneNumber";

  /// 该微信帐号已绑定其他手机号码
  static final String DuplicateBindWechat = "DuplicateBindWechat";

  /// 该腾讯会议帐号已绑定其他手机号码
  static final String MeetingOauthDuplicateBindPhoneNumber =
      "MeetingOauthDuplicateBindPhoneNumber";

  /// 绑定手机号码失败
  static final String UserBindPhoneNumberFailed = "UserBindPhoneNumberFailed";

  /// 微信授权失败
  static final String WechatOauthFailed = "WechatOauthFailed";

  /// 媒体库未注册
  static final String LibraryNotRegistered = "LibraryNotRegistered";

  /// 未开启玉符单点登录
  static final String YufuSSOLoginNotAllowed = "YufuSSOLoginNotAllowed";

  /// 玉符租户已绑定其他网盘
  static final String DuplicateBindYufuConfig = "DuplicateBindYufuConfig";

  /// 玉符授权认证失败，请联系管理员在后台管理中检查SSO登录-clientID与密钥配置
  static final String YufuOauthFailed = "YufuOauthFailed";

  /// 获取玉符用户信息失败
  static final String GetYufuUserInfoFailed = "GetYufuUserInfoFailed";

  /// 获取 wellknown 信息失败，请检查后重新填写
  static final String GetYufuWellknownFailed = "GetYufuWellknownFailed";

  /// 当前玉符帐号已绑定手机号码，无需再次绑定
  static final String DuplicateBindYufu = "DuplicateBindYufu";

  /// 当前手机号码已绑定其他玉符帐号，请更换手机号进行绑定
  static final String YufuOauthDuplicateBindPhoneNumber =
      "YufuOauthDuplicateBindPhoneNumber";

  /// 媒体库不存在
  static final String LibraryNotFound = "LibraryNotFound";

  /// 租户空间不存在
  static final String SpaceNotFound = "SpaceNotFound";

  /// 媒体库ID或密钥错误
  static final String WrongLibraryIdOrSecret = "WrongLibraryIdOrSecret";

  /// 文件夹不存在
  static final String DirectoryNotFound = "DirectoryNotFound";

  /// 未找到上传文件或不支持访问
  static final String UploadNotFound = "UploadNotFound";

  /// 该文件并非分段上传文件
  static final String NotMultipartUpload = "NotMultipartUpload";

  /// 上传未完成
  static final String UploadIncomplete = "UploadIncomplete";

  /// 文件不存在
  static final String FileNotFound = "FileNotFound";

  /// 路径不存在
  static final String PathNotFound = "PathNotFound";

  /// 该角色不存在？
  static final String RoleNotFound = "RoleNotFound";

  /// 源文件夹不存在或被移动至其他位置
  static final String SourceDirectoryNotFound = "SourceDirectoryNotFound";

  /// 源文件不存在或被移动至其他位置
  static final String SourceFileNotFound = "SourceFileNotFound";

  /// 源路径不存在
  static final String SourcePathNotFound = "SourcePathNotFound";

  /// 存储额度不足
  static final String NoQuota = "NoQuota";

  /// 回收站中未查询到该文件（夹）
  static final String RecycledItemNotFound = "RecycledItemNotFound";

  /// 搜索id无效
  static final String SearchIdNotFound = "SearchIdNotFound";

  /// 未找到对应收藏夹
  static final String FavoriteGroupNotFound = "FavoriteGroupNotFound";

  /// 缓存已清空，获取数据失败
  static final String StoreDataNotFound = "StoreDataNotFound";

  /// 该企业未开启企微登录功能，请联系管理员
  static final String noOrganizationWeworkIntegration =
      "noOrganizationWeworkIntegration";

  /// 文件（夹）已被删除
  static final String ShareDirectoryNotFound = "ShareDirectoryNotFound";

  /// 未在企微中查询到该用户
  static final String WeworkUserIdNotFound = "WeworkUserIdNotFound";

  /// 图形验证码未上传
  static final String GraphicCaptchaNotFound = "GraphicCaptchaNotFound";

  /// 未创建群组邀请码
  static final String GroupInvitationNotCreated = "GroupInvitationNotCreated";

  /// 未创建企业邀请码
  static final String OrgInvitationNotCreated = "OrgInvitationNotCreated";

  /// 未找到订单信息
  static final String NoPurchaseRecord = "NoPurchaseRecord";

  /// 邀请无效
  static final String InvitationNotExist = "InvitationNotExist";

  /// 群组不存在
  static final String GroupNotFound = "GroupNotFound";

  /// 邀请码无效或已过期，请联系分享人重新获取
  static final String InvitationCodeInvalidOrExpired =
      "InvitationCodeInvalidOrExpired";

  /// 该邀请群组已被删除
  static final String InvitationGroupNotFound = "InvitationGroupNotFound";

  /// 该邀请企业已被删除
  static final String InvitationOrganizationNotFound =
      "InvitationOrganizationNotFound";

  /// 无法找到新手引导数据
  static final String NoviceGuidanceNotFound = "NoviceGuidanceNotFound";

  /// 玉符用户 openId 同步失败
  static final String YufuUserIdNotFound = "YufuUserIdNotFound";

  /// 网盘后台未找到玉符配置
  static final String YufuConfigNotFound = "YufuConfigNotFound";

  /// 处理请求时出错
  static final String InternalServerError = "InternalServerError";

  /// 搜索超时
  static final String SearchTimeout = "SearchTimeout";

  /// 企微父级团队同步失败
  static final String WeworkParentTeamSyncFail = "WeworkParentTeamSyncFail";

  /// 企微同步超过频率限制（企微接口的限制，一般不会遇到）
  static final String WeworkFreqLimit = "WeworkFreqLimit";

  /// 获取企微团队成员失败
  static final String GetWeworkTeamMemberFailed = "GetWeworkTeamMemberFailed";

  /// 同步玉符通讯录时，父团队同步失败
  static final String YufuParentTeamSyncFail = "YufuParentTeamSyncFail";

  /// 同步玉符通讯录时，成员获取失败
  static final String GetYufuTeamMemberFailed = "GetYufuTeamMemberFailed";

  /// 只允许移交至父级及以上层级部门
  static final String SameSpaceIdTransfered = "SameSpaceIdTransfered";

  /// 存在同名文件（夹）
  static final String SameNameDirectoryOrFileExists =
      "SameNameDirectoryOrFileExists";

  /// 创建额度失败，请稍后再试或联系客服
  static final String DuplicateQuota = "DuplicateQuota";

  /// 循环符号链接错误
  static final String CircleSymlink = "CircleSymlink";

  /// 目标文件正被编辑
  static final String TargetBeingCoEdited = "TargetBeingCoEdited";

  /// 同一手机号对应用户在该企业已存在
  static final String DuplicateAllowlistOrUser = "DuplicateAllowlistOrUser";

  /// 系统繁忙请稍后重试
  static final String DuplicatePurchaseRecord = "DuplicatePurchaseRecord";

  /// 系统繁忙请稍后重试
  static final String DuplicateInvitationRecord = "DuplicateInvitationRecord";

  /// 自定义角色名称重复
  static final String DuplicateRoleName = "DuplicateRoleName";

  /// 国家代码或手机号码不合法
  static final String InvalidPhoneNumber = "InvalidPhoneNumber";

  /// 国家代码或手机号码不完整
  static final String IncompletePhoneNumber = "IncompletePhoneNumber";

  /// 设备ID长度超过限制
  static final String DeviceIdLengthExceed = "DeviceIdLengthExceed";

  /// 用户ID无效
  static final String InvalidUserId = "InvalidUserId";

  /// 组织ID无效
  static final String InvalidOrganizationId = "InvalidOrganizationId";

  /// 组织名称无效，请重新输入
  static final String InvalidOrganizationName = "InvalidOrganizationName";

  /// 部门名称无效，请重新输入
  static final String InvalidTeamName = "InvalidTeamName";

  /// 用户名称无效，请重新输入
  static final String InvalidUserName = "InvalidUserName";

  /// 用户扩展数据无效
  static final String InvalidUserExtensionData = "InvalidUserExtensionData";

  /// 空间配置数据无效
  static final String InvalidSpaceConfig = "InvalidSpaceConfig";

  /// 未填写名称或电话或部门（必填）
  static final String InvalidBatchAllowlist = "InvalidBatchAllowlist";

  /// 未找到该空间或目录路径
  static final String InvalidSpaceOrDirectoryPath =
      "InvalidSpaceOrDirectoryPath";

  /// 不允许移动父级部门至子部门？
  static final String ChildTeamAsDestTeam = "ChildTeamAsDestTeam";

  /// 用户访问令牌为空
  static final String EmptyUserToken = "EmptyUserToken";

  /// 目标位置存储额度不足
  static final String DestTeamSpaceQuotaLimited = "DestTeamSpaceQuotaLimited";

  /// 任务不可被取消或已完成
  static final String TaskNotCancelable = "TaskNotCancelable";

  /// 文件为空
  static final String EmptyAllowlistData = "EmptyAllowlistData";

  /// 所选文件需位于同一目录下
  static final String ShareDirectoryPathInvalid = "ShareDirectoryPathInvalid";

  /// 验证码无效，请重新输入
  static final String ShareExtractionCodeInvalid = "ShareExtractionCodeInvalid";

  /// 分享过期了
  static final String ShareExpired = "ShareExpired";

  /// 分享被禁用
  static final String ShareLinkIsDisabled = "ShareLinkIsDisabled";

  /// 分配的额度不可小于当前已用额度
  static final String QuotaCapacityLessThanSize = "QuotaCapacityLessThanSize";

  /// 二维码无效或过期
  static final String QrCodeInvalidOrExpired = "QrCodeInvalidOrExpired";

  /// 二维码没有被扫描
  static final String QrCodeNotScanned = "QrCodeNotScanned";

  /// 二维码没有被确认
  static final String QrCodeNotConfirmed = "QrCodeNotConfirmed";

  /// 存储的 Code 数据和 userToken 不匹配
  static final String StoreDataNotMatchUserToken = "StoreDataNotMatchUserToken";

  /// 存储的 Code 数据和 accessToken 不匹配
  static final String StoreDataNotMatchAccessToken =
      "StoreDataNotMatchAccessToken";

  /// 该文件夹不允许被保存到网盘
  static final String NotAllowSaveToNetDisc = "NotAllowSaveToNetDisc";

  /// 文件标签已存在
  static final String SameNameTag = "SameNameTag";

  /// 没有足够的剩余配额。
  static final String NoEnoughRemainingQuota = "NoEnoughRemainingQuota";

  /// 无法转换指定格式的文件。
  static final String ConvertFileFormatNotMatch = "ConvertFileFormatNotMatch";

  /// 时间戳无效。
  static final String TimeStampInvalid = "TimeStampInvalid";

  /// 被授予的权力缺失了。
  static final String GrantAuthorityMissing = "GrantAuthorityMissing";

  /// 不允许删除系统角色
  static final String DeleteSystemRoleNotAllowed = "DeleteSystemRoleNotAllowed";

  /// 不允许授权给组用户
  static final String CanAuthorizeRoleToGroupNotAllowed =
      "CanAuthorizeRoleToGroupNotAllowed";

  /// 删除自定义权限失败。处理步骤
  static final String DeleteCustomAuthorityFailed =
      "DeleteCustomAuthorityFailed";

  /// 不允许删除Space默认角色
  static final String DeleteSpaceDefaultRoleNotAllowed =
      "DeleteSpaceDefaultRoleNotAllowed";

  /// 转换文件任务未完成。
  static final String ConvertFileTaskNotFinished = "ConvertFileTaskNotFinished";

  /// wework中的IP列表设置不正确。
  static final String InvalidWeworkIpList = "InvalidWeworkIpList";

  /// 时间无效。
  static final String InvalidTime = "InvalidTime";

  /// 内部组不允许外部用户。
  static final String InternalGroupDoesNotAllowExternalUser =
      "InternalGroupDoesNotAllowExternalUser";

  /// 用户未被注销。
  static final String UserIsNotUnderDeregister = "UserIsNotUnderDeregister";

  /// 用户只能有一个个人组织。
  static final String DuplicatePersonalOrgApplication =
      "DuplicatePersonalOrgApplication";

  /// 请重新登录获得个人组织。
  static final String ReLoginNeededToGetPersonalOrg =
      "ReLoginNeededToGetPersonalOrg";

  /// 域名未获授权
  static final String DomainNotLicensed = "DomainNotLicensed";

  /// 上传SSL失败
  static final String UploadSslFailed = "UploadSslFailed";

  /// 自定义域与证书内容不匹配。
  static final String DomainCertKeyNotMatch = "DomainCertKeyNotMatch";

  /// SSL证书密钥无效
  static final String InvalidSslCertKey = "InvalidSslCertKey";

  /// SSL证书密钥过期
  static final String DomainSslCertKeyExpired = "DomainSslCertKeyExpired";

  /// 组织用户处于注销状态。
  static final String OrganizationUserUnderDeregister =
      "OrganizationUserUnderDeregister";

  /// 目标组织用户处于注销状态。
  static final String TargetOrganizationUserUnderDeregister =
      "TargetOrganizationUserUnderDeregister";

  /// 手机号码与当前手机号码相同。
  static final String UserPhoneNumberUnchanged = "UserPhoneNumberUnchanged";

  /// eSign文档内容不匹配。
  static final String ESignDocContentNotMatch = "ESignDocContentNotMatch";

  /// 电子签二维码已过期
  static final String ESignKeyExpired = "ESignKeyExpired";

  /// 电子签授权已过期
  static final String ESignCodeExpired = "ESignCodeExpired";

  /// 设计过程完成。
  static final String ESignProcedureFinished = "ESignProcedureFinished";

  /// 搜索条件太复杂。
  static final String SearchTooComplex = "SearchTooComplex";

  /// 当前企业未找到对应角色
  static final String NoOrganizationRoleFound = "NoOrganizationRoleFound";

  /// 该手机号已领取此渠道体验账号
  static final String DuplicateChannelOrgApplication =
      "DuplicateChannelOrgApplication";

  /// 创建渠道体验版本失败
  static final String CreateChannelOrgFailed = "CreateChannelOrgFailed";

  /// 刷新 token 已过期
  static final String RefreshTokenExpired = "RefreshTokenExpired";

  /// 第三方应用配置的回调地址和当前传入的不匹配
  static final String RedirectUriNotMatchApplication =
      "RedirectUriNotMatchApplication";

  /// 申请的接口权限和第三方应用配置的不匹配
  static final String ScopeNotMatchApplication = "ScopeNotMatchApplication";

  /// 第三方应用授权，返回类型参数不合法
  static final String ResponseTypeNotAllowed = "ResponseTypeNotAllowed";

  /// 应用授权码已过期
  static final String AuthorizationCodeExpired = "AuthorizationCodeExpired";

  /// 应用授权码已被使用
  static final String AuthorizationCodeHasBeenUsed =
      "AuthorizationCodeHasBeenUsed";

  /// 您未加入任何企业，请联系管理员添加
  static final String PhoneNumberNotInAllowlist = "PhoneNumberNotInAllowlist";

  /// 验证码获取过于频繁，请稍后再试
  static final String SmsFrequencyLimit = "SmsFrequencyLimit";

  /// 用户未加入该企业或未登录
  static final String UserNotInOrganization = "UserNotInOrganization";

  /// 用户未加入该企业
  static final String UserNotInAllowlist = "UserNotInAllowlist";

  /// 验证码无效或已过期，请重新获取
  static final String SmsCodeInvalidOrExpired = "SmsCodeInvalidOrExpired";

  /// 验证码错误，请重新输入
  static final String WrongSmsCode = "WrongSmsCode";

  /// 验证码已过期，请重新获取
  static final String SmsCodeVerificationExceeded =
      "SmsCodeVerificationExceeded";

  /// 用户访问令牌无效或过期
  static final String InvalidUserToken = "InvalidUserToken";

  /// 您已被该组织禁用，请联系组织管理员
  static final String UserDisabled = "UserDisabled";

  /// 您未加入任何组织或被组织删除，请联系组织管理员
  static final String UserNotAllowed = "UserNotAllowed";

  /// 不支持上传该类型文件
  static final String FileTypeNotAllowed = "FileTypeNotAllowed";

  /// 文件路径无效
  static final String InvalidFilePath = "InvalidFilePath";

  /// 普通用户无根目录操作权限
  static final String RootTeamOperationNotAllowed =
      "RootTeamOperationNotAllowed";

  /// $1操作无权限
  static final String NoSpecifiedPermission = "NoSpecifiedPermission";

  /// 仅超级管理员可进行该操作
  static final String NoSuperAdminPermission = "NoSuperAdminPermission";

  /// 无该部门操作权限
  static final String NoTeamPermission = "NoTeamPermission";

  /// 验证码失效，请刷新页面重新操作
  static final String InvalidShareAccessToken = "InvalidShareAccessToken";

  /// 下载令牌过期。
  static final String XinanDownloadTokenExpired = "XinanDownloadTokenExpired";

  /// 该文件为病毒文件，不支持使用
  static final String VirusFileNotAvailable = "VirusFileNotAvailable";

  /// 该文件为病毒文件，不支持授权操作
  static final String VirusFileNotAvailableAuthorize =
      "VirusFileNotAvailableAuthorize";

  /// 该文件为病毒文件，不支持下载操作
  static final String VirusFileNotAvailableDownload =
      "VirusFileNotAvailableDownload";

  /// 该文件为病毒文件，不支持分享操作
  static final String VirusFileNotAvailableShare = "VirusFileNotAvailableShare";

  /// 批量下载包含加载文件。
  static final String BatchDownloadFileContentIsLoading =
      "BatchDownloadFileContentIsLoading";

  /// 批量下载包含不可用的文件。
  static final String BatchDownloadFileContentNotAvailable =
      "BatchDownloadFileContentNotAvailable";

  /// 图书馆是循环利用的。
  static final String LibraryRecycled = "LibraryRecycled";

  /// 访问COS的授权已被撤销，请将授权模式切换到服务链接角色模式。
  static final String AuthorizationRevoked = "AuthorizationRevoked";

  /// 如果有个人文件和组，则不允许注销。
  static final String DeregisterNotAllowed = "DeregisterNotAllowed";

  /// 我们工作绑定电话认证码未找到，请重新登录。
  static final String WeworkBindPhoneOauthNotFound =
      "WeworkBindPhoneOauthNotFound";

  /// 绑定电话失败，请重新登录。
  static final String WeworkBindPhoneByOauthFailed =
      "WeworkBindPhoneByOauthFailed";

  /// 重复创建角色。
  static final String DuplicateRoleCreation = "DuplicateRoleCreation";

  /// 共享组织服务已过期。
  static final String SharingOrganizationServiceTimeExpired =
      "SharingOrganizationServiceTimeExpired";

  /// 邀请组织服务已过期。
  static final String InvitingOrganizationServiceTimeExpired =
      "InvitingOrganizationServiceTimeExpired";

  /// 该角色不允许授权给其他人
  static final String RoleCannotBeAuthorized = "RoleCannotBeAuthorized";

  /// 该用户不允许被授权
  static final String UserCannotBeAuthorized = "UserCannotBeAuthorized";

  /// 未找到该组织
  static final String OrganizationNotFound = "OrganizationNotFound";

  /// 未查询到该任务
  static final String TaskNotFound = "TaskNotFound";

  /// 导入白名单文件加载失败
  static final String CanNotLoadAllowlistFile = "CanNotLoadAllowlistFile";

  /// 文件已被删除或移动
  static final String ShareInfoNotFound = "ShareInfoNotFound";

  /// 无个人存储空间
  static final String NoPersonalSpace = "NoPersonalSpace";

  /// 未找到该空间
  static final String NoSpace = "NoSpace";

  /// 未查询到该用户
  static final String NoOrganizationUser = "NoOrganizationUser";

  /// 未查询到该部门
  static final String OrganizationTeamNotFound = "OrganizationTeamNotFound";

  /// 未查询到目标部门？
  static final String DestOrganizationTeamNotFound =
      "DestOrganizationTeamNotFound";

  /// 未找到指定用户
  static final String UserNotFound = "UserNotFound";

  /// 该同步任务不存在或已被取消
  static final String DirectorySyncNotFound = "DirectorySyncNotFound";

  /// 文件标签未找到
  static final String TagNotFound = "TagNotFound";

  /// 此api已弃用。
  static final String ApiDeprecated = "ApiDeprecated";

  /// 未找到批量下载或已过期。
  static final String BatchDownloadNotFound = "BatchDownloadNotFound";

  /// 在指定的组织中找不到自定义域。
  static final String CustomDomainNotFound = "CustomDomainNotFound";

  /// 未找到对应的电子签二维码
  static final String ESignKeyNotFound = "ESignKeyNotFound";

  /// 未找到对应的电子签授权
  static final String ESignCodeNotFound = "ESignCodeNotFound";

  /// 电子签客户端有误
  static final String EsignClientError = "EsignClientError";

  /// 电子签刷新令牌有误
  static final String ESignRefreshTokenNotFound = "ESignRefreshTokenNotFound";

  /// 电子签刷新令牌已过期
  static final String ESignRefreshTokenExpired = "ESignRefreshTokenExpired";

  /// 未找到第三方应用授权信息
  static final String ApplicationAuthorizationNotFound =
      "ApplicationAuthorizationNotFound";

  /// 未找到第三方应用
  static final String ApplicationNotFound = "ApplicationNotFound";

  /// 存在重复数据
  static final String DuplicateRecord = "DuplicateRecord";

  /// 团队名称已存在，请重新输入
  static final String DuplicateTeamRecord = "DuplicateTeamRecord";

  /// 手机号码已被其他用户使用
  static final String DuplicateUserPhoneNumber = "DuplicateUserPhoneNumber";

  /// 文件（夹）已加入收藏列表
  static final String DuplicateFavoriteRecord = "DuplicateFavoriteRecord";

  /// 该文件夹已被设置为同步盘，请重新选择
  static final String DuplicateDirectorySync = "DuplicateDirectorySync";

  /// 所选文件夹的某子文件夹已被设为同步盘，请重新选择
  static final String ChildDirectorySyncExist = "ChildDirectorySyncExist";

  /// 所选文件夹的某父级文件夹已被设为同步盘，请重新选择
  static final String ParentDirectorySyncExist = "ParentDirectorySyncExist";

  /// 组织只能有一个自定义域。
  static final String DuplicateCustomDomain = "DuplicateCustomDomain";

  /// 复制域。
  static final String DuplicateDomain = "DuplicateDomain";

  /// 下载包时文件太多。
  static final String TooManyFiles = "TooManyFiles";

  /// 请稍后重试
  static final String DomainCheckFrequencyLimit = "DomainCheckFrequencyLimit";

  /// 该文件存在敏感字段
  static final String SensitiveContentRecognized = "SensitiveContentRecognized";

  /// 该组织logo存在敏感字段
  static final String SensitiveOrgLogoRecognized = "SensitiveOrgLogoRecognized";

  /// 该用户logo存在敏感字段
  static final String SensitiveUserLogoRecognized =
      "SensitiveUserLogoRecognized";

  /// 名字存在敏感字段
  static final String SensitiveNameRecognized = "SensitiveNameRecognized";

  /// 共享内容正在加载
  static final String ShareContentIsLoading = "ShareContentIsLoading";

  /// 共享内容不可用
  static final String ShareContentNotAvailable = "ShareContentNotAvailable";

  /// 任务已被取消
  static final String TaskCancelled = "TaskCancelled";

  /// 任务已被取消
  static final String TaskIsCancelled = "TaskIsCancelled";

  /// 登出请求出错
  static final String SignOutFail = "SignOutFail";

  /// 发送验证码出错
  static final String SendSmsFailed = "SendSmsFailed";

  /// SMH请求出错
  static final String SmartMediaHostingError = "SmartMediaHostingError";

  /// 未分配默认角色
  static final String NoDefaultRoleFound = "NoDefaultRoleFound";

  /// 分配存储空间失败
  static final String SpaceAllocationFail = "SpaceAllocationFail";

  /// 检查域cip信息时发生错误。
  static final String CipCheckServiceError = "CipCheckServiceError";

  /// 处理wework请求时发生错误。
  static final String WeworkInternalServerError = "WeworkInternalServerError";

  /// 初始化失败或已经初始化。
  static final String InitRoleListFailed = "InitRoleListFailed";

  /// 转换文件任务失败。
  static final String ConvertFileTaskFailed = "ConvertFileTaskFailed";

  static Map<String, dynamic> SMHErrorZHMessageMap = {
    "BadRequest": "错误请求",
    "EmptyLibraryIdOrSecret": "媒体库ID或密钥为空",
    "UserIdLengthExceed": "用户ID长度超出限制",
    "ClientIdLengthExceed": "客户端ID长度超出限制",
    "EmptyLibrarySecret": "媒体库密钥为空",
    "EmptyLibraryId": "媒体库ID为空",
    "NotMultiSpaceLibrary": "该媒体库非多租户模式",
    "EmptyAccessToken": "访问令牌为空",
    "EmptyPath": "文件已被删除或移动至其他位置",
    "DirectoryNameLengthExceed": "目录名长度超出限制，请修改",
    "DirectoryNotAllowed": "目录名称不合法，请修改",
    "DirectoryLevelExceed": "仅允许存在一级目录，请联系管理员修改",
    "EmptyFileName": "文件名称为空，请重新设置",
    "FileNameLengthExceed": "文件名称长度超过限制，请修改",
    "ExtnameNotAllowed": "本目录不支持此类型文件",
    "UploadToRootDirectoryNotAllowed": "不支持上传文件至根目录，请联系管理员修改",
    "InvalidSourceDirectory": "源目录无效",
    "SourceDirectoryIsParentOfDestination": "目标路径为源文件夹的子文件夹，请重新选择",
    "InvalidSourceFile": "源文件无效",
    "InvalidSourcePath": "源路径无效",
    "InvalidTargetFile": "该文件为无效文件，请检查后重新上传",
    "InvalidDestinationPath": "目标路径无效",
    "FileTypeNotMatched": "目标文件类型与源文件不匹配",
    "MultipartUploadIncomplete": "文件分段上传未完成",
    "QuotaLimitReached": "可用存储额度不足",
    "LibraryQuotaLimitReached": "可用存储额度不足",
    "QuotaCapacityRequired": "本操作需要更多存储空间，请联系管理员",
    "QuotaCapacityInvalid": "存储额度无效",
    "QuotaSpacesRequired": "多租户空间需要分配空间额度",
    "ParamInvalid": "参数无效",
    "RecycleBinNotEnabled": "回收站未开启",
    "InvalidConflictResolutionStrategy": "指定的冲突解决策略无效或不受支持",
    "OrderByNotAllowed": "排序字段无效",
    "OrderByTypeNotAllowed": "排序方式无效",
    "DirectoryHistoryNotBeDeleted": "最新版本不能够被删除",
    "SearchNotEnabled": "搜索功能未开启",
    "BadCrc64": "获取文件失败",
    "DocumentTypeNotSupport": "暂不支持该文件类型",
    "InvalidTemplateName": "该模板名称无效",
    "PersonalSpaceNotAllowed": "未开启个人空间",
    "DirectoryHistoryNotFound": "未找到历史版本",
    "InvalidBatchAllowlistInfo": "批量导入用户表格表头信息不完整，请参考导入模板填写",
    "ChildTeamAsDestinationTeam": "团队空间文件不可移交至其子团队空间",
    "QrCodeOrganizationNotMatch": "二维码与当前登录企业不匹配，请使用该域名绑定的企业网盘APP扫码",
    "NoOrganizationOfSpecifiedDomain": "当前域名未关联企业",
    "InvalidAuthorityRoleId": "权限角色不存在",
    "InvalidWeworkParams": "企微配置测试失败，请检查后重新填写",
    "InvalidWeworkAuthCode": "二维码无效或已过期，请刷新后重试",
    "InvalidWeworkCorpid": "企业ID参数无效，请检查后重新填写",
    "InvalidWeworkCredential": "Secret参数无效，请检查后重新填写",
    "InvalidWeworkAgentId": "AgentId参数错误，请检查后重新填写",
    "EditFileSizeExceed": "在线编辑文档不能超过 4M",
    "UserLimitReached": "用户license数达购买上限，若需新建用户请扩容",
    "AuthorizeMyselfNotAllowed": "权限设置失败，不支持对自己授权",
    "InvalidWeworkRedirectUrl": "企微应用回调 URL 配置错误",
    "TaskNotDeletable": "该任务不可被删除",
    "RootDirectoryNotAllowed": "不支持对企业根目录执行该操作",
    "NoEnoughRemainingTrafficQuota": "企业剩余可用流量额度不足",
    "DirectorySyncIdInvalid": "同步任务 ID 不存在",
    "SyncFolderLocked": "同步盘已被锁定",
    "FileRemovedByQuota": "文件因存储空间不足被删除",
    "ProcessTimeout": "处理超时，请稍后再试",
    "DestUserSpaceQuotaLimited": "所选用户空间额度不足，请重新选择",
    "ShareDownloadOrPreviewCountLimitOnlyAllowedSingleFile":
        "下载或预览次数限制只支持单文件分享",
    "InvalidGraphicCaptcha": "图形验证码无效",
    "DuplicatePropertyInParams": "参数重复",
    "GroupOwnerCanNotExit": "群组管理员不允许退出群组",
    "InvalidGroupName": "群组名称不合法，请重新填写",
    "InvalidGroupUserAuthRoleId": "群组用户授权信息错误",
    "MultipartUploadPartTooSmall": "分块上传",
    "SearchIdInvalid": "搜索参数无效，请重新输入",
    "DirectoryNameNotAvailable": "请修改文件(夹)名称后，重新提交",
    "GroupOwnerSpaceNotFound": "群主个人空间不存在",
    "OrganizationNotRegistered": "当前帐号未加入任何团队，请前往官网购买",
    "FileContentNotAvailable": "文件内容不合规，不支持进行该操作",
    "FileContentIsLoading": "文件正在审核中，请稍后再试",
    "DeregisterNotAllowedForSuperAdmin": "超级管理员不允许注销，请转交管理员身份后进行操作",
    "GetWechatUserInfoFailed": "获取微信用户信息失败",
    "InvalidYufuParams": "玉符参数校验失败，请检查后重新填写",
    "WeworkDelegateAppNotEnabled": "当前企业暂未开通企业微信代开发应用功能",
    "WeworkIntegrationNotInstalled": "当前企业暂未关联企业微信应用",
    "NoAuthToNameOfWeworkDelegateApp": "未获取部门名称和员工姓名授权，请前往企业微信管理后台修改",
    "InactiveUserId": "该用户当前未激活账号",
    "InatciveUserPhoneNotBind": "未激活用户需前往 企业微信工作台-腾讯云企业网盘 绑定手机号",
    "DuplicateWeworkIntegration": "清除配置后方可重新绑定应用",
    "DuplicateTeamName": "团队名称重复",
    "InvalidAccessToken": "访问令牌无效/过期/不匹配",
    "AccessTokenNotMatchSpace": "访问令牌不匹配",
    "NoPermission": "无权限",
    "OrganizationNotEnableShare": "企业已关闭分享功能，请联系管理员开启",
    "LibraryServiceTimeExpired": "服务已到期，续期后方可继续使用",
    "OrganizationServiceTimeExpired": "服务已到期，续期后方可继续使用",
    "OrganizationUserInactive": "当前企业用户数已达购买上限，请联系管理员处理",
    "MeetingOauthFailed": "腾讯会议授权失败",
    "CreateMeetingFailed": "创建腾讯会议失败",
    "PhoneNumberNotInSpecifiedOrganization": "指定组织中未找到该手机号",
    "NoPermissionToOtherUserTask": "无法操作其它用户发起的任务",
    "UserNotBindPhoneNumber": "未绑定 CoFile企业网盘帐号，请进行绑定",
    "FilePreviewCountLimitReached": "文件预览次数已达上限",
    "FileDownloadCountLimitReached": "文件下载次数已达上限",
    "DirectoryNotAllowedForSingleFileShare": "会中分享不允许选择文件夹",
    "ShareGroupLimit": "协作群组数量达到上限，升级套餐可解锁更多群组",
    "ShareGroupUserCountLimit": "协作群组成员达到上限，升级套餐可解锁更大群组",
    "UserNotInGroup": "该用户不在群组中",
    "OrganizationShareLinkLimitReached": "企业创建外链数量达到上限，升级套餐解锁更多",
    "OrganizationTeamAdminNotAllowed": "此套餐暂不支持团队管理员",
    "GetShareGroupDynamicNotAllowed": "此套餐暂不支持获取共享群组动态",
    "OverseasPhoneNumberNotAllowed": "海外手机号暂不支持",
    "OperationNotAllowedForOverseasPhoneNumberToken": "暂不支持海外手机号",
    "ShareManageNotAllowed": "此套餐暂不支持分享管理",
    "WatermarkManageNotAllowed": "此套餐暂不支持水印管理",
    "ResignationTransferNotAllowed": "此套餐暂不支持离职转接",
    "WechatIntegrationNotAllowed": "此套餐暂不支持企业微信同步",
    "LogManageNotAllowed": "此套餐暂不支持日志",
    "StatsReportNotAllowed": "此套餐暂不支持统计数据",
    "DirectoryLocalSyncNotAllowed": "此套餐暂不支持同步盘",
    "DirectoryHistoryNotAllowed": "此套餐暂不支持历史版本",
    "DirectoryHistoryCountLimitReached": "文件历史版本达到上限，升级套餐解锁更多",
    "OnlineEditNotAllowed": "不支持在线编辑文档",
    "RecoveryTimeExceeded": "已超过可恢复时间，无法恢复",
    "CreateTeamSpaceNotAllowed": "不支持团队空间",
    "LibraryInitializing": "企业初始化中，请耐心等待",
    "DuplicateBindPhoneNumber": "该手机号码已绑定其他微信帐号",
    "DuplicateBindWechat": "该微信帐号已绑定其他手机号码",
    "MeetingOauthDuplicateBindPhoneNumber": "该腾讯会议帐号已绑定其他手机号码",
    "UserBindPhoneNumberFailed": "绑定手机号码失败",
    "WechatOauthFailed": "微信授权失败",
    "LibraryNotRegistered": "媒体库未注册",
    "YufuSSOLoginNotAllowed": "未开启玉符单点登录",
    "DuplicateBindYufuConfig": "玉符租户已绑定其他网盘",
    "YufuOauthFailed": "玉符授权认证失败，请联系管理员在后台管理中检查SSO登录-clientID与密钥配置",
    "GetYufuUserInfoFailed": "获取玉符用户信息失败",
    "GetYufuWellknownFailed": "获取 wellknown 信息失败，请检查后重新填写",
    "DuplicateBindYufu": "当前玉符帐号已绑定手机号码，无需再次绑定",
    "YufuOauthDuplicateBindPhoneNumber": "当前手机号码已绑定其他玉符帐号，请更换手机号进行绑定",
    "LibraryNotFound": "媒体库不存在",
    "SpaceNotFound": "租户空间不存在",
    "WrongLibraryIdOrSecret": "媒体库ID或密钥错误",
    "DirectoryNotFound": "文件夹不存在",
    "UploadNotFound": "未找到上传文件或不支持访问",
    "NotMultipartUpload": "该文件并非分段上传文件",
    "UploadIncomplete": "上传未完成",
    "FileNotFound": "文件不存在",
    "PathNotFound": "路径不存在",
    "RoleNotFound": "该角色不存在？",
    "SourceDirectoryNotFound": "源文件夹不存在或被移动至其他位置",
    "SourceFileNotFound": "源文件不存在或被移动至其他位置",
    "SourcePathNotFound": "源路径不存在",
    "NoQuota": "存储额度不足",
    "RecycledItemNotFound": "回收站中未查询到该文件（夹）",
    "SearchIdNotFound": "搜索id无效",
    "FavoriteGroupNotFound": "未找到对应收藏夹",
    "StoreDataNotFound": "缓存已清空，获取数据失败",
    "noOrganizationWeworkIntegration": "该企业未开启企微登录功能，请联系管理员",
    "ShareDirectoryNotFound": "文件（夹）已被删除",
    "WeworkUserIdNotFound": "未在企微中查询到该用户",
    "GraphicCaptchaNotFound": "图形验证码未上传",
    "GroupInvitationNotCreated": "未创建群组邀请码",
    "OrgInvitationNotCreated": "未创建企业邀请码",
    "NoPurchaseRecord": "未找到订单信息",
    "InvitationNotExist": "邀请无效",
    "GroupNotFound": "群组不存在",
    "InvitationCodeInvalidOrExpired": "邀请码无效或已过期，请联系分享人重新获取",
    "InvitationGroupNotFound": "该邀请群组已被删除",
    "InvitationOrganizationNotFound": "该邀请企业已被删除",
    "NoviceGuidanceNotFound": "无法找到新手引导数据",
    "YufuUserIdNotFound": "玉符用户 openId 同步失败",
    "YufuConfigNotFound": "网盘后台未找到玉符配置",
    "InternalServerError": "处理请求时出错",
    "SearchTimeout": "搜索超时",
    "WeworkParentTeamSyncFail": "企微父级团队同步失败",
    "WeworkFreqLimit": "企微同步超过频率限制（企微接口的限制，一般不会遇到）",
    "GetWeworkTeamMemberFailed": "获取企微团队成员失败",
    "YufuParentTeamSyncFail": "同步玉符通讯录时，父团队同步失败",
    "GetYufuTeamMemberFailed": "同步玉符通讯录时，成员获取失败",
    "SameSpaceIdTransfered": "只允许移交至父级及以上层级部门",
    "SameNameDirectoryOrFileExists": "存在同名文件（夹）",
    "DuplicateQuota": "创建额度失败，请稍后再试或联系客服",
    "CircleSymlink": "循环符号链接错误",
    "TargetBeingCoEdited": "目标文件正被编辑",
    "DuplicateAllowlistOrUser": "同一手机号对应用户在该企业已存在",
    "DuplicatePurchaseRecord": "系统繁忙请稍后重试",
    "DuplicateInvitationRecord": "系统繁忙请稍后重试",
    "DuplicateRoleName": "自定义角色名称重复",
    "InvalidPhoneNumber": "国家代码或手机号码不合法",
    "IncompletePhoneNumber": "国家代码或手机号码不完整",
    "DeviceIdLengthExceed": "设备ID长度超过限制",
    "InvalidUserId": "用户ID无效",
    "InvalidOrganizationId": "组织ID无效",
    "InvalidOrganizationName": "组织名称无效，请重新输入",
    "InvalidTeamName": "部门名称无效，请重新输入",
    "InvalidUserName": "用户名称无效，请重新输入",
    "InvalidUserExtensionData": "用户扩展数据无效",
    "InvalidSpaceConfig": "空间配置数据无效",
    "InvalidBatchAllowlist": "未填写名称或电话或部门（必填）",
    "InvalidSpaceOrDirectoryPath": "未找到该空间或目录路径",
    "ChildTeamAsDestTeam": "不允许移动父级部门至子部门？",
    "EmptyUserToken": "用户访问令牌为空",
    "DestTeamSpaceQuotaLimited": "目标位置存储额度不足",
    "TaskNotCancelable": "任务不可被取消或已完成",
    "EmptyAllowlistData": "文件为空",
    "ShareDirectoryPathInvalid": "所选文件需位于同一目录下",
    "ShareExtractionCodeInvalid": "验证码无效，请重新输入",
    "ShareExpired": "分享过期了",
    "ShareLinkIsDisabled": "分享被禁用",
    "QuotaCapacityLessThanSize": "分配的额度不可小于当前已用额度",
    "QrCodeInvalidOrExpired": "二维码无效或过期",
    "QrCodeNotScanned": "二维码没有被扫描",
    "QrCodeNotConfirmed": "二维码没有被确认",
    "StoreDataNotMatchUserToken": "存储的 Code 数据和 userToken 不匹配",
    "StoreDataNotMatchAccessToken": "存储的 Code 数据和 accessToken 不匹配",
    "NotAllowSaveToNetDisc": "该文件夹不允许被保存到网盘",
    "SameNameTag": "文件标签已存在",
    "NoEnoughRemainingQuota": "没有足够的剩余配额。",
    "ConvertFileFormatNotMatch": "无法转换指定格式的文件。",
    "TimeStampInvalid": "时间戳无效。",
    "GrantAuthorityMissing": "被授予的权力缺失了。",
    "DeleteSystemRoleNotAllowed": "不允许删除系统角色",
    "CanAuthorizeRoleToGroupNotAllowed": "不允许授权给组用户",
    "DeleteCustomAuthorityFailed": "删除自定义权限失败。处理步骤",
    "DeleteSpaceDefaultRoleNotAllowed": "不允许删除Space默认角色",
    "ConvertFileTaskNotFinished": "转换文件任务未完成。",
    "InvalidWeworkIpList": "wework中的IP列表设置不正确。",
    "InvalidTime": "时间无效。",
    "InternalGroupDoesNotAllowExternalUser": "内部组不允许外部用户。",
    "UserIsNotUnderDeregister": "用户未被注销。",
    "DuplicatePersonalOrgApplication": "用户只能有一个个人组织。",
    "ReLoginNeededToGetPersonalOrg": "请重新登录获得个人组织。",
    "DomainNotLicensed": "域名未获授权",
    "UploadSslFailed": "上传SSL失败",
    "DomainCertKeyNotMatch": "自定义域与证书内容不匹配。",
    "InvalidSslCertKey": "SSL证书密钥无效",
    "DomainSslCertKeyExpired": "SSL证书密钥过期",
    "OrganizationUserUnderDeregister": "组织用户处于注销状态。",
    "TargetOrganizationUserUnderDeregister": "目标组织用户处于注销状态。",
    "UserPhoneNumberUnchanged": "手机号码与当前手机号码相同。",
    "ESignDocContentNotMatch": "eSign文档内容不匹配。",
    "ESignKeyExpired": "电子签二维码已过期",
    "ESignCodeExpired": "电子签授权已过期",
    "ESignProcedureFinished": "设计过程完成。",
    "SearchTooComplex": "搜索条件太复杂。",
    "NoOrganizationRoleFound": "当前企业未找到对应角色",
    "DuplicateChannelOrgApplication": "该手机号已领取此渠道体验账号",
    "CreateChannelOrgFailed": "创建渠道体验版本失败",
    "RefreshTokenExpired": "刷新 token 已过期",
    "RedirectUriNotMatchApplication": "第三方应用配置的回调地址和当前传入的不匹配",
    "ScopeNotMatchApplication": "申请的接口权限和第三方应用配置的不匹配",
    "ResponseTypeNotAllowed": "第三方应用授权，返回类型参数不合法",
    "AuthorizationCodeExpired": "应用授权码已过期",
    "AuthorizationCodeHasBeenUsed": "应用授权码已被使用",
    "PhoneNumberNotInAllowlist": "您未加入任何企业，请联系管理员添加",
    "SmsFrequencyLimit": "验证码获取过于频繁，请稍后再试",
    "UserNotInOrganization": "用户未加入该企业或未登录",
    "UserNotInAllowlist": "用户未加入该企业",
    "SmsCodeInvalidOrExpired": "验证码无效或已过期，请重新获取",
    "WrongSmsCode": "验证码错误，请重新输入",
    "SmsCodeVerificationExceeded": "验证码已过期，请重新获取",
    "InvalidUserToken": "用户访问令牌无效或过期",
    "UserDisabled": "您已被该组织禁用，请联系组织管理员",
    "UserNotAllowed": "您未加入任何组织或被组织删除，请联系组织管理员",
    "FileTypeNotAllowed": "不支持上传该类型文件",
    "InvalidFilePath": "文件路径无效",
    "RootTeamOperationNotAllowed": "普通用户无根目录操作权限",
    "NoSpecifiedPermission": "操作无权限",
    "NoSuperAdminPermission": "仅超级管理员可进行该操作",
    "NoTeamPermission": "无该部门操作权限",
    "InvalidShareAccessToken": "验证码失效，请刷新页面重新操作",
    "XinanDownloadTokenExpired": "下载令牌过期。",
    "VirusFileNotAvailable": "该文件为病毒文件，不支持使用",
    "VirusFileNotAvailableAuthorize": "该文件为病毒文件，不支持授权操作",
    "VirusFileNotAvailableDownload": "该文件为病毒文件，不支持下载操作",
    "VirusFileNotAvailableShare": "该文件为病毒文件，不支持分享操作",
    "BatchDownloadFileContentIsLoading": "批量下载包含加载文件。",
    "BatchDownloadFileContentNotAvailable": "批量下载包含不可用的文件。",
    "LibraryRecycled": "图书馆是循环利用的。",
    "AuthorizationRevoked": "访问COS的授权已被撤销，请将授权模式切换到服务链接角色模式。",
    "DeregisterNotAllowed": "如果有个人文件和组，则不允许注销。",
    "WeworkBindPhoneOauthNotFound": "我们工作绑定电话认证码未找到，请重新登录。",
    "WeworkBindPhoneByOauthFailed": "绑定电话失败，请重新登录。",
    "DuplicateRoleCreation": "重复创建角色。",
    "SharingOrganizationServiceTimeExpired": "共享组织服务已过期。",
    "InvitingOrganizationServiceTimeExpired": "邀请组织服务已过期。",
    "RoleCannotBeAuthorized": "该角色不允许授权给其他人",
    "UserCannotBeAuthorized": "该用户不允许被授权",
    "OrganizationNotFound": "未找到该组织",
    "TaskNotFound": "未查询到该任务",
    "CanNotLoadAllowlistFile": "导入白名单文件加载失败",
    "ShareInfoNotFound": "文件已被删除或移动",
    "NoPersonalSpace": "无个人存储空间",
    "NoSpace": "未找到该空间",
    "NoOrganizationUser": "未查询到该用户",
    "OrganizationTeamNotFound": "未查询到该部门",
    "DestOrganizationTeamNotFound": "未查询到目标部门？",
    "UserNotFound": "未找到指定用户",
    "DirectorySyncNotFound": "该同步任务不存在或已被取消",
    "TagNotFound": "文件标签未找到",
    "ApiDeprecated": "此api已弃用。",
    "BatchDownloadNotFound": "未找到批量下载或已过期。",
    "CustomDomainNotFound": "在指定的组织中找不到自定义域。",
    "ESignKeyNotFound": "未找到对应的电子签二维码",
    "ESignCodeNotFound": "未找到对应的电子签授权",
    "EsignClientError": "电子签客户端有误",
    "ESignRefreshTokenNotFound": "电子签刷新令牌有误",
    "ESignRefreshTokenExpired": "电子签刷新令牌已过期",
    "ApplicationAuthorizationNotFound": "未找到第三方应用授权信息",
    "ApplicationNotFound": "未找到第三方应用",
    "DuplicateRecord": "存在重复数据",
    "DuplicateTeamRecord": "团队名称已存在，请重新输入",
    "DuplicateUserPhoneNumber": "手机号码已被其他用户使用",
    "DuplicateFavoriteRecord": "文件（夹）已加入收藏列表",
    "DuplicateDirectorySync": "该文件夹已被设置为同步盘，请重新选择",
    "ChildDirectorySyncExist": "所选文件夹的某子文件夹已被设为同步盘，请重新选择",
    "ParentDirectorySyncExist": "所选文件夹的某父级文件夹已被设为同步盘，请重新选择",
    "DuplicateCustomDomain": "组织只能有一个自定义域。",
    "DuplicateDomain": "复制域。",
    "TooManyFiles": "下载包时文件太多。",
    "DomainCheckFrequencyLimit": "请稍后重试",
    "SensitiveContentRecognized": "该文件存在敏感字段",
    "SensitiveOrgLogoRecognized": "该组织logo存在敏感字段",
    "SensitiveUserLogoRecognized": "该用户logo存在敏感字段",
    "SensitiveNameRecognized": "名字存在敏感字段",
    "ShareContentIsLoading": "共享内容正在加载",
    "ShareContentNotAvailable": "共享内容不可用",
    "TaskCancelled": "任务已被取消",
    "TaskIsCancelled": "任务已被取消",
    "SignOutFail": "登出请求出错",
    "SendSmsFailed": "发送验证码出错",
    "SmartMediaHostingError": "SMH请求出错",
    "NoDefaultRoleFound": "未分配默认角色",
    "SpaceAllocationFail": "分配存储空间失败",
    "CipCheckServiceError": "检查域cip信息时发生错误。",
    "WeworkInternalServerError": "处理wework请求时发生错误。",
    "InitRoleListFailed": "初始化失败或已经初始化。",
    "ConvertFileTaskFailed": "转换文件任务失败。",
  };

  static String? getZHMessage(String? code) {
    if (code == null || !SMHErrorZHMessageMap.keys.contains(code)) {
      return null;
    }
    return SMHErrorZHMessageMap[code];
  }
}

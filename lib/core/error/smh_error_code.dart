class SMHErrorCode {
  /// 错误请求
  static final BadRequest = 'BadRequest';

  /// 媒体库ID或密钥为空
  static final EmptyLibraryIdOrSecret = 'EmptyLibraryIdOrSecret';

  /// 用户ID长度超出限制
  static final UserIdLengthExceed = 'UserIdLengthExceed';

  /// 客户端ID长度超出限制
  static final ClientIdLengthExceed = 'ClientIdLengthExceed';

  /// 媒体库密钥为空
  static final EmptyLibrarySecret = 'EmptyLibrarySecret';

  /// 媒体库ID为空
  static final EmptyLibraryId = 'EmptyLibraryId';

  /// 该媒体库非多租户模式
  static final NotMultiSpaceLibrary = 'NotMultiSpaceLibrary';

  /// 访问令牌为空
  static final EmptyAccessToken = 'EmptyAccessToken';

  /// 文件已被删除或移动至其他位置
  static final EmptyPath = 'EmptyPath';

  /// 目录名长度超出限制，请修改
  static final DirectoryNameLengthExceed = 'DirectoryNameLengthExceed';

  /// 目录名称不合法，请修改
  static final DirectoryNotAllowed = 'DirectoryNotAllowed';

  /// 仅允许存在一级目录，请联系管理员修改
  static final DirectoryLevelExceed = 'DirectoryLevelExceed';

  /// 文件名称为空，请重新设置
  static final EmptyFileName = 'EmptyFileName';

  /// 文件名称长度超过限制，请修改
  static final FileNameLengthExceed = 'FileNameLengthExceed';

  /// 本目录不支持此类型文件
  static final ExtnameNotAllowed = 'ExtnameNotAllowed';

  /// 不支持上传文件至根目录，请联系管理员修改
  static final UploadToRootDirectoryNotAllowed =
      'UploadToRootDirectoryNotAllowed';

  /// 源目录无效
  static final InvalidSourceDirectory = 'InvalidSourceDirectory';

  /// 目标路径为源文件夹的子文件夹，请重新选择
  static final SourceDirectoryIsParentOfDestination =
      'SourceDirectoryIsParentOfDestination';

  /// 源文件无效
  static final InvalidSourceFile = 'InvalidSourceFile';

  /// 源路径无效
  static final InvalidSourcePath = 'InvalidSourcePath';

  /// 该文件为无效文件，请检查后重新上传
  static final InvalidTargetFile = 'InvalidTargetFile';

  /// 目标路径无效
  static final InvalidDestinationPath = 'InvalidDestinationPath';

  /// 目标文件类型与源文件不匹配
  static final FileTypeNotMatched = 'FileTypeNotMatched';

  /// 文件分段上传未完成
  static final MultipartUploadIncomplete = 'MultipartUploadIncomplete';

  /// 可用存储额度不足
  static final QuotaLimitReached = 'QuotaLimitReached';

  /// 可用存储额度不足
  static final LibraryQuotaLimitReached = 'LibraryQuotaLimitReached';

  /// 本操作需要更多存储空间，请联系管理员
  static final QuotaCapacityRequired = 'QuotaCapacityRequired';

  /// 存储额度无效
  static final QuotaCapacityInvalid = 'QuotaCapacityInvalid';

  /// 多租户空间需要分配空间额度
  static final QuotaSpacesRequired = 'QuotaSpacesRequired';

  /// 参数无效
  static final ParamInvalid = 'ParamInvalid';

  /// 回收站未开启
  static final RecycleBinNotEnabled = 'RecycleBinNotEnabled';

  /// 指定的冲突解决策略无效或不受支持
  static final InvalidConflictResolutionStrategy =
      'InvalidConflictResolutionStrategy';

  /// 排序字段无效
  static final OrderByNotAllowed = 'OrderByNotAllowed';

  /// 排序方式无效
  static final OrderByTypeNotAllowed = 'OrderByTypeNotAllowed';

  /// 最新版本不能够被删除
  static final DirectoryHistoryNotBeDeleted = 'DirectoryHistoryNotBeDeleted';

  /// 搜索功能未开启
  static final SearchNotEnabled = 'SearchNotEnabled';

  /// 获取文件失败
  static final BadCrc64 = 'BadCrc64';

  /// 暂不支持该文件类型
  static final DocumentTypeNotSupport = 'DocumentTypeNotSupport';

  /// 该模板名称无效
  static final InvalidTemplateName = 'InvalidTemplateName';

  /// 未开启个人空间
  static final PersonalSpaceNotAllowed = 'PersonalSpaceNotAllowed';

  /// 未找到历史版本
  static final DirectoryHistoryNotFound = 'DirectoryHistoryNotFound';

  /// 批量导入用户表格表头信息不完整，请参考导入模板填写
  static final InvalidBatchAllowlistInfo = 'InvalidBatchAllowlistInfo';

  /// 团队空间文件不可移交至其子团队空间
  static final ChildTeamAsDestinationTeam = 'ChildTeamAsDestinationTeam';

  /// 二维码与当前登录企业不匹配，请使用该域名绑定的企业网盘APP扫码
  static final QrCodeOrganizationNotMatch = 'QrCodeOrganizationNotMatch';

  /// 当前域名未关联企业
  static final NoOrganizationOfSpecifiedDomain =
      'NoOrganizationOfSpecifiedDomain';

  /// 权限角色不存在
  static final InvalidAuthorityRoleId = 'InvalidAuthorityRoleId';

  /// 企微配置测试失败，请检查后重新填写
  static final InvalidWeworkParams = 'InvalidWeworkParams';

  /// 二维码无效或已过期，请刷新后重试
  static final InvalidWeworkAuthCode = 'InvalidWeworkAuthCode';

  /// 企业ID参数无效，请检查后重新填写
  static final InvalidWeworkCorpid = 'InvalidWeworkCorpid';

  /// Secret参数无效，请检查后重新填写
  static final InvalidWeworkCredential = 'InvalidWeworkCredential';

  /// AgentId参数错误，请检查后重新填写
  static final InvalidWeworkAgentId = 'InvalidWeworkAgentId';

  /// 在线编辑文档不能超过 4M
  static final EditFileSizeExceed = 'EditFileSizeExceed';

  /// 用户license数达购买上限，若需新建用户请扩容
  static final UserLimitReached = 'UserLimitReached';

  /// 权限设置失败，不支持对自己授权
  static final AuthorizeMyselfNotAllowed = 'AuthorizeMyselfNotAllowed';

  /// 企微应用回调 URL 配置错误
  static final InvalidWeworkRedirectUrl = 'InvalidWeworkRedirectUrl';

  /// 该任务不可被删除
  static final TaskNotDeletable = 'TaskNotDeletable';

  /// 不支持对企业根目录执行该操作
  static final RootDirectoryNotAllowed = 'RootDirectoryNotAllowed';

  /// 企业剩余可用流量额度不足
  static final NoEnoughRemainingTrafficQuota = 'NoEnoughRemainingTrafficQuota';

  /// 同步任务 ID 不存在
  static final DirectorySyncIdInvalid = 'DirectorySyncIdInvalid';

  /// 同步盘已被锁定
  static final SyncFolderLocked = 'SyncFolderLocked';

  /// 文件因存储空间不足被删除
  static final FileRemovedByQuota = 'FileRemovedByQuota';

  /// 处理超时，请稍后再试
  static final ProcessTimeout = 'ProcessTimeout';

  /// 所选用户空间额度不足，请重新选择
  static final DestUserSpaceQuotaLimited = 'DestUserSpaceQuotaLimited';

  /// 下载或预览次数限制只支持单文件分享
  static final ShareDownloadOrPreviewCountLimitOnlyAllowedSingleFile =
      'ShareDownloadOrPreviewCountLimitOnlyAllowedSingleFile';

  /// 图形验证码无效
  static final InvalidGraphicCaptcha = 'InvalidGraphicCaptcha';

  /// 参数重复
  static final DuplicatePropertyInParams = 'DuplicatePropertyInParams';

  /// 群组管理员不允许退出群组
  static final GroupOwnerCanNotExit = 'GroupOwnerCanNotExit';

  /// 群组名称不合法，请重新填写
  static final InvalidGroupName = 'InvalidGroupName';

  /// 群组用户授权信息错误
  static final InvalidGroupUserAuthRoleId = 'InvalidGroupUserAuthRoleId';

  /// 分块上传
  static final MultipartUploadPartTooSmall = 'MultipartUploadPartTooSmall';

  /// 搜索参数无效，请重新输入
  static final SearchIdInvalid = 'SearchIdInvalid';

  /// 文件(夹)名称不合规，请重新输入
  static final DirectoryNameNotAvailable = 'DirectoryNameNotAvailable';

  /// 群主个人空间不存在
  static final GroupOwnerSpaceNotFound = 'GroupOwnerSpaceNotFound';

  /// 当前帐号未加入任何团队，请前往官网购买
  static final OrganizationNotRegistered = 'OrganizationNotRegistered';

  /// 文件内容不合规，不支持进行该操作
  static final FileContentNotAvailable = 'FileContentNotAvailable';

  /// 文件正在审核中，请稍后再试
  static final FileContentIsLoading = 'FileContentIsLoading';

  /// 超级管理员不允许注销，请转交管理员身份后进行操作
  static final DeregisterNotAllowedForSuperAdmin =
      'DeregisterNotAllowedForSuperAdmin';

  /// 用户未被注销
  static final UserIsNotUnderDeregister = 'UserIsNotUnderDeregister';

  /// 获取微信用户信息失败
  static final GetWechatUserInfoFailed = 'GetWechatUserInfoFailed';

  /// 玉符参数校验失败，请检查后重新填写
  static final InvalidYufuParams = 'InvalidYufuParams';

  /// 访问令牌无效/过期/不匹配
  static final InvalidAccessToken = 'InvalidAccessToken';

  /// 访问令牌不匹配
  static final AccessTokenNotMatchSpace = 'AccessTokenNotMatchSpace';

  /// 无权限
  static final NoPermission = 'NoPermission';

  /// 企业已关闭分享功能，请联系管理员开启
  static final OrganizationNotEnableShare = 'OrganizationNotEnableShare';

  /// 服务已到期，续期后方可继续使用
  static final LibraryServiceTimeExpired = 'LibraryServiceTimeExpired';

  /// 服务已到期，续期后方可继续使用
  static final OrganizationServiceTimeExpired =
      'OrganizationServiceTimeExpired';

  /// 腾讯会议授权失败
  static final MeetingOauthFailed = 'MeetingOauthFailed';

  /// 创建腾讯会议失败
  static final CreateMeetingFailed = 'CreateMeetingFailed';

  /// 指定组织中未找到该手机号
  static final PhoneNumberNotInSpecifiedOrganization =
      'PhoneNumberNotInSpecifiedOrganization';

  /// 无法操作其它用户发起的任务
  static final NoPermissionToOtherUserTask = 'NoPermissionToOtherUserTask';

  /// 未绑定 CoFile企业网盘帐号，请进行绑定
  static final UserNotBindPhoneNumber = 'UserNotBindPhoneNumber';

  /// 文件预览次数已达上限
  static final FilePreviewCountLimitReached = 'FilePreviewCountLimitReached';

  /// 文件下载次数已达上限
  static final FileDownloadCountLimitReached = 'FileDownloadCountLimitReached';

  /// 会中分享不允许选择文件夹
  static final DirectoryNotAllowedForSingleFileShare =
      'DirectoryNotAllowedForSingleFileShare';

  /// 协作群组数量达到上限，升级套餐可解锁更多群组
  static final ShareGroupLimit = 'ShareGroupLimit';

  /// 协作群组成员达到上限，升级套餐可解锁更大群组
  static final ShareGroupUserCountLimit = 'ShareGroupUserCountLimit';

  /// 该用户不在群组中
  static final UserNotInGroup = 'UserNotInGroup';

  /// 企业创建外链数量达到上限，升级套餐解锁更多
  static final OrganizationShareLinkLimitReached =
      'OrganizationShareLinkLimitReached';

  /// 此套餐暂不支持团队管理员
  static final OrganizationTeamAdminNotAllowed =
      'OrganizationTeamAdminNotAllowed';

  /// 此套餐暂不支持获取共享群组动态
  static final GetShareGroupDynamicNotAllowed =
      'GetShareGroupDynamicNotAllowed';

  /// 海外手机号暂不支持
  static final OverseasPhoneNumberNotAllowed = 'OverseasPhoneNumberNotAllowed';

  /// 暂不支持海外手机号
  static final OperationNotAllowedForOverseasPhoneNumberToken =
      'OperationNotAllowedForOverseasPhoneNumberToken';

  /// 此套餐暂不支持分享管理
  static final ShareManageNotAllowed = 'ShareManageNotAllowed';

  /// 此套餐暂不支持水印管理
  static final WatermarkManageNotAllowed = 'WatermarkManageNotAllowed';

  /// 此套餐暂不支持离职转接
  static final ResignationTransferNotAllowed = 'ResignationTransferNotAllowed';

  /// 此套餐暂不支持企业微信同步
  static final WechatIntegrationNotAllowed = 'WechatIntegrationNotAllowed';

  /// 此套餐暂不支持日志
  static final LogManageNotAllowed = 'LogManageNotAllowed';

  /// 此套餐暂不支持统计数据
  static final StatsReportNotAllowed = 'StatsReportNotAllowed';

  /// 此套餐暂不支持同步盘
  static final DirectoryLocalSyncNotAllowed = 'DirectoryLocalSyncNotAllowed';

  /// 此套餐暂不支持历史版本
  static final DirectoryHistoryNotAllowed = 'DirectoryHistoryNotAllowed';

  /// 文件历史版本达到上限，升级套餐解锁更多
  static final DirectoryHistoryCountLimitReached =
      'DirectoryHistoryCountLimitReached';

  /// 不支持在线编辑文档
  static final OnlineEditNotAllowed = 'OnlineEditNotAllowed';

  /// 已超过可恢复时间，无法恢复
  static final RecoveryTimeExceeded = 'RecoveryTimeExceeded';

  /// 不支持团队空间
  static final CreateTeamSpaceNotAllowed = 'CreateTeamSpaceNotAllowed';

  /// 企业初始化中，请耐心等待
  static final LibraryInitializing = 'LibraryInitializing';

  /// 该手机号码已绑定其他微信帐号
  static final DuplicateBindPhoneNumber = 'DuplicateBindPhoneNumber';

  /// 该微信帐号已绑定其他手机号码
  static final DuplicateBindWechat = 'DuplicateBindWechat';

  /// 该腾讯会议帐号已绑定其他手机号码
  static final MeetingOauthDuplicateBindPhoneNumber =
      'MeetingOauthDuplicateBindPhoneNumber';

  /// 绑定手机号码失败
  static final UserBindPhoneNumberFailed = 'UserBindPhoneNumberFailed';

  /// 微信授权失败
  static final WechatOauthFailed = 'WechatOauthFailed';

  /// 媒体库未注册
  static final LibraryNotRegistered = 'LibraryNotRegistered';

  /// 未开启玉符单点登录
  static final YufuSSOLoginNotAllowed = 'YufuSSOLoginNotAllowed';

  /// 玉符租户已绑定其他网盘
  static final DuplicateBindYufuConfig = 'DuplicateBindYufuConfig';

  /// 玉符授权认证失败，请联系管理员在后台管理中检查SSO登录-clientID与密钥配置
  static final YufuOauthFailed = 'YufuOauthFailed';

  /// 获取玉符用户信息失败
  static final GetYufuUserInfoFailed = 'GetYufuUserInfoFailed';

  /// 获取 wellknown 信息失败，请检查后重新填写
  static final GetYufuWellknownFailed = 'GetYufuWellknownFailed';

  /// 当前玉符帐号已绑定手机号码，无需再次绑定
  static final DuplicateBindYufu = 'DuplicateBindYufu';

  /// 当前手机号码已绑定其他玉符帐号，请更换手机号进行绑定
  static final YufuOauthDuplicateBindPhoneNumber =
      'YufuOauthDuplicateBindPhoneNumber';

  /// 媒体库不存在
  static final LibraryNotFound = 'LibraryNotFound';

  /// 租户空间不存在
  static final SpaceNotFound = 'SpaceNotFound';

  /// 媒体库ID或密钥错误
  static final WrongLibraryIdOrSecret = 'WrongLibraryIdOrSecret';

  /// 文件夹不存在
  static final DirectoryNotFound = 'DirectoryNotFound';

  /// 未找到上传文件或不支持访问
  static final UploadNotFound = 'UploadNotFound';

  /// 该文件并非分段上传文件
  static final NotMultipartUpload = 'NotMultipartUpload';

  /// 上传未完成
  static final UploadIncomplete = 'UploadIncomplete';

  /// 文件不存在
  static final FileNotFound = 'FileNotFound';

  /// 路径不存在
  static final PathNotFound = 'PathNotFound';

  /// 该角色不存在？
  static final RoleNotFound = 'RoleNotFound';

  /// 源文件夹不存在或被移动至其他位置
  static final SourceDirectoryNotFound = 'SourceDirectoryNotFound';

  /// 源文件不存在或被移动至其他位置
  static final SourceFileNotFound = 'SourceFileNotFound';

  /// 源路径不存在
  static final SourcePathNotFound = 'SourcePathNotFound';

  /// 存储额度不足
  static final NoQuota = 'NoQuota';

  /// 回收站中未查询到该文件（夹）
  static final RecycledItemNotFound = 'RecycledItemNotFound';

  /// 搜索id无效
  static final SearchIdNotFound = 'SearchIdNotFound';

  /// 未找到对应收藏夹
  static final FavoriteGroupNotFound = 'FavoriteGroupNotFound';

  /// 缓存已清空，获取数据失败
  static final StoreDataNotFound = 'StoreDataNotFound';

  /// 该企业未开启企微登录功能，请联系管理员
  static final noOrganizationWeworkIntegration =
      'noOrganizationWeworkIntegration';

  /// 文件（夹）已被删除
  static final ShareDirectoryNotFound = 'ShareDirectoryNotFound';

  /// 未在企微中查询到该用户
  static final WeworkUserIdNotFound = 'WeworkUserIdNotFound';

  /// 图形验证码未上传
  static final GraphicCaptchaNotFound = 'GraphicCaptchaNotFound';

  /// 未创建群组邀请码
  static final GroupInvitationNotCreated = 'GroupInvitationNotCreated';

  /// 未创建企业邀请码
  static final OrgInvitationNotCreated = 'OrgInvitationNotCreated';

  /// 未找到订单信息
  static final NoPurchaseRecord = 'NoPurchaseRecord';

  /// 邀请无效
  static final InvitationNotExist = 'InvitationNotExist';

  /// 群组不存在
  static final GroupNotFound = 'GroupNotFound';

  /// 邀请码无效或已过期，请联系分享人重新获取
  static final InvitationCodeInvalidOrExpired =
      'InvitationCodeInvalidOrExpired';

  /// 该邀请群组已被删除
  static final InvitationGroupNotFound = 'InvitationGroupNotFound';

  /// 该邀请企业已被删除
  static final InvitationOrganizationNotFound =
      'InvitationOrganizationNotFound';

  /// 无法找到新手引导数据
  static final NoviceGuidanceNotFound = 'NoviceGuidanceNotFound';

  /// 玉符用户 openId 同步失败
  static final YufuUserIdNotFound = 'YufuUserIdNotFound';

  /// 网盘后台未找到玉符配置
  static final YufuConfigNotFound = 'YufuConfigNotFound';

  /// 处理请求时出错
  static final InternalServerError = 'InternalServerError';

  /// 搜索超时
  static final SearchTimeout = 'SearchTimeout';

  /// 企微父级团队同步失败
  static final WeworkParentTeamSyncFail = 'WeworkParentTeamSyncFail';

  /// 企微同步超过频率限制（企微接口的限制，一般不会遇到）
  static final WeworkFreqLimit = 'WeworkFreqLimit';

  /// 获取企微团队成员失败
  static final GetWeworkTeamMemberFailed = 'GetWeworkTeamMemberFailed';

  /// 同步玉符通讯录时，父团队同步失败
  static final YufuParentTeamSyncFail = 'YufuParentTeamSyncFail';

  /// 同步玉符通讯录时，成员获取失败
  static final GetYufuTeamMemberFailed = 'GetYufuTeamMemberFailed';

  /// 只允许移交至父级及以上层级部门
  static final SameSpaceIdTransfered = 'SameSpaceIdTransfered';

  /// 存在同名文件（夹）
  static final SameNameDirectoryOrFileExists = 'SameNameDirectoryOrFileExists';

  /// 创建额度失败，请稍后再试或联系客服
  static final DuplicateQuota = 'DuplicateQuota';

  /// 循环符号链接错误
  static final CircleSymlink = 'CircleSymlink';

  /// 目标文件正被编辑
  static final TargetBeingCoEdited = 'TargetBeingCoEdited';

  /// 同一手机号对应用户在该企业已存在
  static final DuplicateAllowlistOrUser = 'DuplicateAllowlistOrUser';

  /// 系统繁忙请稍后重试
  static final DuplicatePurchaseRecord = 'DuplicatePurchaseRecord';

  /// 系统繁忙请稍后重试
  static final DuplicateInvitationRecord = 'DuplicateInvitationRecord';

  /// 国家代码或手机号码不合法
  static final InvalidPhoneNumber = 'InvalidPhoneNumber';

  /// 国家代码或手机号码不完整
  static final IncompletePhoneNumber = 'IncompletePhoneNumber';

  /// 设备ID长度超过限制
  static final DeviceIdLengthExceed = 'DeviceIdLengthExceed';

  /// 用户ID无效
  static final InvalidUserId = 'InvalidUserId';

  /// 组织ID无效
  static final InvalidOrganizationId = 'InvalidOrganizationId';

  /// 组织名称无效，请重新输入
  static final InvalidOrganizationName = 'InvalidOrganizationName';

  /// 部门名称无效，请重新输入
  static final InvalidTeamName = 'InvalidTeamName';

  /// 用户名称无效，请重新输入
  static final InvalidUserName = 'InvalidUserName';

  /// 用户扩展数据无效
  static final InvalidUserExtensionData = 'InvalidUserExtensionData';

  /// 空间配置数据无效
  static final InvalidSpaceConfig = 'InvalidSpaceConfig';

  /// 未填写名称或电话或部门（必填）
  static final InvalidBatchAllowlist = 'InvalidBatchAllowlist';

  /// 未找到该空间或目录路径
  static final InvalidSpaceOrDirectoryPath = 'InvalidSpaceOrDirectoryPath';

  /// 不允许移动父级部门至子部门？
  static final ChildTeamAsDestTeam = 'ChildTeamAsDestTeam';

  /// 用户访问令牌为空
  static final EmptyUserToken = 'EmptyUserToken';

  /// 目标位置存储额度不足
  static final DestTeamSpaceQuotaLimited = 'DestTeamSpaceQuotaLimited';

  /// 任务不可被取消或已完成
  static final TaskNotCancelable = 'TaskNotCancelable';

  /// 文件为空
  static final EmptyAllowlistData = 'EmptyAllowlistData';

  /// 所选文件需位于同一目录下
  static final ShareDirectoryPathInvalid = 'ShareDirectoryPathInvalid';

  /// 验证码无效，请重新输入
  static final ShareExtractionCodeInvalid = 'ShareExtractionCodeInvalid';

  /// 分享过期了
  static final ShareExpired = 'ShareExpired';

  /// 分享被禁用
  static final ShareLinkIsDisabled = 'ShareLinkIsDisabled';

  /// 分配的额度不可小于当前已用额度
  static final QuotaCapacityLessThanSize = 'QuotaCapacityLessThanSize';

  /// 二维码无效或过期
  static final QrCodeInvalidOrExpired = 'QrCodeInvalidOrExpired';

  /// 二维码没有被扫描
  static final QrCodeNotScanned = 'QrCodeNotScanned';

  /// 二维码没有被确认
  static final QrCodeNotConfirmed = 'QrCodeNotConfirmed';

  /// 存储的 Code 数据和 userToken 不匹配
  static final StoreDataNotMatchUserToken = 'StoreDataNotMatchUserToken';

  /// 存储的 Code 数据和 accessToken 不匹配
  static final StoreDataNotMatchAccessToken = 'StoreDataNotMatchAccessToken';

  /// 该文件夹不允许被保存到网盘
  static final NotAllowSaveToNetDisc = 'NotAllowSaveToNetDisc';

  /// 文件标签已存在
  static final SameNameTag = 'SameNameTag';

  /// 您未加入任何企业，请联系管理员添加
  static final PhoneNumberNotInAllowlist = 'PhoneNumberNotInAllowlist';

  /// 验证码获取过于频繁，请稍后再试
  static final SmsFrequencyLimit = 'SmsFrequencyLimit';

  /// 用户未加入该企业或未登录
  static final UserNotInOrganization = 'UserNotInOrganization';

  /// 用户未加入该企业
  static final UserNotInAllowlist = 'UserNotInAllowlist';

  /// 验证码无效或已过期，请重新获取
  static final SmsCodeInvalidOrExpired = 'SmsCodeInvalidOrExpired';

  /// 验证码错误，请重新输入
  static final WrongSmsCode = 'WrongSmsCode';

  /// 验证码已过期，请重新获取
  static final SmsCodeVerificationExceeded = 'SmsCodeVerificationExceeded';

  /// 用户访问令牌无效或过期
  static final InvalidUserToken = 'InvalidUserToken';

  /// 您已被该组织禁用，请联系组织管理员
  static final UserDisabled = 'UserDisabled';

  /// 您未加入任何组织或被组织删除，请联系组织管理员
  static final UserNotAllowed = 'UserNotAllowed';

  /// 不支持上传该类型文件
  static final FileTypeNotAllowed = 'FileTypeNotAllowed';

  /// 文件路径无效
  static final InvalidFilePath = 'InvalidFilePath';

  /// 普通用户无根目录操作权限
  static final RootTeamOperationNotAllowed = 'RootTeamOperationNotAllowed';

  /// $1操作无权限
  static final NoSpecifiedPermission = 'NoSpecifiedPermission';

  /// 仅超级管理员可进行该操作
  static final NoSuperAdminPermission = 'NoSuperAdminPermission';

  /// 无该部门操作权限
  static final NoTeamPermission = 'NoTeamPermission';

  /// 验证码失效，请刷新页面重新操作
  static final InvalidShareAccessToken = 'InvalidShareAccessToken';

  /// 未找到该组织
  static final OrganizationNotFound = 'OrganizationNotFound';

  /// 未查询到该任务
  static final TaskNotFound = 'TaskNotFound';

  /// 导入白名单文件加载失败
  static final CanNotLoadAllowlistFile = 'CanNotLoadAllowlistFile';

  /// 文件已被删除或移动
  static final ShareInfoNotFound = 'ShareInfoNotFound';

  /// 无个人存储空间
  static final NoPersonalSpace = 'NoPersonalSpace';

  /// 未找到该空间
  static final NoSpace = 'NoSpace';

  /// 未查询到该用户
  static final NoOrganizationUser = 'NoOrganizationUser';

  /// 未查询到该部门
  static final OrganizationTeamNotFound = 'OrganizationTeamNotFound';

  /// 未查询到目标部门？
  static final DestOrganizationTeamNotFound = 'DestOrganizationTeamNotFound';

  /// 未找到指定用户
  static final UserNotFound = 'UserNotFound';

  /// 该同步任务不存在或已被取消
  static final DirectorySyncNotFound = 'DirectorySyncNotFound';

  /// 文件标签未找到
  static final TagNotFound = 'TagNotFound';

  /// 存在重复数据
  static final DuplicateRecord = 'DuplicateRecord';

  /// 团队名称已存在，请重新输入
  static final DuplicateTeamRecord = 'DuplicateTeamRecord';

  /// 手机号码已被其他用户使用
  static final DuplicateUserPhoneNumber = 'DuplicateUserPhoneNumber';

  /// 文件（夹）已加入收藏列表
  static final DuplicateFavoriteRecord = 'DuplicateFavoriteRecord';

  /// 该文件夹已被设置为同步盘，请重新选择
  static final DuplicateDirectorySync = 'DuplicateDirectorySync';

  /// 所选文件夹的某子文件夹已被设为同步盘，请重新选择
  static final ChildDirectorySyncExist = 'ChildDirectorySyncExist';

  /// 所选文件夹的某父级文件夹已被设为同步盘，请重新选择
  static final ParentDirectorySyncExist = 'ParentDirectorySyncExist';

  /// 该文件存在敏感字段
  static final SensitiveContentRecognized = 'SensitiveContentRecognized';

  /// 该组织logo存在敏感字段
  static final SensitiveOrgLogoRecognized = 'SensitiveOrgLogoRecognized';

  /// 该用户logo存在敏感字段
  static final SensitiveUserLogoRecognized = 'SensitiveUserLogoRecognized';

  /// 名字存在敏感字段
  static final SensitiveNameRecognized = 'SensitiveNameRecognized';

  /// 共享内容正在加载
  static final ShareContentIsLoading = 'ShareContentIsLoading';

  /// 共享内容不可用
  static final ShareContentNotAvailable = 'ShareContentNotAvailable';

  /// 任务已被取消
  static final TaskCancelled = 'TaskCancelled';

  /// 任务已被取消
  static final TaskIsCancelled = 'TaskIsCancelled';

  /// 登出请求出错
  static final SignOutFail = 'SignOutFail';

  /// 发送验证码出错
  static final SendSmsFailed = 'SendSmsFailed';

  /// SMH请求出错
  static final SmartMediaHostingError = 'SmartMediaHostingError';

  /// 未分配默认角色
  static final NoDefaultRoleFound = 'NoDefaultRoleFound';

  /// 分配存储空间失败
  static final SpaceAllocationFail = 'SpaceAllocationFail';

  static Map<String, dynamic> SMHErrorZHMessageMap = {
    'DirectoryNameNotAvailable': '请修改文件(夹)名称后，重新提交',
    'FileContentNotAvailable': '文件内容不合规，不支持进行该操作',
    'LibraryNotFound': '媒体库不存在',
    'SpaceNotFound': '租户空间不存在',
    'WrongLibraryIdOrSecret': '媒体库ID或密钥错误',
    'DirectoryNotFound': '文件夹不存在',
    'UploadNotFound': '未找到上传文件或不支持访问',
    'NotMultipartUpload': '该文件并非分段上传文件',
    'UploadIncomplete': '上传未完成',
    'FileNotFound': '文件不存在',
    'PathNotFound': '路径不存在',
    'RoleNotFound': '该角色不存在？',
    'SourceDirectoryNotFound': '源文件夹不存在或被移动至其他位置',
    'SourceFileNotFound': '源文件不存在或被移动至其他位置',
    'SourcePathNotFound': '源路径不存在',
    'NoQuota': '存储额度不足',
    'RecycledItemNotFound': '回收站中未查询到该文件（夹）',
    'SearchIdNotFound': '搜索id无效',
    'FavoriteGroupNotFound': '未找到对应收藏夹',
    'StoreDataNotFound': '缓存已清空，获取数据失败',
    'noOrganizationWeworkIntegration': '该企业未开启企微登录功能，请联系管理员',
    'ShareDirectoryNotFound': '文件（夹）已被删除',
    'WeworkUserIdNotFound': '未在企微中查询到该用户',
    'GraphicCaptchaNotFound': '图形验证码未上传',
    'GroupInvitationNotCreated': '未创建群组邀请码',
    'OrgInvitationNotCreated': '未创建企业邀请码',
    'NoPurchaseRecord': '未找到订单信息',
    'InvitationNotExist': '邀请无效',
    'GroupNotFound': '群组不存在',
    'InvitationCodeInvalidOrExpired': '邀请码无效或已过期，请联系分享人重新获取',
    'InvitationGroupNotFound': '该邀请群组已被删除',
    'InvitationOrganizationNotFound': '该邀请企业已被删除',
    'NoviceGuidanceNotFound': '无法找到新手引导数据',
    'YufuUserIdNotFound': '玉符用户 openId 同步失败',
    'YufuConfigNotFound': '网盘后台未找到玉符配置',
    'InternalServerError': '处理请求时出错',
    'SearchTimeout': '搜索超时',
    'WeworkParentTeamSyncFail': '企微父级团队同步失败',
    'WeworkFreqLimit': '企微同步超过频率限制（企微接口的限制，一般不会遇到）',
    'GetWeworkTeamMemberFailed': '获取企微团队成员失败',
    'YufuParentTeamSyncFail': '同步玉符通讯录时，父团队同步失败',
    'GetYufuTeamMemberFailed': '同步玉符通讯录时，成员获取失败',
    'SameSpaceIdTransfered': '只允许移交至父级及以上层级部门',
    'SameNameDirectoryOrFileExists': '存在同名文件（夹）',
    'DuplicateQuota': '创建额度失败，请稍后再试或联系客服',
    'CircleSymlink': '循环符号链接错误',
    'TargetBeingCoEdited': '目标文件正被编辑',
    'DuplicateAllowlistOrUser': '同一手机号对应用户在该企业已存在',
    'DuplicatePurchaseRecord': '系统繁忙请稍后重试',
    'DuplicateInvitationRecord': '系统繁忙请稍后重试',
    'BadRequest': '错误请求',
    'InvalidPhoneNumber': '国家代码或手机号码不合法',
    'IncompletePhoneNumber': '国家代码或手机号码不完整',
    'DeviceIdLengthExceed': '设备ID长度超过限制',
    'InvalidUserId': '用户ID无效',
    'InvalidOrganizationId': '组织ID无效',
    'InvalidOrganizationName': '组织名称无效，请重新输入',
    'InvalidTeamName': '部门名称无效，请重新输入',
    'InvalidUserName': '用户名称无效，请重新输入',
    'InvalidUserExtensionData': '用户扩展数据无效',
    'InvalidSpaceConfig': '空间配置数据无效',
    'InvalidBatchAllowlist': '未填写名称或电话或部门（必填）',
    'InvalidSpaceOrDirectoryPath': '未找到该空间或目录路径',
    'ChildTeamAsDestTeam': '不允许移动父级部门至子部门？',
    'EmptyUserToken': '用户访问令牌为空',
    'EmptyPath': '目录为空',
    'DestTeamSpaceQuotaLimited': '目标位置存储额度不足',
    'QuotaCapacityInvalid': '存储额度无效',
    'TaskNotCancelable': '任务不可被取消或已完成',
    'EmptyAllowlistData': '文件为空',
    'ShareDirectoryPathInvalid': '所选文件需位于同一目录下',
    'ShareExtractionCodeInvalid': '验证码无效，请重新输入',
    'ShareExpired': '分享过期了',
    'ShareLinkIsDisabled': '分享被禁用',
    'QuotaCapacityLessThanSize': '分配的额度不可小于当前已用额度',
    'QrCodeInvalidOrExpired': '二维码无效或过期',
    'QrCodeNotScanned': '二维码没有被扫描',
    'QrCodeNotConfirmed': '二维码没有被确认',
    'StoreDataNotMatchUserToken': '存储的 Code 数据和 userToken 不匹配',
    'StoreDataNotMatchAccessToken': '存储的 Code 数据和 accessToken 不匹配',
    'NotAllowSaveToNetDisc': '该文件夹不允许被保存到网盘',
    'SameNameTag': '文件标签已存在',
    'PhoneNumberNotInAllowlist': '您未加入任何企业，请联系管理员添加',
    'SmsFrequencyLimit': '验证码获取过于频繁，请稍后再试',
    'UserNotInOrganization': '用户未加入该企业或未登录',
    'UserNotInAllowlist': '用户未加入该企业',
    'SmsCodeInvalidOrExpired': '验证码无效或已过期，请重新获取',
    'WrongSmsCode': '验证码错误，请重新输入',
    'SmsCodeVerificationExceeded': '验证码已过期，请重新获取',
    'InvalidUserToken': '用户访问令牌无效或过期',
    'UserDisabled': '您已被该组织禁用，请联系组织管理员',
    'UserNotAllowed': '您未加入任何组织或被组织删除，请联系组织管理员',
    'FileTypeNotAllowed': '不支持上传该类型文件',
    'InvalidFilePath': '文件路径无效',
    'RootTeamOperationNotAllowed': '普通用户无根目录操作权限',
    'NoPermission': '无权限',
    'NoSpecifiedPermission': '操作无权限',
    'NoSuperAdminPermission': '仅超级管理员可进行该操作',
    'NoTeamPermission': '无该部门操作权限',
    'InvalidShareAccessToken': '验证码失效，请刷新页面重新操作',
    'OrganizationNotFound': '未找到该组织',
    'TaskNotFound': '未查询到该任务',
    'CanNotLoadAllowlistFile': '导入白名单文件加载失败',
    'ShareInfoNotFound': '文件已被删除或移动',
    'NoPersonalSpace': '无个人存储空间',
    'NoSpace': '未找到该空间',
    'NoOrganizationUser': '未查询到该用户',
    'OrganizationTeamNotFound': '未查询到该部门',
    'DestOrganizationTeamNotFound': '未查询到目标部门？',
    'UserNotFound': '未找到指定用户',
    'DirectorySyncNotFound': '该同步任务不存在或已被取消',
    'TagNotFound': '文件标签未找到',
    'DuplicateRecord': '存在重复数据',
    'DuplicateTeamRecord': '团队名称已存在，请重新输入',
    'DuplicateUserPhoneNumber': '手机号码已被其他用户使用',
    'DuplicateFavoriteRecord': '文件（夹）已加入收藏列表',
    'DuplicateDirectorySync': '该文件夹已被设置为同步盘，请重新选择',
    'ChildDirectorySyncExist': '所选文件夹的某子文件夹已被设为同步盘，请重新选择',
    'ParentDirectorySyncExist': '所选文件夹的某父级文件夹已被设为同步盘，请重新选择',
    'SensitiveContentRecognized': '该文件存在敏感字段',
    'SensitiveOrgLogoRecognized': '该组织logo存在敏感字段',
    'SensitiveUserLogoRecognized': '该用户logo存在敏感字段',
    'SensitiveNameRecognized': '名字存在敏感字段',
    'ShareContentIsLoading': '共享内容正在加载',
    'ShareContentNotAvailable': '共享内容不可用',
    'TaskCancelled': '任务已被取消',
    'TaskIsCancelled': '任务已被取消',
    'SignOutFail': '登出请求出错',
    'SendSmsFailed': '发送验证码出错',
    'SmartMediaHostingError': 'SMH请求出错',
    'NoDefaultRoleFound': '未分配默认角色',
    'SpaceAllocationFail': '分配存储空间失败',
    'DeregisterNotAllowedForSuperAdmin': '超级管理员不允许注销，请转交管理员身份后进行操作',
    'UserIsNotUnderDeregister': '用户未被注销',
    'GroupOwnerCanNotExit': '群组所有者无法退出'
  };

  static getZHMessage(String? code) {
    if (code == null || !SMHErrorZHMessageMap.keys.contains(code)) {
      return '未知错误';
    }
    return SMHErrorZHMessageMap[code];
  }
}

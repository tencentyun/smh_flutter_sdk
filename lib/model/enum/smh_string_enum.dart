enum SMHSmsCodeType {
  signIn,
  bindMeetingPhone,
  bindWechatPhone,
  bindYufuPhone,
  bindWeworkPhone,
}

enum SMHAuthType {
  web,
  mobile,
}

enum SMHPlatformType {
  pc,
  web,
  android,
  ios,
}

enum SMHUserRole {
  user,
  admin,
}

enum SMHOrderBy {
  name,
  modificationTime,
  size,
  removalTime,
  remainingTime,
  joinTime,
  creationTime,
}

enum SMHFileListOrderBy {
  name,
  modificationTime,
  size,
  creationTime,
}

enum SMHRecentlyOrderBy {
  name,
  modificationTime,
  size,
  removalTime,
  remainingTime,
  joinTime,
  creationTime,
  visitTime,
}

enum SMHOrderByType {
  asc,
  desc,
}

enum SMHSpaceStorageOrderBy {
  internetTraffic,
  size,
  availableSpace,
  capacity,
}

enum SMHJoinType {
  own,
  join,
  all,
}

enum SMHGroupMemberOrderBy {
  groupRole,
  enabled,
  nickname,
}

enum SMHMemberOrderBy {
  role,
  enabled,
  nickname,
}

enum SMHShareListOrderBy {
  expireTime,
  name,
  creationTime,
  previewCountUsed,
  downloadCountUsed,
}

enum SMHFavoriteListOrderBy {
  favoriteTime,
}

enum SMHHistoryListOrderBy {
  creationTime,
}

enum SMHMessageActions {
  authority,
  share,
  esign,
  userManage,
  quota,
}

enum SMHDymanicActionType {
  download,
  preview,
  delete,
  move,
  rename,
  copy,
  create,
  modify,
  restore,
}

enum SMHSpaceTag {
  personal,
  team,
  user,
}

enum SMHConflictResolutionStrategy {
  ask,
  rename,
  overwrite,
}

enum SMHContentDisposition {
  inline,
  attachment,
}

enum SMHTagQueryMode {
  and,
  or,
}

enum SMHDirectoryFilter {
  all,
  onlyDir,
  onlyFile,
}

enum SMHUploadAvatar {
  png,
  jpg,
  jpeg,
}

enum SMHMessageType {
  all,
  system,
  warning,
}

enum SMHMessageReadState {
  all,
  read,
  unRead,
}

enum SMHTagType {
  string,
  keyValue,
}

/// 0 未检测 （文件夹不标记可疑状态，一直为0）
/// 1 检测中
/// 2 无风险
/// 3 风险文件
/// 4 无法检测 （比如文件太大超过可检测范围，端侧当无风险处理）（超1G不检）
/// 5 人为标记为无风险
/// 6 检测任务失败
enum SMHVirusAuditStatus {
  SMHVirusWaitAudit,
  SMHVirusAuditIng,
  SMHVirusAuditSafety,
  SMHVirusAuditUnsafety,
  SMHVirusCantAudit,
  SMHVirusAuditManualSafety,
  SMHVirusAuditFailure,
}

enum SMHMessageAction {
  authority,
  share,
  esign,
  userManage,
  quota,
}

enum SMHLoginType {
  user,
  api,
}

enum SMHGroupRole {
  owner,
  groupAdmin,
  user,
}

enum SMHAdminUserRole {
  superAdmin,
  admin,
  user,
}

enum SMHTeamUserRole {
  user,
  teamAdmin,
}

enum SMHActionType {
  /// 登录
  Login,

  /// 用户管理
  UserManagement,

  /// 团队管理
  TeamManagement,

  /// 分享相关，包括：分享文件
  ShareManagement,

  /// 共享相关，包括：共享文件，权限修改，删除权限
  AuthorityAction,

  /// 文件相关，包括：上传，下载，删除，修改，预览；
  FileAction,

  /// 同步盘操作；
  SyncAction,
}

enum SMHFileType {
  dir('dir'),
  file('file'),
  multi_file('multi-file'),
  image('image'),
  video('video'),
  symlink('symlink'),
  word('word'),
  audio('audio'),
  portable('portable'),
  powerpoint('powerpoint'),
  text('text'),
  excel('excel'),
  archive('archive'),
  other('other'),
  psd('psd');

  final String name;
  const SMHFileType(this.name);
  static SMHFileType byName(String name) {
    if (name == 'multi-file') {
      return SMHFileType.multi_file;
    }
    return SMHFileType.values.byName(name);
  }
}

enum SMHScanStatus {
  /// not_scanned 未扫描
  not_scanned,

  /// scanned 已扫描
  scanned,

  /// confirmed 已确认登录
  confirmed,
}

enum SMHEditionFlag {
  enterprise,
  team,
  personal,
}

enum SMHInviteType {
  org,
  group,
}

enum SMHPurpose { preview, download }

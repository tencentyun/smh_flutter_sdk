import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_api_requests.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_delete_file_result_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_file_detail_info_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_file_download_url_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_file_path_entity.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';
import 'package:smh_flutter_sdk/utils/extension_utils.dart';

class SMHAPIFileApis {
  static const String urlPrefix = 'v1/file';

  /// 删除文件
  ///
  /// 要求权限：
  /// 非 acl 鉴权：admin、space_admin 或 delete_file（未开启回收站或 Permanent 为 0）/delete_file_permanent（开启回收站且 Permanent 为 1）
  /// acl 鉴权：canDelete（当前文件夹可删除）
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// FilePath: 完整文件路径，例如 foo/bar/file.docx；
  /// Permanent: 当媒体库开启回收站时，则该参数指定将文件移入回收站还是永久删除文件，1: 永久删除，0: 移入回收站，默认为 0；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  ///
  /// 响应码
  /// 删除成功，返回 HTTP 204 No Content（未开启回收站）或 HTTP 200 OK（开启回收站）
  /// 响应体
  /// 空，无响应体（未开启回收站）或 application/json（开启回收站）
  static Future<SMHResponse<SMHDeleteFileResultEntity>?> deleteFile({
    required String libraryId,
    required String spaceId,
    required String filePath,
    bool permanent = false,
    String? userId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiDeleteRequest<SMHDeleteFileResultEntity>().request(
      [urlPrefix, libraryId, spaceId, filePath],
      query: {'permanent': permanent.smhToString(), 'user_id': userId},
      finishCallback: finishCallback,
    );
  }

  /// 复制文件
  ///
  /// 要求权限：
  /// 非 acl 鉴权：admin、space_admin 或 copy_file/copy_file_force
  /// acl 鉴权：canDownload（当前文件夹可下载） & canUpload（目标文件夹可上传）
  ///
  /// 该接口的源和目标均需要指定完整的文件路径，源与目标可以跨越目录，来实现将文件复制到任意其他目录下的功能，且支持同时修改文件名；
  /// 不会自动创建中间所需的各级父目录，所以必须保证路径的各级目录存在；
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// FilePath: 完整文件路径，例如 foo/bar/file_new.docx；
  /// ConflictResolutionStrategy: 文件名冲突时的处理方式，ask: 冲突时返回 HTTP 409 Conflict 及 SameNameDirectoryOrFileExists 错误码，rename: 冲突时自动重命名文件，overwrite: 如果冲突目标为目录时返回 HTTP 409 Conflict 及 SameNameDirectoryOrFileExists 错误码，否则覆盖已有文件，默认为 rename；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  ///
  /// 响应体字段说明：
  /// path: 字符串数组 或 null，如果是字符串数组则表示最终的文件路径，数组中的最后一个元素代表最终的文件名，其他元素代表每一级目录名，因为可能存在同名文件自动重命名，所以这里的最终路径可能不等同于移动或重命名时指定的目标路径；如果是 null 则表示目标路径的某级父级目录已被删除，该目标文件已经无法访问；
  static Future<SMHResponse<SMHFilePathEntity>?> copyFile({
    required String libraryId,
    required String spaceId,
    required String filePath,
    required String copyFrom,
    String? userId,
    SMHConflictResolutionStrategy conflictResolutionStrategy =
        SMHConflictResolutionStrategy.rename,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPutRequest<SMHFilePathEntity>().request(
      [urlPrefix, libraryId, spaceId, filePath],
      query: {
        'conflict_resolution_strategy': conflictResolutionStrategy.name,
        'user_id': userId
      },
      body: {'copyFrom': copyFrom},
      finishCallback: finishCallback,
    );
  }

  /// 查看文件详情
  ///
  /// 用于生成调用智能媒资托管服务的访问令牌（Access Token）。调用该接口需要用到媒体库密钥，所以必须在后端调用该接口以保证密钥安全。
  /// libraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// FilePath: 文件路径；
  static Future<SMHResponse<SMHFileDetailInfoEntity>?> getFileDetail({
    required String libraryId,
    required String spaceId,
    required String filePath,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiGetRequest<SMHFileDetailInfoEntity>().request(
      [urlPrefix, libraryId, spaceId, filePath],
      urlMethod: 'info',
      finishCallback: finishCallback,
    );
  }

  /// 用于获取 HTML 格式文档预览
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// FilePath: 完整文件路径，例如 foo/bar.pptx；
  /// HistoryId: 历史版本 ID，用于获取不同版本的文件内容，可选参数，不传默认为最新版；
  /// Purpose: 接口用途，可选参数，预览页传 preview（默认）；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  ///
  /// 获取成功，返回 HTTP 302 Found，响应头 Location 包含可直接用于展示或下载的文件 URL
  static Future<SMHResponse?> previewFileByHtml({
    required String libraryId,
    required String spaceId,
    required String filePath,
    String? userId,
    String? historyId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiGetRequest().request(
      [urlPrefix, libraryId, spaceId, filePath],
      urlMethod: 'preview',
      query: {'history_id': historyId, 'purpose': 'preview', 'user_id': userId},
      finishCallback: finishCallback,
    );
  }

  /// 获取文件下载链接和信息
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// FilePath: 完整文件路径，例如 foo/bar/file.docx；
  /// HistoryId: 历史版本 ID，用于获取不同版本的文件内容，可选参数，不传默认为最新版；
  /// ContentDisposition: 返回请求头，支持 inline 或者 attachment；
  /// Purpose: 用途，download/preview，可选参数，默认 null；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHFileDownloadUrlEntity>?> getDownloadUrl({
    required String libraryId,
    required String spaceId,
    required String filePath,
    String? userId,
    String? historyId,
    SMHContentDisposition? contentDisposition,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('history_id', historyId);
    query.addKeyWithObject('content_disposition', contentDisposition?.name);
    query.addKeyWithObject('purpose', 'download');
    query.addKeyWithObject('user_id', userId);

    return SMHApiGetRequest<SMHFileDownloadUrlEntity>().request(
      urlMethod: 'info',
      [urlPrefix, libraryId, spaceId, filePath],
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 获取照片/视频封面缩略图
  ///
  /// 视频封面使用该视频的首帧图片；
  /// 针对照片或视频封面，优先使用人脸识别智能缩放裁剪为 {Size}px × {Size}px 大小，如果未识别到人脸则居中缩放裁剪为 {Size}px × {Size}px 大小，如果未指定 {Size} 参数则使用照片或视频封面原图，最后 302 跳转到对应的图片的 URL；
  /// 可以直接在使用图片的参数中指定该 URL，例如小程序 <image> 标签、 HTML <img> 标签或小程序 wx.previewImage 接口等，该接口将自动 302 跳转到真实的图片 URL；
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// FilePath: 完整文件路径，例如 foo/bar/image.jpg；
  /// Size: 缩放大小，可选参数，相关说明参阅接口说明；
  /// Scale: 等比例缩放百分比，可选参数，不传 Size 时生效；
  /// WidthSize: 缩放宽度，不传高度时，高度按等比例缩放，不传 Size 和 Scale 时生效；
  /// HeightSize: 缩放高度，不传宽度时，宽度按等比例缩放，不传 Size 和 Scale 时生效；
  /// FrameNumber: 帧数，针对 gif 的降帧处理；
  /// mobile 用于移动端预览水印
  /// purpose 用途，可选参数，列表页传list、预览页传 preview、用于下载传 download， 默认 preview;
  /// Purpose: 用途，可选参数，列表页传 list、预览页传 preview、用于下载传 download，默认 null；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse?> getPreview({
    required String libraryId,
    required String spaceId,
    required String filePath,
    bool? isMobile,
    SMHPurpose? purpose = SMHPurpose.preview,
    String? userId,
    int? size,
    int? scale,
    int? widthSize,
    int? heightSize,
    int? frameNumber,
    SMHFinishCalBack? finishCallback,
  }) {
    Map<String, dynamic> query = {};
    query.addKeyWithObject('size', size);
    query.addKeyWithObject('scale', scale);
    query.addKeyWithObject('width_size', widthSize);
    query.addKeyWithObject('height_size', heightSize);
    query.addKeyWithObject('frame_number', frameNumber);
    query.addKeyWithObject('purpose', purpose?.name);
    query.addKeyWithObject('user_id', userId);

    String method = 'preview';
    if (isMobile == true) {
      method = 'preview&mobile';
    }

    return SMHApiGetRequest().request(
      [urlPrefix, libraryId, spaceId, filePath],
      urlMethod: method,
      query: query,
      finishCallback: finishCallback,
    );
  }

  /// 用于重命名或移动文件
  ///
  /// 要求权限：
  /// 非 acl 鉴权：admin、space_admin 或 move_file/move_file_force
  /// acl 鉴权：canDownload（当前文件夹可下载）& canDelete（当前文件夹可删除） & canUpload（目标文件夹可上传）
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数；
  /// FilePath: 完整文件路径，例如 foo/bar/file_new.docx；
  /// ConflictResolutionStrategy: 文件名冲突时的处理方式，ask: 冲突时返回 HTTP 409 Conflict 及 SameNameDirectoryOrFileExists 错误码，rename: 冲突时自动重命名文件，overwrite: 如果冲突目标为目录时返回 HTTP 409 Conflict 及 SameNameDirectoryOrFileExists 错误码，否则覆盖已有文件，默认为 rename；
  /// UserId: 用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅生成访问令牌接口，可选参数；
  static Future<SMHResponse<SMHFilePathEntity>?> moveOrRenameFile({
    required String libraryId,
    required String spaceId,
    required String filePath,
    required String from,
    String? userId,
    SMHConflictResolutionStrategy conflictResolutionStrategy =
        SMHConflictResolutionStrategy.rename,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPutRequest<SMHFilePathEntity>().request(
      [urlPrefix, libraryId, spaceId, filePath],
      query: {
        'conflict_resolution_strategy': conflictResolutionStrategy.name,
        'user_id': userId
      },
      body: {'from': from},
      finishCallback: finishCallback,
    );
  }

  /// 检查文件状态
  ///
  /// 请求参数：
  /// LibraryId：媒体库 ID，必选参数。
  /// SpaceId：空间 ID，如果媒体库为单租户模式，则该参数固定为连字符(-)；如果媒体库为多租户模式，则必须指定该参数。
  /// HistoryId：历史版本 ID，用于获取不同版本的文件内容，可选参数，不传默认为最新版。
  /// FilePath：完整文件路径，例如 foo/bar/file.docx。
  /// AccessToken：访问令牌，对于公有读媒体库或租户空间，可不指定该参数，否则必须指定该参数。
  /// UserId：用户身份识别，当访问令牌对应的权限为管理员权限且申请访问令牌时的用户身份识别为空时用来临时指定用户身份，详情请参阅 生成访问令牌接口，可选参数。
  ///
  /// 文件存在
  /// x-smh-type：文件类型。
  /// x-smh-creation-time：文件完成上传的时间。
  /// x-smh-content-type：媒体类型。
  /// x-smh-size：文件大小。
  /// x-smh-etag：文件 ETag。
  /// x-smh-crc64：文件的 CRC64-ECMA182 校验值，为了避免数字精度问题，这里为字符串格式。
  /// x-smh-meta-*：自定义元数据。
  static Future<SMHResponse?> headFile({
    required String libraryId,
    required String spaceId,
    required String filePath,
    String? userId,
    String? historyId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiHeadRequest().request(
      [urlPrefix, libraryId, spaceId, filePath],
      query: {'history_id': historyId, 'user_id': userId},
      finishCallback: finishCallback,
    );
  }
}

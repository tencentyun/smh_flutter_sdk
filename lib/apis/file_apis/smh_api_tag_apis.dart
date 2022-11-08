import 'package:smh_flutter_sdk/core/base/smh_request.dart';
import 'package:smh_flutter_sdk/core/request/smh_api_requests.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_file_tag_list_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_list_file_by_tag_result_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_tag_item_entity.dart';
import 'package:smh_flutter_sdk/model/enum/smh_string_enum.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_set_tag_input_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_tag_input_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_base_entity.dart';

class SMHAPITagApis {
  static const String urlPrefix = 'v1/tag';
  static const String urlPrefixFile = 'v1/file-tag';

  /// 用于创建标签
  ///
  /// tagName: 字符串，标签名称，必选参数；
  /// tagType: 数字，标签类型，可选参数，0 字符串标签，1 键值对标签；
  static Future<SMHResponse?> createTag({
    required String libraryId,
    required String tagName,
    required SMHTagType tagType,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPutRequest().request(
      [urlPrefix, libraryId],
      body: {'tagName': tagName, 'tagType': tagType.index},
      finishCallback: finishCallback,
    );
  }

  /// 用于删除标签
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// TagId: 标签 ID，必选参数；
  static Future<SMHResponse?> deleteTag({
    required String libraryId,
    required String tagId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiDeleteRequest().request(
      [urlPrefix, libraryId, tagId],
      finishCallback: finishCallback,
    );
  }

  /// 删除给文件打的标签
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// FileTagId: 文件标签 ID，必选参数；
  /// AccessToken: 访问令牌，必选参数；
  static Future<SMHResponse?> deleteFileTag({
    required String libraryId,
    required String spaceId,
    required String fileTagId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiDeleteRequest().request(
      [urlPrefixFile, libraryId, spaceId, fileTagId],
      finishCallback: finishCallback,
    );
  }

  /// 根据标签筛选文件
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// QueryMode: 多标签查询方式，and：所有传入的标签都匹配时才返回（默认），or：任意标签匹配即返回，可选参数；
  /// AccessToken: 访问令牌，必选参数；
  static Future<SMHResponse<SMHListFileByTagResultEntity>?> listFileByTag({
    required String libraryId,
    required String spaceId,
    required List<SMHTagInputEntity> tagList,
    SMHFinishCalBack? finishCallback,
    SMHTagQueryMode queryMode = SMHTagQueryMode.and,
  }) {
    return SMHApiPostRequest<SMHListFileByTagResultEntity>().request(
        [urlPrefixFile, libraryId, spaceId, 'list'],
        query: {'query_mode': queryMode.name},
        body: {'tagList': tagList.map((e) => e.toJson()).toList()},
        finishCallback: finishCallback);
  }

  /// 用于给文件打标签
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// FilePath: 完整源文件路径，例如 foo/bar/file.docx；
  /// AccessToken: 访问令牌，必选参数；
  static Future<SMHResponse?> setTagToFile({
    required String libraryId,
    required String spaceId,
    required String filePath,
    required SMHSetTagInputEntity tag,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiPutRequest().request(
        [urlPrefixFile, libraryId, spaceId, filePath],
        body: tag.toJson()..removeWhere((key, value) => value == null),
        finishCallback: finishCallback);
  }

  /// 用于获取文件的标签列表
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// SpaceId: 空间 ID，必须指定该参数，如果媒体库为单租户模式，则该参数固定为连字符(-)；
  /// FilePath: 完整源文件路径，例如 foo/bar/file.docx；
  /// AccessToken: 访问令牌，必选参数；
  static Future<SMHResponse<List<SMHFileTagListEntity>>?> getFileTagList({
    required String libraryId,
    required String spaceId,
    required String filePath,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiGetRequest<List<SMHFileTagListEntity>>().request(
      [urlPrefixFile, libraryId, spaceId, filePath],
      finishCallback: finishCallback,
    );
  }

  /// 获取标签列表
  ///
  /// LibraryId: 媒体库 ID，必选参数；
  /// AccessToken: 访问令牌，必选参数；
  static Future<SMHResponse<List<SMHTagItemEntity>>?> getTagList({
    required String libraryId,
    SMHFinishCalBack? finishCallback,
  }) {
    return SMHApiGetRequest<List<SMHTagItemEntity>>().request(
      [urlPrefix, libraryId],
      finishCallback: finishCallback,
    );
  }
}

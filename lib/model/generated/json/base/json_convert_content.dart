// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

import 'package:smh_flutter_sdk/model/api_model/s_m_h_api_task_result_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_batch_copy_result_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_batch_delete_result_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_batch_rename_result_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_begin_part_upload_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_delete_file_result_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_directory_detail_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_directory_detail_info_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_file_detail_info_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_file_download_url_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_file_path_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_file_tag_list_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_history_setting_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_list_file_by_tag_result_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_part_upload_state_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_search_file_result_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_simple_upload_params_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_space_list_item_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_space_quota_info_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_space_size_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_tag_item_entity.dart';
import 'package:smh_flutter_sdk/model/api_model/s_m_h_upload_fiile_result_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_batch_copy_input_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_batch_delete_input_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_batch_rename_input_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_extra_info_input_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_file_authority_item_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_get_file_detail_input_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_group_member_info_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_group_member_item_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_group_user_authrole_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_member_authority_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_search_file_input_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_set_tag_input_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_share_file_item_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_space_role_info_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_tag_input_entity.dart';
import 'package:smh_flutter_sdk/model/input/s_m_h_user_role_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_access_token_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_all_team_member_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_avatar_params_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_can_deregister_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_check_wechat_auth_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_create_favorite_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_create_group_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_create_team_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_directory_authority_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_download_person_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_extraction_code_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_favorite_file_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_favorite_group_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_detail_single_space_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_file_extra_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_all_members_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_invite_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_members_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_space_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_group_space_storage_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_groups_of_member_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_history_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_internet_traffic_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_invite_code_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_join_invite_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_list_recycle_space_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_message_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_message_settings_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_organization_detail_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_organization_history_settings_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_organization_invite_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_organization_share_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_person_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_person_space_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_person_space_storage_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_received_authorization_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_recycle_input_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_recycle_item_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_recycle_items_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_recycle_restore_item_reuslt_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_related_authorization_file_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_related_to_me_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_search_team_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_detail_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_detail_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_file_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_share_list_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_space_dymanic_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_space_tag_size_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_space_usage_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_task_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_task_result_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_team_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_team_member_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_team_space_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_traffic_price_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_avatar_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_create_group_count_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_directory_detail_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_list_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_user_stats_info_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_virus_restore_item_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_virus_setting_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_work_space_dymanic_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_login_qrcode_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_login_qrcode_state_entity.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_organization_info.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_yufu_login_url_entity.dart';
// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter/material.dart' show debugPrint;

JsonConvert jsonConvert = JsonConvert();
typedef JsonConvertFunction<T> = T Function(Map<String, dynamic> json);

class JsonConvert {
  static final Map<String, JsonConvertFunction> _convertFuncMap = {
    (SMHApiTaskResultEntity).toString(): SMHApiTaskResultEntity.fromJson,
    (SMHApiTaskResultResult).toString(): SMHApiTaskResultResult.fromJson,
    (SMHBatchCopyResultEntity).toString(): SMHBatchCopyResultEntity.fromJson,
    (SMHBatchCopyResultResult).toString(): SMHBatchCopyResultResult.fromJson,
    (SMHBatchDeleteResultEntity).toString():
        SMHBatchDeleteResultEntity.fromJson,
    (SMHBatchDeleteResultResult).toString():
        SMHBatchDeleteResultResult.fromJson,
    (SMHBatchRenameResultEntity).toString():
        SMHBatchRenameResultEntity.fromJson,
    (SMHBatchRenameResultResult).toString():
        SMHBatchRenameResultResult.fromJson,
    (SMHBeginPartUploadEntity).toString(): SMHBeginPartUploadEntity.fromJson,
    (SMHBeginPartUploadHeaders).toString(): SMHBeginPartUploadHeaders.fromJson,
    (SMHDeleteFileResultEntity).toString(): SMHDeleteFileResultEntity.fromJson,
    (SMHDirectoryDetailEntity).toString(): SMHDirectoryDetailEntity.fromJson,
    (SMHDirectoryDetailLocalSync).toString():
        SMHDirectoryDetailLocalSync.fromJson,
    (SMHDirectoryDetailInfoEntity).toString():
        SMHDirectoryDetailInfoEntity.fromJson,
    (SMHFileDetailInfoEntity).toString(): SMHFileDetailInfoEntity.fromJson,
    (SMHFileDownloadUrlEntity).toString(): SMHFileDownloadUrlEntity.fromJson,
    (SMHFilePathEntity).toString(): SMHFilePathEntity.fromJson,
    (SMHFileTagListEntity).toString(): SMHFileTagListEntity.fromJson,
    (SMHHistorySettingEntity).toString(): SMHHistorySettingEntity.fromJson,
    (SMHListFileByTagResultEntity).toString():
        SMHListFileByTagResultEntity.fromJson,
    (SMHListFileByTagResultContents).toString():
        SMHListFileByTagResultContents.fromJson,
    (SMHPartUploadStateEntity).toString(): SMHPartUploadStateEntity.fromJson,
    (SMHPartUploadStateParts).toString(): SMHPartUploadStateParts.fromJson,
    (SMHPartUploadStateUploadPartInfo).toString():
        SMHPartUploadStateUploadPartInfo.fromJson,
    (SMHPartUploadStateUploadPartInfoHeaders).toString():
        SMHPartUploadStateUploadPartInfoHeaders.fromJson,
    (SMHSearchFileResultEntity).toString(): SMHSearchFileResultEntity.fromJson,
    (SMHSearchFileResultContents).toString():
        SMHSearchFileResultContents.fromJson,
    (SMHSimpleUploadParamsEntity).toString():
        SMHSimpleUploadParamsEntity.fromJson,
    (SMHSpaceListItemEntity).toString(): SMHSpaceListItemEntity.fromJson,
    (SMHSimpleUploadParamsHeaders).toString():
        SMHSimpleUploadParamsHeaders.fromJson,
    (SMHSpaceQuotaInfoEntity).toString(): SMHSpaceQuotaInfoEntity.fromJson,
    (SMHSpaceSizeEntity).toString(): SMHSpaceSizeEntity.fromJson,
    (SMHTagItemEntity).toString(): SMHTagItemEntity.fromJson,
    (SMHUploadFileResultEntity).toString(): SMHUploadFileResultEntity.fromJson,
    (SMHBatchCopyInputEntity).toString(): SMHBatchCopyInputEntity.fromJson,
    (SMHBatchDeleteInputEntity).toString(): SMHBatchDeleteInputEntity.fromJson,
    (SMHBatchRenameInputEntity).toString(): SMHBatchRenameInputEntity.fromJson,
    (SMHExtraInfoInputEntity).toString(): SMHExtraInfoInputEntity.fromJson,
    (SMHFileAuthorityItemEntity).toString():
        SMHFileAuthorityItemEntity.fromJson,
    (SMHGetFileDetailInputEntity).toString():
        SMHGetFileDetailInputEntity.fromJson,
    (SMHGroupMemberInfoEntity).toString(): SMHGroupMemberInfoEntity.fromJson,
    (SMHGroupMemberItemEntity).toString(): SMHGroupMemberItemEntity.fromJson,
    (SMHGroupUserAuthroleUsers).toString(): SMHGroupUserAuthroleUsers.fromJson,
    (SMHMemberAuthorityEntity).toString(): SMHMemberAuthorityEntity.fromJson,
    (SMHSearchFileInputEntity).toString(): SMHSearchFileInputEntity.fromJson,
    (SMHSearchFileInputTags).toString(): SMHSearchFileInputTags.fromJson,
    (SMHSearchFileInputCreators).toString():
        SMHSearchFileInputCreators.fromJson,
    (SMHSetTagInputEntity).toString(): SMHSetTagInputEntity.fromJson,
    (SMHFileItemEntity).toString(): SMHFileItemEntity.fromJson,
    (SMHSpaceRoleInfoEntity).toString(): SMHSpaceRoleInfoEntity.fromJson,
    (SMHTagInputEntity).toString(): SMHTagInputEntity.fromJson,
    (SMHUserRoleInfoEntity).toString(): SMHUserRoleInfoEntity.fromJson,
    (SMHAccessTokenEntity).toString(): SMHAccessTokenEntity.fromJson,
    (SMHAllTeamMemberEntity).toString(): SMHAllTeamMemberEntity.fromJson,
    (SMHAllTeamMemberContents).toString(): SMHAllTeamMemberContents.fromJson,
    (SMHAuthorityRoleItemEntity).toString():
        SMHAuthorityRoleItemEntity.fromJson,
    (SMHAvatarParamsEntity).toString(): SMHAvatarParamsEntity.fromJson,
    (SMHAvatarParamsHeaders).toString(): SMHAvatarParamsHeaders.fromJson,
    (SMHCanDeregisterEntity).toString(): SMHCanDeregisterEntity.fromJson,
    (SMHCheckWechatAuthResultEntity).toString():
        SMHCheckWechatAuthResultEntity.fromJson,
    (SMHCreateFavoriteResultEntity).toString():
        SMHCreateFavoriteResultEntity.fromJson,
    (SMHCreateGroupResultEntity).toString():
        SMHCreateGroupResultEntity.fromJson,
    (SMHCreateTeamResultEntity).toString(): SMHCreateTeamResultEntity.fromJson,
    (SMHDirectoryAuthorityEntity).toString():
        SMHDirectoryAuthorityEntity.fromJson,
    (SMHDirectoryAuthorityUser).toString(): SMHDirectoryAuthorityUser.fromJson,
    (SMHDirectoryAuthorityTeam).toString(): SMHDirectoryAuthorityTeam.fromJson,
    (SMHDownloadPersonInfoEntity).toString():
        SMHDownloadPersonInfoEntity.fromJson,
    (SMHDownloadPersonInfoData).toString(): SMHDownloadPersonInfoData.fromJson,
    (SMHDownloadPersonInfoDataResp).toString():
        SMHDownloadPersonInfoDataResp.fromJson,
    (SMHDownloadPersonInfoDataRespAccountInfo).toString():
        SMHDownloadPersonInfoDataRespAccountInfo.fromJson,
    (SMHExtractionCodeInfoEntity).toString():
        SMHExtractionCodeInfoEntity.fromJson,
    (SMHFileListEntity).toString(): SMHFileListEntity.fromJson,
    (SMHFileListContent).toString(): SMHFileListContent.fromJson,
    (SMHFavoriteGroupListEntity).toString():
        SMHFavoriteGroupListEntity.fromJson,
    (SMHFavoriteGroupListContents).toString():
        SMHFavoriteGroupListContents.fromJson,
    (SMHFileDetailEntity).toString(): SMHFileDetailEntity.fromJson,
    (SMHFileDetailContents).toString(): SMHFileDetailContents.fromJson,
    (SMHFileDetailContentsTeam).toString(): SMHFileDetailContentsTeam.fromJson,
    (SMHFileDetailContentsLocalSyncUser).toString():
        SMHFileDetailContentsLocalSyncUser.fromJson,
    (SMHFileDetailContentsTagList).toString():
        SMHFileDetailContentsTagList.fromJson,
    (SMHFileDetailSingleSpaceEntity).toString():
        SMHFileDetailSingleSpaceEntity.fromJson,
    (SMHFileExtraInfoEntity).toString(): SMHFileExtraInfoEntity.fromJson,
    (SMHGroupAllMembersEntity).toString(): SMHGroupAllMembersEntity.fromJson,
    (SMHGroupAllMembersContents).toString():
        SMHGroupAllMembersContents.fromJson,
    (SMHGroupDetailEntity).toString(): SMHGroupDetailEntity.fromJson,
    (SMHGroupDetailOwner).toString(): SMHGroupDetailOwner.fromJson,
    (SMHGroupDetailRoleList).toString(): SMHGroupDetailRoleList.fromJson,
    (SMHGroupInviteInfoEntity).toString(): SMHGroupInviteInfoEntity.fromJson,
    (SMHGroupInviteInfoOrganization).toString():
        SMHGroupInviteInfoOrganization.fromJson,
    (SMHGroupInviteInfoInvitor).toString(): SMHGroupInviteInfoInvitor.fromJson,
    (SMHGroupMembersEntity).toString(): SMHGroupMembersEntity.fromJson,
    (SMHGroupMembersContents).toString(): SMHGroupMembersContents.fromJson,
    (SMHGroupSpaceEntity).toString(): SMHGroupSpaceEntity.fromJson,
    (SMHSpaceStorageInfoEntity).toString(): SMHSpaceStorageInfoEntity.fromJson,
    (SMHSpaceStorageInfoContents).toString():
        SMHSpaceStorageInfoContents.fromJson,
    (SMHGroupsOfMemberEntity).toString(): SMHGroupsOfMemberEntity.fromJson,
    (SMHGroupsOfMemberContents).toString(): SMHGroupsOfMemberContents.fromJson,
    (SMHGroupsOfMemberContentsUsers).toString():
        SMHGroupsOfMemberContentsUsers.fromJson,
    (SMHGroupsOfMemberContentsDirectoryList).toString():
        SMHGroupsOfMemberContentsDirectoryList.fromJson,
    (SMHHistoryListEntity).toString(): SMHHistoryListEntity.fromJson,
    (SMHHistoryListContents).toString(): SMHHistoryListContents.fromJson,
    (SMHInternetTrafficInfoEntity).toString():
        SMHInternetTrafficInfoEntity.fromJson,
    (SMHInternetTrafficInfoDatapoints).toString():
        SMHInternetTrafficInfoDatapoints.fromJson,
    (SMHInviteCodeEntity).toString(): SMHInviteCodeEntity.fromJson,
    (SMHJoinInviteResultEntity).toString(): SMHJoinInviteResultEntity.fromJson,
    (SMHListRecycleSpaceItemEntity).toString():
        SMHListRecycleSpaceItemEntity.fromJson,
    (SMHMessageListEntity).toString(): SMHMessageListEntity.fromJson,
    (SMHMessageListContents).toString(): SMHMessageListContents.fromJson,
    (SMHMessageSettingsEntity).toString(): SMHMessageSettingsEntity.fromJson,
    (SMHMessageSettingsReceiveMessageConfig).toString():
        SMHMessageSettingsReceiveMessageConfig.fromJson,
    (SMHOrganizationDetailInfoEntity).toString():
        SMHOrganizationDetailInfoEntity.fromJson,
    (SMHOrganizationDetailInfoDomains).toString():
        SMHOrganizationDetailInfoDomains.fromJson,
    (SMHOrganizationDetailInfoExtensionData).toString():
        SMHOrganizationDetailInfoExtensionData.fromJson,
    (SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions).toString():
        SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions.fromJson,
    (SMHOrganizationDetailInfoExtensionDataDefaultUserOptions).toString():
        SMHOrganizationDetailInfoExtensionDataDefaultUserOptions.fromJson,
    (SMHOrganizationDetailInfoExtensionDataWatermarkOptions).toString():
        SMHOrganizationDetailInfoExtensionDataWatermarkOptions.fromJson,
    (SMHOrganizationDetailInfoExtensionDataEditionConfig).toString():
        SMHOrganizationDetailInfoExtensionDataEditionConfig.fromJson,
    (SMHOrganizationHistorySettingsEntity).toString():
        SMHOrganizationHistorySettingsEntity.fromJson,
    (SMHOrganizationInviteInfoEntity).toString():
        SMHOrganizationInviteInfoEntity.fromJson,
    (SMHOrganizationInviteInfoOrganization).toString():
        SMHOrganizationInviteInfoOrganization.fromJson,
    (SMHOrganizationInviteInfoInvitor).toString():
        SMHOrganizationInviteInfoInvitor.fromJson,
    (SMHOrganizationShareListEntity).toString():
        SMHOrganizationShareListEntity.fromJson,
    (SMHOrganizationShareListContents).toString():
        SMHOrganizationShareListContents.fromJson,
    (SMHPersonInfoEntity).toString(): SMHPersonInfoEntity.fromJson,
    (SMHPersonInfoWechatUser).toString(): SMHPersonInfoWechatUser.fromJson,
    (SMHPersonInfoThirdPartyAuthList).toString():
        SMHPersonInfoThirdPartyAuthList.fromJson,
    (SMHPersonSpaceEntity).toString(): SMHPersonSpaceEntity.fromJson,
    (SMHPersonSpaceStorageInfoEntity).toString():
        SMHPersonSpaceStorageInfoEntity.fromJson,
    (SMHPersonSpaceStorageInfoContents).toString():
        SMHPersonSpaceStorageInfoContents.fromJson,
    (SMHReceivedAuthorizationEntity).toString():
        SMHReceivedAuthorizationEntity.fromJson,
    (SMHReceivedAuthorizationContents).toString():
        SMHReceivedAuthorizationContents.fromJson,
    (SMHRecycleInputItemEntity).toString(): SMHRecycleInputItemEntity.fromJson,
    (SMHRecycleItemInfoEntity).toString(): SMHRecycleItemInfoEntity.fromJson,
    (SMHRecycleItemsEntity).toString(): SMHRecycleItemsEntity.fromJson,
    (SMHRecycleItemsContents).toString(): SMHRecycleItemsContents.fromJson,
    (SMHRecycleRestoreItemReusltEntity).toString():
        SMHRecycleRestoreItemReusltEntity.fromJson,
    (SMHRecycleRestoreItemReusltResult).toString():
        SMHRecycleRestoreItemReusltResult.fromJson,
    (SMHRelatedAuthorizationFileListEntity).toString():
        SMHRelatedAuthorizationFileListEntity.fromJson,
    (SMHRelatedAuthorizationFileListContents).toString():
        SMHRelatedAuthorizationFileListContents.fromJson,
    (SMHRelatedToMeListEntity).toString(): SMHRelatedToMeListEntity.fromJson,
    (SMHRelatedToMeListContents).toString():
        SMHRelatedToMeListContents.fromJson,
    (SMHSearchTeamResultEntity).toString(): SMHSearchTeamResultEntity.fromJson,
    (SMHSearchTeamResultContents).toString():
        SMHSearchTeamResultContents.fromJson,
    (SMHSearchTeamResultContentsPathNodes).toString():
        SMHSearchTeamResultContentsPathNodes.fromJson,
    (SMHShareDetailInfoEntity).toString(): SMHShareDetailInfoEntity.fromJson,
    (SMHShareFileDetailEntity).toString(): SMHShareFileDetailEntity.fromJson,
    (SMHFileDetailTeam).toString(): SMHFileDetailTeam.fromJson,
    (SMHFileDetailGroup).toString(): SMHFileDetailGroup.fromJson,
    (SMHFileDetailUser).toString(): SMHFileDetailUser.fromJson,
    (SMHShareFileInfoEntity).toString(): SMHShareFileInfoEntity.fromJson,
    (SMHShareListEntity).toString(): SMHShareListEntity.fromJson,
    (SMHShareListContents).toString(): SMHShareListContents.fromJson,
    (SMHSpaceDymanicEntity).toString(): SMHSpaceDymanicEntity.fromJson,
    (SMHSpaceDymanicTotal).toString(): SMHSpaceDymanicTotal.fromJson,
    (SMHSpaceDymanicContents).toString(): SMHSpaceDymanicContents.fromJson,
    (SMHSpaceDymanicContentsList).toString():
        SMHSpaceDymanicContentsList.fromJson,
    (SMHSpaceTagSizeInfoEntity).toString(): SMHSpaceTagSizeInfoEntity.fromJson,
    (SMHSpaceUsageEntity).toString(): SMHSpaceUsageEntity.fromJson,
    (SMHTaskEntity).toString(): SMHTaskEntity.fromJson,
    (SMHTaskResultEntity).toString(): SMHTaskResultEntity.fromJson,
    (SMHTaskResultResult).toString(): SMHTaskResultResult.fromJson,
    (SMHTeamInfoEntity).toString(): SMHTeamInfoEntity.fromJson,
    (SMHTeamInfoPathNodes).toString(): SMHTeamInfoPathNodes.fromJson,
    (SMHTeamInfoChildren).toString(): SMHTeamInfoChildren.fromJson,
    (SMHTeamInfoChildrenChildren).toString():
        SMHTeamInfoChildrenChildren.fromJson,
    (SMHTeamMemberInfoEntity).toString(): SMHTeamMemberInfoEntity.fromJson,
    (SMHTeamMemberInfoContents).toString(): SMHTeamMemberInfoContents.fromJson,
    (SMHTeamMemberInfoContentsTeams).toString():
        SMHTeamMemberInfoContentsTeams.fromJson,
    (SMHTeamSpaceEntity).toString(): SMHTeamSpaceEntity.fromJson,
    (SMHTrafficPriceInfoEntity).toString(): SMHTrafficPriceInfoEntity.fromJson,
    (SMHUserAvatarEntity).toString(): SMHUserAvatarEntity.fromJson,
    (SMHUserCreateGroupCountEntity).toString():
        SMHUserCreateGroupCountEntity.fromJson,
    (SMHUserDirectoryDetailInfoEntity).toString():
        SMHUserDirectoryDetailInfoEntity.fromJson,
    (SMHUserListInfoEntity).toString(): SMHUserListInfoEntity.fromJson,
    (SMHUserListInfoContents).toString(): SMHUserListInfoContents.fromJson,
    (SMHUserListInfoContentsTeams).toString():
        SMHUserListInfoContentsTeams.fromJson,
    (SMHUserStatsInfoEntity).toString(): SMHUserStatsInfoEntity.fromJson,
    (SMHVirusRestoreItemEntity).toString(): SMHVirusRestoreItemEntity.fromJson,
    (SMHVirusSettingEntity).toString(): SMHVirusSettingEntity.fromJson,
    (SMHWorkSpaceDymanicEntity).toString(): SMHWorkSpaceDymanicEntity.fromJson,
    (SMHWorkSpaceDymanicContents).toString():
        SMHWorkSpaceDymanicContents.fromJson,
    (SMHWorkSpaceDymanicContentsList).toString():
        SMHWorkSpaceDymanicContentsList.fromJson,
    (SMHWorkSpaceDymanicContentsListDetails).toString():
        SMHWorkSpaceDymanicContentsListDetails.fromJson,
    (SMHLoginQrcodeEntity).toString(): SMHLoginQrcodeEntity.fromJson,
    (SMHLoginQrcodeStateEntity).toString(): SMHLoginQrcodeStateEntity.fromJson,
    (SMHOrganizationInfoEntity).toString(): SMHOrganizationInfoEntity.fromJson,
    (SMHOrganizationInfoOrganizations).toString():
        SMHOrganizationInfoOrganizations.fromJson,
    (SMHOrganizationInfoOrganizationsExtensionData).toString():
        SMHOrganizationInfoOrganizationsExtensionData.fromJson,
    (SMHOrganizationInfoOrganizationsExtensionDataEditionConfig).toString():
        SMHOrganizationInfoOrganizationsExtensionDataEditionConfig.fromJson,
    (SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions).toString():
        SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions.fromJson,
    (SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions)
            .toString():
        SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions
            .fromJson,
    (SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions)
            .toString():
        SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions
            .fromJson,
    (SMHOrganizationInfoOrganizationsOrgUser).toString():
        SMHOrganizationInfoOrganizationsOrgUser.fromJson,
    (SMHYufuLoginUrlEntity).toString(): SMHYufuLoginUrlEntity.fromJson,
  };

  T? convert<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    return asT<T>(value);
  }

  List<T?>? convertList<T>(List<dynamic>? value) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => asT<T>(e)).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  List<T>? convertListNotNull<T>(dynamic value) {
    if (value == null) {
      return null;
    }
    if(value.runtimeType != List){
      return null;
    }

    try {
      return (value as List<dynamic>).map((dynamic e) => asT<T>(e)!).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  T? asT<T extends Object?>(dynamic value) {
    if (value is T) {
      return value;
    }
    final String type = T.toString();
    try {
      final String valueS = value.toString();
      if (type == "String") {
        return valueS as T;
      } else if (type == "int") {
        final int? intValue = int.tryParse(valueS);
        if (intValue == null) {
          return double.tryParse(valueS)?.toInt() as T?;
        } else {
          return intValue as T;
        }
      } else if (type == "double") {
        return double.parse(valueS) as T;
      } else if (type == "DateTime") {
        return DateTime.parse(valueS) as T;
      } else if (type == "bool") {
        if (valueS == '0' || valueS == '1') {
          return (valueS == '1') as T;
        }
        return (valueS == 'true') as T;
      } else if (type == "Map" || type.startsWith("Map<")) {
        return value as T;
      } else {
        if (_convertFuncMap.containsKey(type)) {
          return _convertFuncMap[type]!(value) as T;
        } else {
          throw UnimplementedError('$type unimplemented');
        }
      }
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return null;
    }
  }

  //list is returned by type
  static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
    if (dynamic is M) {
      return data as M;
    }

    if (<SMHApiTaskResultEntity>[] is M) {
      return data
          .map<SMHApiTaskResultEntity>(
              (Map<String, dynamic> e) => SMHApiTaskResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHApiTaskResultResult>[] is M) {
      return data
          .map<SMHApiTaskResultResult>(
              (Map<String, dynamic> e) => SMHApiTaskResultResult.fromJson(e))
          .toList() as M;
    }
    if (<SMHBatchCopyResultEntity>[] is M) {
      return data
          .map<SMHBatchCopyResultEntity>(
              (Map<String, dynamic> e) => SMHBatchCopyResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHBatchCopyResultResult>[] is M) {
      return data
          .map<SMHBatchCopyResultResult>(
              (Map<String, dynamic> e) => SMHBatchCopyResultResult.fromJson(e))
          .toList() as M;
    }
    if (<SMHBatchDeleteResultEntity>[] is M) {
      return data
          .map<SMHBatchDeleteResultEntity>((Map<String, dynamic> e) =>
              SMHBatchDeleteResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHBatchDeleteResultResult>[] is M) {
      return data
          .map<SMHBatchDeleteResultResult>((Map<String, dynamic> e) =>
              SMHBatchDeleteResultResult.fromJson(e))
          .toList() as M;
    }
    if (<SMHBatchRenameResultEntity>[] is M) {
      return data
          .map<SMHBatchRenameResultEntity>((Map<String, dynamic> e) =>
              SMHBatchRenameResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHBatchRenameResultResult>[] is M) {
      return data
          .map<SMHBatchRenameResultResult>((Map<String, dynamic> e) =>
              SMHBatchRenameResultResult.fromJson(e))
          .toList() as M;
    }
    if (<SMHBeginPartUploadEntity>[] is M) {
      return data
          .map<SMHBeginPartUploadEntity>(
              (Map<String, dynamic> e) => SMHBeginPartUploadEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHBeginPartUploadHeaders>[] is M) {
      return data
          .map<SMHBeginPartUploadHeaders>(
              (Map<String, dynamic> e) => SMHBeginPartUploadHeaders.fromJson(e))
          .toList() as M;
    }
    if (<SMHDeleteFileResultEntity>[] is M) {
      return data
          .map<SMHDeleteFileResultEntity>(
              (Map<String, dynamic> e) => SMHDeleteFileResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHDirectoryDetailEntity>[] is M) {
      return data
          .map<SMHDirectoryDetailEntity>(
              (Map<String, dynamic> e) => SMHDirectoryDetailEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHDirectoryDetailLocalSync>[] is M) {
      return data
          .map<SMHDirectoryDetailLocalSync>((Map<String, dynamic> e) =>
              SMHDirectoryDetailLocalSync.fromJson(e))
          .toList() as M;
    }
    if (<SMHDirectoryDetailInfoEntity>[] is M) {
      return data
          .map<SMHDirectoryDetailInfoEntity>((Map<String, dynamic> e) =>
              SMHDirectoryDetailInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileDetailInfoEntity>[] is M) {
      return data
          .map<SMHFileDetailInfoEntity>(
              (Map<String, dynamic> e) => SMHFileDetailInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileDownloadUrlEntity>[] is M) {
      return data
          .map<SMHFileDownloadUrlEntity>(
              (Map<String, dynamic> e) => SMHFileDownloadUrlEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHFilePathEntity>[] is M) {
      return data
          .map<SMHFilePathEntity>(
              (Map<String, dynamic> e) => SMHFilePathEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileTagListEntity>[] is M) {
      return data
          .map<SMHFileTagListEntity>(
              (Map<String, dynamic> e) => SMHFileTagListEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHHistorySettingEntity>[] is M) {
      return data
          .map<SMHHistorySettingEntity>(
              (Map<String, dynamic> e) => SMHHistorySettingEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHListFileByTagResultEntity>[] is M) {
      return data
          .map<SMHListFileByTagResultEntity>((Map<String, dynamic> e) =>
              SMHListFileByTagResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHListFileByTagResultContents>[] is M) {
      return data
          .map<SMHListFileByTagResultContents>((Map<String, dynamic> e) =>
              SMHListFileByTagResultContents.fromJson(e))
          .toList() as M;
    }

    if (<SMHPartUploadStateEntity>[] is M) {
      return data
          .map<SMHPartUploadStateEntity>(
              (Map<String, dynamic> e) => SMHPartUploadStateEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHPartUploadStateParts>[] is M) {
      return data
          .map<SMHPartUploadStateParts>(
              (Map<String, dynamic> e) => SMHPartUploadStateParts.fromJson(e))
          .toList() as M;
    }
    if (<SMHPartUploadStateUploadPartInfo>[] is M) {
      return data
          .map<SMHPartUploadStateUploadPartInfo>((Map<String, dynamic> e) =>
              SMHPartUploadStateUploadPartInfo.fromJson(e))
          .toList() as M;
    }
    if (<SMHPartUploadStateUploadPartInfoHeaders>[] is M) {
      return data
          .map<SMHPartUploadStateUploadPartInfoHeaders>(
              (Map<String, dynamic> e) =>
                  SMHPartUploadStateUploadPartInfoHeaders.fromJson(e))
          .toList() as M;
    }
    if (<SMHSearchFileResultEntity>[] is M) {
      return data
          .map<SMHSearchFileResultEntity>(
              (Map<String, dynamic> e) => SMHSearchFileResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHSearchFileResultContents>[] is M) {
      return data
          .map<SMHSearchFileResultContents>((Map<String, dynamic> e) =>
              SMHSearchFileResultContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHSimpleUploadParamsEntity>[] is M) {
      return data
          .map<SMHSimpleUploadParamsEntity>((Map<String, dynamic> e) =>
              SMHSimpleUploadParamsEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHSpaceListItemEntity>[] is M) {
      return data
          .map<SMHSpaceListItemEntity>(
              (Map<String, dynamic> e) => SMHSpaceListItemEntity.fromJson(e))
          .toList() as M;
    }

    if (<SMHSpaceListItemEntity>[] is M) {
      return data
          .map<SMHSpaceListItemEntity>(
              (Map<String, dynamic> e) => SMHSpaceListItemEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHSpaceListItemEntity>[] is M) {
      return data
          .map<SMHSpaceListItemEntity>(
              (Map<String, dynamic> e) => SMHSpaceListItemEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHSimpleUploadParamsHeaders>[] is M) {
      return data
          .map<SMHSimpleUploadParamsHeaders>((Map<String, dynamic> e) =>
              SMHSimpleUploadParamsHeaders.fromJson(e))
          .toList() as M;
    }
    if (<SMHSpaceQuotaInfoEntity>[] is M) {
      return data
          .map<SMHSpaceQuotaInfoEntity>(
              (Map<String, dynamic> e) => SMHSpaceQuotaInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHSpaceSizeEntity>[] is M) {
      return data
          .map<SMHSpaceSizeEntity>(
              (Map<String, dynamic> e) => SMHSpaceSizeEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHTagItemEntity>[] is M) {
      return data
          .map<SMHTagItemEntity>(
              (Map<String, dynamic> e) => SMHTagItemEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHUploadFileResultEntity>[] is M) {
      return data
          .map<SMHUploadFileResultEntity>(
              (Map<String, dynamic> e) => SMHUploadFileResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHBatchCopyInputEntity>[] is M) {
      return data
          .map<SMHBatchCopyInputEntity>(
              (Map<String, dynamic> e) => SMHBatchCopyInputEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHBatchDeleteInputEntity>[] is M) {
      return data
          .map<SMHBatchDeleteInputEntity>(
              (Map<String, dynamic> e) => SMHBatchDeleteInputEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHBatchRenameInputEntity>[] is M) {
      return data
          .map<SMHBatchRenameInputEntity>(
              (Map<String, dynamic> e) => SMHBatchRenameInputEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHExtraInfoInputEntity>[] is M) {
      return data
          .map<SMHExtraInfoInputEntity>(
              (Map<String, dynamic> e) => SMHExtraInfoInputEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileAuthorityItemEntity>[] is M) {
      return data
          .map<SMHFileAuthorityItemEntity>((Map<String, dynamic> e) =>
              SMHFileAuthorityItemEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHGetFileDetailInputEntity>[] is M) {
      return data
          .map<SMHGetFileDetailInputEntity>((Map<String, dynamic> e) =>
              SMHGetFileDetailInputEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupMemberInfoEntity>[] is M) {
      return data
          .map<SMHGroupMemberInfoEntity>(
              (Map<String, dynamic> e) => SMHGroupMemberInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupMemberItemEntity>[] is M) {
      return data
          .map<SMHGroupMemberItemEntity>(
              (Map<String, dynamic> e) => SMHGroupMemberItemEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupUserAuthroleUsers>[] is M) {
      return data
          .map<SMHGroupUserAuthroleUsers>(
              (Map<String, dynamic> e) => SMHGroupUserAuthroleUsers.fromJson(e))
          .toList() as M;
    }
    if (<SMHMemberAuthorityEntity>[] is M) {
      return data
          .map<SMHMemberAuthorityEntity>(
              (Map<String, dynamic> e) => SMHMemberAuthorityEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHSearchFileInputEntity>[] is M) {
      return data
          .map<SMHSearchFileInputEntity>(
              (Map<String, dynamic> e) => SMHSearchFileInputEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHSearchFileInputTags>[] is M) {
      return data
          .map<SMHSearchFileInputTags>(
              (Map<String, dynamic> e) => SMHSearchFileInputTags.fromJson(e))
          .toList() as M;
    }
    if (<SMHSearchFileInputCreators>[] is M) {
      return data
          .map<SMHSearchFileInputCreators>((Map<String, dynamic> e) =>
              SMHSearchFileInputCreators.fromJson(e))
          .toList() as M;
    }
    if (<SMHSetTagInputEntity>[] is M) {
      return data
          .map<SMHSetTagInputEntity>(
              (Map<String, dynamic> e) => SMHSetTagInputEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileItemEntity>[] is M) {
      return data
          .map<SMHFileItemEntity>(
              (Map<String, dynamic> e) => SMHFileItemEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHSpaceRoleInfoEntity>[] is M) {
      return data
          .map<SMHSpaceRoleInfoEntity>(
              (Map<String, dynamic> e) => SMHSpaceRoleInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHTagInputEntity>[] is M) {
      return data
          .map<SMHTagInputEntity>(
              (Map<String, dynamic> e) => SMHTagInputEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHUserRoleInfoEntity>[] is M) {
      return data
          .map<SMHUserRoleInfoEntity>(
              (Map<String, dynamic> e) => SMHUserRoleInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHAccessTokenEntity>[] is M) {
      return data
          .map<SMHAccessTokenEntity>(
              (Map<String, dynamic> e) => SMHAccessTokenEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHAllTeamMemberEntity>[] is M) {
      return data
          .map<SMHAllTeamMemberEntity>(
              (Map<String, dynamic> e) => SMHAllTeamMemberEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHAllTeamMemberContents>[] is M) {
      return data
          .map<SMHAllTeamMemberContents>(
              (Map<String, dynamic> e) => SMHAllTeamMemberContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHAuthorityRoleItemEntity>[] is M) {
      return data
          .map<SMHAuthorityRoleItemEntity>((Map<String, dynamic> e) =>
              SMHAuthorityRoleItemEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHAvatarParamsEntity>[] is M) {
      return data
          .map<SMHAvatarParamsEntity>(
              (Map<String, dynamic> e) => SMHAvatarParamsEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHAvatarParamsHeaders>[] is M) {
      return data
          .map<SMHAvatarParamsHeaders>(
              (Map<String, dynamic> e) => SMHAvatarParamsHeaders.fromJson(e))
          .toList() as M;
    }
    if (<SMHCanDeregisterEntity>[] is M) {
      return data
          .map<SMHCanDeregisterEntity>(
              (Map<String, dynamic> e) => SMHCanDeregisterEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHCheckWechatAuthResultEntity>[] is M) {
      return data
          .map<SMHCheckWechatAuthResultEntity>((Map<String, dynamic> e) =>
              SMHCheckWechatAuthResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHCreateFavoriteResultEntity>[] is M) {
      return data
          .map<SMHCreateFavoriteResultEntity>((Map<String, dynamic> e) =>
              SMHCreateFavoriteResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHCreateGroupResultEntity>[] is M) {
      return data
          .map<SMHCreateGroupResultEntity>((Map<String, dynamic> e) =>
              SMHCreateGroupResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHCreateTeamResultEntity>[] is M) {
      return data
          .map<SMHCreateTeamResultEntity>(
              (Map<String, dynamic> e) => SMHCreateTeamResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHDirectoryAuthorityEntity>[] is M) {
      return data
          .map<SMHDirectoryAuthorityEntity>((Map<String, dynamic> e) =>
              SMHDirectoryAuthorityEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHDirectoryAuthorityUser>[] is M) {
      return data
          .map<SMHDirectoryAuthorityUser>(
              (Map<String, dynamic> e) => SMHDirectoryAuthorityUser.fromJson(e))
          .toList() as M;
    }
    if (<SMHDirectoryAuthorityTeam>[] is M) {
      return data
          .map<SMHDirectoryAuthorityTeam>(
              (Map<String, dynamic> e) => SMHDirectoryAuthorityTeam.fromJson(e))
          .toList() as M;
    }
    if (<SMHDownloadPersonInfoEntity>[] is M) {
      return data
          .map<SMHDownloadPersonInfoEntity>((Map<String, dynamic> e) =>
              SMHDownloadPersonInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHDownloadPersonInfoData>[] is M) {
      return data
          .map<SMHDownloadPersonInfoData>(
              (Map<String, dynamic> e) => SMHDownloadPersonInfoData.fromJson(e))
          .toList() as M;
    }
    if (<SMHDownloadPersonInfoDataResp>[] is M) {
      return data
          .map<SMHDownloadPersonInfoDataResp>((Map<String, dynamic> e) =>
              SMHDownloadPersonInfoDataResp.fromJson(e))
          .toList() as M;
    }
    if (<SMHDownloadPersonInfoDataRespAccountInfo>[] is M) {
      return data
          .map<SMHDownloadPersonInfoDataRespAccountInfo>(
              (Map<String, dynamic> e) =>
                  SMHDownloadPersonInfoDataRespAccountInfo.fromJson(e))
          .toList() as M;
    }
    if (<SMHExtractionCodeInfoEntity>[] is M) {
      return data
          .map<SMHExtractionCodeInfoEntity>((Map<String, dynamic> e) =>
              SMHExtractionCodeInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileListEntity>[] is M) {
      return data
          .map<SMHFileListEntity>(
              (Map<String, dynamic> e) => SMHFileListEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileListContent>[] is M) {
      return data
          .map<SMHFileListContent>(
              (Map<String, dynamic> e) => SMHFileListContent.fromJson(e))
          .toList() as M;
    }
    if (<SMHFavoriteGroupListEntity>[] is M) {
      return data
          .map<SMHFavoriteGroupListEntity>((Map<String, dynamic> e) =>
              SMHFavoriteGroupListEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHFavoriteGroupListContents>[] is M) {
      return data
          .map<SMHFavoriteGroupListContents>((Map<String, dynamic> e) =>
              SMHFavoriteGroupListContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileDetailEntity>[] is M) {
      return data
          .map<SMHFileDetailEntity>(
              (Map<String, dynamic> e) => SMHFileDetailEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileDetailContents>[] is M) {
      return data
          .map<SMHFileDetailContents>(
              (Map<String, dynamic> e) => SMHFileDetailContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileDetailContentsTeam>[] is M) {
      return data
          .map<SMHFileDetailContentsTeam>(
              (Map<String, dynamic> e) => SMHFileDetailContentsTeam.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileDetailContentsLocalSyncUser>[] is M) {
      return data
          .map<SMHFileDetailContentsLocalSyncUser>((Map<String, dynamic> e) =>
              SMHFileDetailContentsLocalSyncUser.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileDetailContentsTagList>[] is M) {
      return data
          .map<SMHFileDetailContentsTagList>((Map<String, dynamic> e) =>
              SMHFileDetailContentsTagList.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileDetailSingleSpaceEntity>[] is M) {
      return data
          .map<SMHFileDetailSingleSpaceEntity>((Map<String, dynamic> e) =>
              SMHFileDetailSingleSpaceEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileExtraInfoEntity>[] is M) {
      return data
          .map<SMHFileExtraInfoEntity>(
              (Map<String, dynamic> e) => SMHFileExtraInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupAllMembersEntity>[] is M) {
      return data
          .map<SMHGroupAllMembersEntity>(
              (Map<String, dynamic> e) => SMHGroupAllMembersEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupAllMembersContents>[] is M) {
      return data
          .map<SMHGroupAllMembersContents>((Map<String, dynamic> e) =>
              SMHGroupAllMembersContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupDetailEntity>[] is M) {
      return data
          .map<SMHGroupDetailEntity>(
              (Map<String, dynamic> e) => SMHGroupDetailEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupDetailOwner>[] is M) {
      return data
          .map<SMHGroupDetailOwner>(
              (Map<String, dynamic> e) => SMHGroupDetailOwner.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupDetailRoleList>[] is M) {
      return data
          .map<SMHGroupDetailRoleList>(
              (Map<String, dynamic> e) => SMHGroupDetailRoleList.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupInviteInfoEntity>[] is M) {
      return data
          .map<SMHGroupInviteInfoEntity>(
              (Map<String, dynamic> e) => SMHGroupInviteInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupInviteInfoOrganization>[] is M) {
      return data
          .map<SMHGroupInviteInfoOrganization>((Map<String, dynamic> e) =>
              SMHGroupInviteInfoOrganization.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupInviteInfoInvitor>[] is M) {
      return data
          .map<SMHGroupInviteInfoInvitor>(
              (Map<String, dynamic> e) => SMHGroupInviteInfoInvitor.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupMembersEntity>[] is M) {
      return data
          .map<SMHGroupMembersEntity>(
              (Map<String, dynamic> e) => SMHGroupMembersEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupMembersContents>[] is M) {
      return data
          .map<SMHGroupMembersContents>(
              (Map<String, dynamic> e) => SMHGroupMembersContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupSpaceEntity>[] is M) {
      return data
          .map<SMHGroupSpaceEntity>(
              (Map<String, dynamic> e) => SMHGroupSpaceEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHSpaceStorageInfoEntity>[] is M) {
      return data
          .map<SMHSpaceStorageInfoEntity>(
              (Map<String, dynamic> e) => SMHSpaceStorageInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHSpaceStorageInfoContents>[] is M) {
      return data
          .map<SMHSpaceStorageInfoContents>((Map<String, dynamic> e) =>
              SMHSpaceStorageInfoContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupsOfMemberEntity>[] is M) {
      return data
          .map<SMHGroupsOfMemberEntity>(
              (Map<String, dynamic> e) => SMHGroupsOfMemberEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupsOfMemberContents>[] is M) {
      return data
          .map<SMHGroupsOfMemberContents>(
              (Map<String, dynamic> e) => SMHGroupsOfMemberContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupsOfMemberContentsUsers>[] is M) {
      return data
          .map<SMHGroupsOfMemberContentsUsers>((Map<String, dynamic> e) =>
              SMHGroupsOfMemberContentsUsers.fromJson(e))
          .toList() as M;
    }
    if (<SMHGroupsOfMemberContentsDirectoryList>[] is M) {
      return data
          .map<SMHGroupsOfMemberContentsDirectoryList>(
              (Map<String, dynamic> e) =>
                  SMHGroupsOfMemberContentsDirectoryList.fromJson(e))
          .toList() as M;
    }
    if (<SMHHistoryListEntity>[] is M) {
      return data
          .map<SMHHistoryListEntity>(
              (Map<String, dynamic> e) => SMHHistoryListEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHHistoryListContents>[] is M) {
      return data
          .map<SMHHistoryListContents>(
              (Map<String, dynamic> e) => SMHHistoryListContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHInternetTrafficInfoEntity>[] is M) {
      return data
          .map<SMHInternetTrafficInfoEntity>((Map<String, dynamic> e) =>
              SMHInternetTrafficInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHInternetTrafficInfoDatapoints>[] is M) {
      return data
          .map<SMHInternetTrafficInfoDatapoints>((Map<String, dynamic> e) =>
              SMHInternetTrafficInfoDatapoints.fromJson(e))
          .toList() as M;
    }
    if (<SMHInviteCodeEntity>[] is M) {
      return data
          .map<SMHInviteCodeEntity>(
              (Map<String, dynamic> e) => SMHInviteCodeEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHJoinInviteResultEntity>[] is M) {
      return data
          .map<SMHJoinInviteResultEntity>(
              (Map<String, dynamic> e) => SMHJoinInviteResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHListRecycleSpaceItemEntity>[] is M) {
      return data
          .map<SMHListRecycleSpaceItemEntity>((Map<String, dynamic> e) =>
              SMHListRecycleSpaceItemEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHMessageListEntity>[] is M) {
      return data
          .map<SMHMessageListEntity>(
              (Map<String, dynamic> e) => SMHMessageListEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHMessageListContents>[] is M) {
      return data
          .map<SMHMessageListContents>(
              (Map<String, dynamic> e) => SMHMessageListContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHMessageSettingsEntity>[] is M) {
      return data
          .map<SMHMessageSettingsEntity>(
              (Map<String, dynamic> e) => SMHMessageSettingsEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHMessageSettingsReceiveMessageConfig>[] is M) {
      return data
          .map<SMHMessageSettingsReceiveMessageConfig>(
              (Map<String, dynamic> e) =>
                  SMHMessageSettingsReceiveMessageConfig.fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationDetailInfoEntity>[] is M) {
      return data
          .map<SMHOrganizationDetailInfoEntity>((Map<String, dynamic> e) =>
              SMHOrganizationDetailInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationDetailInfoDomains>[] is M) {
      return data
          .map<SMHOrganizationDetailInfoDomains>((Map<String, dynamic> e) =>
              SMHOrganizationDetailInfoDomains.fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationDetailInfoExtensionData>[] is M) {
      return data
          .map<SMHOrganizationDetailInfoExtensionData>(
              (Map<String, dynamic> e) =>
                  SMHOrganizationDetailInfoExtensionData.fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions>[] is M) {
      return data
          .map<SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions>(
              (Map<String, dynamic> e) =>
                  SMHOrganizationDetailInfoExtensionDataDefaultTeamOptions
                      .fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationDetailInfoExtensionDataDefaultUserOptions>[] is M) {
      return data
          .map<SMHOrganizationDetailInfoExtensionDataDefaultUserOptions>(
              (Map<String, dynamic> e) =>
                  SMHOrganizationDetailInfoExtensionDataDefaultUserOptions
                      .fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationDetailInfoExtensionDataWatermarkOptions>[] is M) {
      return data
          .map<SMHOrganizationDetailInfoExtensionDataWatermarkOptions>(
              (Map<String, dynamic> e) =>
                  SMHOrganizationDetailInfoExtensionDataWatermarkOptions
                      .fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationDetailInfoExtensionDataEditionConfig>[] is M) {
      return data
          .map<SMHOrganizationDetailInfoExtensionDataEditionConfig>(
              (Map<String, dynamic> e) =>
                  SMHOrganizationDetailInfoExtensionDataEditionConfig.fromJson(
                      e))
          .toList() as M;
    }
    if (<SMHOrganizationHistorySettingsEntity>[] is M) {
      return data
          .map<SMHOrganizationHistorySettingsEntity>((Map<String, dynamic> e) =>
              SMHOrganizationHistorySettingsEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationInviteInfoEntity>[] is M) {
      return data
          .map<SMHOrganizationInviteInfoEntity>((Map<String, dynamic> e) =>
              SMHOrganizationInviteInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationInviteInfoOrganization>[] is M) {
      return data
          .map<SMHOrganizationInviteInfoOrganization>(
              (Map<String, dynamic> e) =>
                  SMHOrganizationInviteInfoOrganization.fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationInviteInfoInvitor>[] is M) {
      return data
          .map<SMHOrganizationInviteInfoInvitor>((Map<String, dynamic> e) =>
              SMHOrganizationInviteInfoInvitor.fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationShareListEntity>[] is M) {
      return data
          .map<SMHOrganizationShareListEntity>((Map<String, dynamic> e) =>
              SMHOrganizationShareListEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationShareListContents>[] is M) {
      return data
          .map<SMHOrganizationShareListContents>((Map<String, dynamic> e) =>
              SMHOrganizationShareListContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHPersonInfoEntity>[] is M) {
      return data
          .map<SMHPersonInfoEntity>(
              (Map<String, dynamic> e) => SMHPersonInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHPersonInfoWechatUser>[] is M) {
      return data
          .map<SMHPersonInfoWechatUser>(
              (Map<String, dynamic> e) => SMHPersonInfoWechatUser.fromJson(e))
          .toList() as M;
    }
    if (<SMHPersonInfoThirdPartyAuthList>[] is M) {
      return data
          .map<SMHPersonInfoThirdPartyAuthList>((Map<String, dynamic> e) =>
              SMHPersonInfoThirdPartyAuthList.fromJson(e))
          .toList() as M;
    }
    if (<SMHPersonSpaceEntity>[] is M) {
      return data
          .map<SMHPersonSpaceEntity>(
              (Map<String, dynamic> e) => SMHPersonSpaceEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHPersonSpaceStorageInfoEntity>[] is M) {
      return data
          .map<SMHPersonSpaceStorageInfoEntity>((Map<String, dynamic> e) =>
              SMHPersonSpaceStorageInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHPersonSpaceStorageInfoContents>[] is M) {
      return data
          .map<SMHPersonSpaceStorageInfoContents>((Map<String, dynamic> e) =>
              SMHPersonSpaceStorageInfoContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHReceivedAuthorizationEntity>[] is M) {
      return data
          .map<SMHReceivedAuthorizationEntity>((Map<String, dynamic> e) =>
              SMHReceivedAuthorizationEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHReceivedAuthorizationContents>[] is M) {
      return data
          .map<SMHReceivedAuthorizationContents>((Map<String, dynamic> e) =>
              SMHReceivedAuthorizationContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHRecycleInputItemEntity>[] is M) {
      return data
          .map<SMHRecycleInputItemEntity>(
              (Map<String, dynamic> e) => SMHRecycleInputItemEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHRecycleItemInfoEntity>[] is M) {
      return data
          .map<SMHRecycleItemInfoEntity>(
              (Map<String, dynamic> e) => SMHRecycleItemInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHRecycleItemsEntity>[] is M) {
      return data
          .map<SMHRecycleItemsEntity>(
              (Map<String, dynamic> e) => SMHRecycleItemsEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHRecycleItemsContents>[] is M) {
      return data
          .map<SMHRecycleItemsContents>(
              (Map<String, dynamic> e) => SMHRecycleItemsContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHRecycleRestoreItemReusltEntity>[] is M) {
      return data
          .map<SMHRecycleRestoreItemReusltEntity>((Map<String, dynamic> e) =>
              SMHRecycleRestoreItemReusltEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHRecycleRestoreItemReusltResult>[] is M) {
      return data
          .map<SMHRecycleRestoreItemReusltResult>((Map<String, dynamic> e) =>
              SMHRecycleRestoreItemReusltResult.fromJson(e))
          .toList() as M;
    }
    if (<SMHRelatedAuthorizationFileListEntity>[] is M) {
      return data
          .map<SMHRelatedAuthorizationFileListEntity>(
              (Map<String, dynamic> e) =>
                  SMHRelatedAuthorizationFileListEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHRelatedAuthorizationFileListContents>[] is M) {
      return data
          .map<SMHRelatedAuthorizationFileListContents>(
              (Map<String, dynamic> e) =>
                  SMHRelatedAuthorizationFileListContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHRelatedToMeListEntity>[] is M) {
      return data
          .map<SMHRelatedToMeListEntity>(
              (Map<String, dynamic> e) => SMHRelatedToMeListEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHRelatedToMeListContents>[] is M) {
      return data
          .map<SMHRelatedToMeListContents>((Map<String, dynamic> e) =>
              SMHRelatedToMeListContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHSearchTeamResultEntity>[] is M) {
      return data
          .map<SMHSearchTeamResultEntity>(
              (Map<String, dynamic> e) => SMHSearchTeamResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHSearchTeamResultContents>[] is M) {
      return data
          .map<SMHSearchTeamResultContents>((Map<String, dynamic> e) =>
              SMHSearchTeamResultContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHSearchTeamResultContentsPathNodes>[] is M) {
      return data
          .map<SMHSearchTeamResultContentsPathNodes>((Map<String, dynamic> e) =>
              SMHSearchTeamResultContentsPathNodes.fromJson(e))
          .toList() as M;
    }
    if (<SMHShareDetailInfoEntity>[] is M) {
      return data
          .map<SMHShareDetailInfoEntity>(
              (Map<String, dynamic> e) => SMHShareDetailInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHShareFileDetailEntity>[] is M) {
      return data
          .map<SMHShareFileDetailEntity>(
              (Map<String, dynamic> e) => SMHShareFileDetailEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileDetailTeam>[] is M) {
      return data
          .map<SMHFileDetailTeam>(
              (Map<String, dynamic> e) => SMHFileDetailTeam.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileDetailGroup>[] is M) {
      return data
          .map<SMHFileDetailGroup>(
              (Map<String, dynamic> e) => SMHFileDetailGroup.fromJson(e))
          .toList() as M;
    }
    if (<SMHFileDetailUser>[] is M) {
      return data
          .map<SMHFileDetailUser>(
              (Map<String, dynamic> e) => SMHFileDetailUser.fromJson(e))
          .toList() as M;
    }
    if (<SMHShareFileInfoEntity>[] is M) {
      return data
          .map<SMHShareFileInfoEntity>(
              (Map<String, dynamic> e) => SMHShareFileInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHShareListEntity>[] is M) {
      return data
          .map<SMHShareListEntity>(
              (Map<String, dynamic> e) => SMHShareListEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHShareListContents>[] is M) {
      return data
          .map<SMHShareListContents>(
              (Map<String, dynamic> e) => SMHShareListContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHSpaceDymanicEntity>[] is M) {
      return data
          .map<SMHSpaceDymanicEntity>(
              (Map<String, dynamic> e) => SMHSpaceDymanicEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHSpaceDymanicTotal>[] is M) {
      return data
          .map<SMHSpaceDymanicTotal>(
              (Map<String, dynamic> e) => SMHSpaceDymanicTotal.fromJson(e))
          .toList() as M;
    }
    if (<SMHSpaceDymanicContents>[] is M) {
      return data
          .map<SMHSpaceDymanicContents>(
              (Map<String, dynamic> e) => SMHSpaceDymanicContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHSpaceDymanicContentsList>[] is M) {
      return data
          .map<SMHSpaceDymanicContentsList>((Map<String, dynamic> e) =>
              SMHSpaceDymanicContentsList.fromJson(e))
          .toList() as M;
    }
    if (<SMHSpaceTagSizeInfoEntity>[] is M) {
      return data
          .map<SMHSpaceTagSizeInfoEntity>(
              (Map<String, dynamic> e) => SMHSpaceTagSizeInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHSpaceUsageEntity>[] is M) {
      return data
          .map<SMHSpaceUsageEntity>(
              (Map<String, dynamic> e) => SMHSpaceUsageEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHTaskEntity>[] is M) {
      return data
          .map<SMHTaskEntity>(
              (Map<String, dynamic> e) => SMHTaskEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHTaskResultEntity>[] is M) {
      return data
          .map<SMHTaskResultEntity>(
              (Map<String, dynamic> e) => SMHTaskResultEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHTaskResultResult>[] is M) {
      return data
          .map<SMHTaskResultResult>(
              (Map<String, dynamic> e) => SMHTaskResultResult.fromJson(e))
          .toList() as M;
    }
    if (<SMHTeamInfoEntity>[] is M) {
      return data
          .map<SMHTeamInfoEntity>(
              (Map<String, dynamic> e) => SMHTeamInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHTeamInfoPathNodes>[] is M) {
      return data
          .map<SMHTeamInfoPathNodes>(
              (Map<String, dynamic> e) => SMHTeamInfoPathNodes.fromJson(e))
          .toList() as M;
    }
    if (<SMHTeamInfoChildren>[] is M) {
      return data
          .map<SMHTeamInfoChildren>(
              (Map<String, dynamic> e) => SMHTeamInfoChildren.fromJson(e))
          .toList() as M;
    }
    if (<SMHTeamInfoChildrenChildren>[] is M) {
      return data
          .map<SMHTeamInfoChildrenChildren>((Map<String, dynamic> e) =>
              SMHTeamInfoChildrenChildren.fromJson(e))
          .toList() as M;
    }
    if (<SMHTeamMemberInfoEntity>[] is M) {
      return data
          .map<SMHTeamMemberInfoEntity>(
              (Map<String, dynamic> e) => SMHTeamMemberInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHTeamMemberInfoContents>[] is M) {
      return data
          .map<SMHTeamMemberInfoContents>(
              (Map<String, dynamic> e) => SMHTeamMemberInfoContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHTeamMemberInfoContentsTeams>[] is M) {
      return data
          .map<SMHTeamMemberInfoContentsTeams>((Map<String, dynamic> e) =>
              SMHTeamMemberInfoContentsTeams.fromJson(e))
          .toList() as M;
    }
    if (<SMHTeamSpaceEntity>[] is M) {
      return data
          .map<SMHTeamSpaceEntity>(
              (Map<String, dynamic> e) => SMHTeamSpaceEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHTrafficPriceInfoEntity>[] is M) {
      return data
          .map<SMHTrafficPriceInfoEntity>(
              (Map<String, dynamic> e) => SMHTrafficPriceInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHUserAvatarEntity>[] is M) {
      return data
          .map<SMHUserAvatarEntity>(
              (Map<String, dynamic> e) => SMHUserAvatarEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHUserCreateGroupCountEntity>[] is M) {
      return data
          .map<SMHUserCreateGroupCountEntity>((Map<String, dynamic> e) =>
              SMHUserCreateGroupCountEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHUserDirectoryDetailInfoEntity>[] is M) {
      return data
          .map<SMHUserDirectoryDetailInfoEntity>((Map<String, dynamic> e) =>
              SMHUserDirectoryDetailInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHUserListInfoEntity>[] is M) {
      return data
          .map<SMHUserListInfoEntity>(
              (Map<String, dynamic> e) => SMHUserListInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHUserListInfoContents>[] is M) {
      return data
          .map<SMHUserListInfoContents>(
              (Map<String, dynamic> e) => SMHUserListInfoContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHUserListInfoContentsTeams>[] is M) {
      return data
          .map<SMHUserListInfoContentsTeams>((Map<String, dynamic> e) =>
              SMHUserListInfoContentsTeams.fromJson(e))
          .toList() as M;
    }
    if (<SMHUserStatsInfoEntity>[] is M) {
      return data
          .map<SMHUserStatsInfoEntity>(
              (Map<String, dynamic> e) => SMHUserStatsInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHVirusRestoreItemEntity>[] is M) {
      return data
          .map<SMHVirusRestoreItemEntity>(
              (Map<String, dynamic> e) => SMHVirusRestoreItemEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHVirusSettingEntity>[] is M) {
      return data
          .map<SMHVirusSettingEntity>(
              (Map<String, dynamic> e) => SMHVirusSettingEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHWorkSpaceDymanicEntity>[] is M) {
      return data
          .map<SMHWorkSpaceDymanicEntity>(
              (Map<String, dynamic> e) => SMHWorkSpaceDymanicEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHWorkSpaceDymanicContents>[] is M) {
      return data
          .map<SMHWorkSpaceDymanicContents>((Map<String, dynamic> e) =>
              SMHWorkSpaceDymanicContents.fromJson(e))
          .toList() as M;
    }
    if (<SMHWorkSpaceDymanicContentsList>[] is M) {
      return data
          .map<SMHWorkSpaceDymanicContentsList>((Map<String, dynamic> e) =>
              SMHWorkSpaceDymanicContentsList.fromJson(e))
          .toList() as M;
    }
    if (<SMHWorkSpaceDymanicContentsListDetails>[] is M) {
      return data
          .map<SMHWorkSpaceDymanicContentsListDetails>(
              (Map<String, dynamic> e) =>
                  SMHWorkSpaceDymanicContentsListDetails.fromJson(e))
          .toList() as M;
    }
    if (<SMHLoginQrcodeEntity>[] is M) {
      return data
          .map<SMHLoginQrcodeEntity>(
              (Map<String, dynamic> e) => SMHLoginQrcodeEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHLoginQrcodeStateEntity>[] is M) {
      return data
          .map<SMHLoginQrcodeStateEntity>(
              (Map<String, dynamic> e) => SMHLoginQrcodeStateEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationInfoEntity>[] is M) {
      return data
          .map<SMHOrganizationInfoEntity>(
              (Map<String, dynamic> e) => SMHOrganizationInfoEntity.fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationInfoOrganizations>[] is M) {
      return data
          .map<SMHOrganizationInfoOrganizations>((Map<String, dynamic> e) =>
              SMHOrganizationInfoOrganizations.fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationInfoOrganizationsExtensionData>[] is M) {
      return data
          .map<SMHOrganizationInfoOrganizationsExtensionData>(
              (Map<String, dynamic> e) =>
                  SMHOrganizationInfoOrganizationsExtensionData.fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationInfoOrganizationsExtensionDataEditionConfig>[] is M) {
      return data
          .map<SMHOrganizationInfoOrganizationsExtensionDataEditionConfig>(
              (Map<String, dynamic> e) =>
                  SMHOrganizationInfoOrganizationsExtensionDataEditionConfig
                      .fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions>[]
        is M) {
      return data
          .map<SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions>(
              (Map<String, dynamic> e) =>
                  SMHOrganizationInfoOrganizationsExtensionDataWatermarkOptions
                      .fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions>[]
        is M) {
      return data
          .map<SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions>(
              (Map<String, dynamic> e) =>
                  SMHOrganizationInfoOrganizationsExtensionDataDefaultTeamOptions
                      .fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions>[]
        is M) {
      return data
          .map<SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions>(
              (Map<String, dynamic> e) =>
                  SMHOrganizationInfoOrganizationsExtensionDataDefaultUserOptions
                      .fromJson(e))
          .toList() as M;
    }
    if (<SMHOrganizationInfoOrganizationsOrgUser>[] is M) {
      return data
          .map<SMHOrganizationInfoOrganizationsOrgUser>(
              (Map<String, dynamic> e) =>
                  SMHOrganizationInfoOrganizationsOrgUser.fromJson(e))
          .toList() as M;
    }
    if (<SMHYufuLoginUrlEntity>[] is M) {
      return data
          .map<SMHYufuLoginUrlEntity>(
              (Map<String, dynamic> e) => SMHYufuLoginUrlEntity.fromJson(e))
          .toList() as M;
    }

    debugPrint("${M.toString()} not found");

    return null;
  }

  static M? fromJsonAsT<M>(dynamic json) {
    if (json is List) {
      return _getListChildType<M>(
          json.map((e) => e as Map<String, dynamic>).toList());
    } else {
      return jsonConvert.asT<M>(json);
    }
  }
}

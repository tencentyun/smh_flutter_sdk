import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_authority_role_item_entity.dart';

SMHAuthorityRoleItemEntity $SMHAuthorityRoleItemEntityFromJson(
    Map<String, dynamic> json) {
  final SMHAuthorityRoleItemEntity sMHAuthorityRoleItemEntity =
      SMHAuthorityRoleItemEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    sMHAuthorityRoleItemEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    sMHAuthorityRoleItemEntity.name = name;
  }
  final bool? canView = jsonConvert.convert<bool>(json['canView']);
  if (canView != null) {
    sMHAuthorityRoleItemEntity.canView = canView;
  }
  final bool? canPreview = jsonConvert.convert<bool>(json['canPreview']);
  if (canPreview != null) {
    sMHAuthorityRoleItemEntity.canPreview = canPreview;
  }
  final bool? canDownload = jsonConvert.convert<bool>(json['canDownload']);
  if (canDownload != null) {
    sMHAuthorityRoleItemEntity.canDownload = canDownload;
  }
  final bool? canUpload = jsonConvert.convert<bool>(json['canUpload']);
  if (canUpload != null) {
    sMHAuthorityRoleItemEntity.canUpload = canUpload;
  }
  final bool? canDelete = jsonConvert.convert<bool>(json['canDelete']);
  if (canDelete != null) {
    sMHAuthorityRoleItemEntity.canDelete = canDelete;
  }
  final bool? canModify = jsonConvert.convert<bool>(json['canModify']);
  if (canModify != null) {
    sMHAuthorityRoleItemEntity.canModify = canModify;
  }
  final bool? canAuthorize = jsonConvert.convert<bool>(json['canAuthorize']);
  if (canAuthorize != null) {
    sMHAuthorityRoleItemEntity.canAuthorize = canAuthorize;
  }
  final bool? canShare = jsonConvert.convert<bool>(json['canShare']);
  if (canShare != null) {
    sMHAuthorityRoleItemEntity.canShare = canShare;
  }
  final bool? canPreviewSelf =
      jsonConvert.convert<bool>(json['canPreviewSelf']);
  if (canPreviewSelf != null) {
    sMHAuthorityRoleItemEntity.canPreviewSelf = canPreviewSelf;
  }
  final bool? canDownloadSelf =
      jsonConvert.convert<bool>(json['canDownloadSelf']);
  if (canDownloadSelf != null) {
    sMHAuthorityRoleItemEntity.canDownloadSelf = canDownloadSelf;
  }
  final String? roleDesc = jsonConvert.convert<String>(json['roleDesc']);
  if (roleDesc != null) {
    sMHAuthorityRoleItemEntity.roleDesc = roleDesc;
  }
  final bool? isDefault = jsonConvert.convert<bool>(json['isDefault']);
  if (isDefault != null) {
    sMHAuthorityRoleItemEntity.isDefault = isDefault;
  }
  final bool? isUsable = jsonConvert.convert<bool>(json['isUsable']);
  if (isUsable != null) {
    sMHAuthorityRoleItemEntity.isUsable = isUsable;
  }
  final bool? isOwner = jsonConvert.convert<bool>(json['isOwner']);
  if (isOwner != null) {
    sMHAuthorityRoleItemEntity.isOwner = isOwner;
  }
  return sMHAuthorityRoleItemEntity;
}

Map<String, dynamic> $SMHAuthorityRoleItemEntityToJson(
    SMHAuthorityRoleItemEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['canView'] = entity.canView;
  data['canPreview'] = entity.canPreview;
  data['canDownload'] = entity.canDownload;
  data['canUpload'] = entity.canUpload;
  data['canDelete'] = entity.canDelete;
  data['canModify'] = entity.canModify;
  data['canAuthorize'] = entity.canAuthorize;
  data['canShare'] = entity.canShare;
  data['canPreviewSelf'] = entity.canPreviewSelf;
  data['canDownloadSelf'] = entity.canDownloadSelf;
  data['roleDesc'] = entity.roleDesc;
  data['isDefault'] = entity.isDefault;
  data['isUsable'] = entity.isUsable;
  data['isOwner'] = entity.isOwner;
  return data;
}

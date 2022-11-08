import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/smh_yufu_login_url_entity.dart';

SMHYufuLoginUrlEntity $SMHYufuLoginUrlEntityFromJson(
    Map<String, dynamic> json) {
  final SMHYufuLoginUrlEntity sMHYufuLoginUrlEntity = SMHYufuLoginUrlEntity();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    sMHYufuLoginUrlEntity.url = url;
  }
  return sMHYufuLoginUrlEntity;
}

Map<String, dynamic> $SMHYufuLoginUrlEntityToJson(
    SMHYufuLoginUrlEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

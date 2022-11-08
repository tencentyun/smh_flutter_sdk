import 'dart:convert';

import 'package:smh_flutter_sdk/model/generated/json/base/json_field.dart';
import 'package:smh_flutter_sdk/model/generated/json/s_m_h_can_deregister_entity.g.dart';

@JsonSerializable()
class SMHCanDeregisterEntity {
  /// canDeregister: 布尔值，是否可注销企业成员身份；
  bool? canDeregister;

  /// hasGroup: 布尔值，在该企业中创建的群组是否解散；
  bool? hasGroup;

  /// hasPersonalSpaceFile: 布尔值，在该企业个人空间中的文件是否清空；
  bool? hasPersonalSpaceFile;

  SMHCanDeregisterEntity();

  factory SMHCanDeregisterEntity.fromJson(Map<String, dynamic> json) =>
      $SMHCanDeregisterEntityFromJson(json);

  Map<String, dynamic> toJson() => $SMHCanDeregisterEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

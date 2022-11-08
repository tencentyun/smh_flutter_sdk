import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_traffic_price_info_entity.dart';

SMHTrafficPriceInfoEntity $SMHTrafficPriceInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHTrafficPriceInfoEntity sMHTrafficPriceInfoEntity =
      SMHTrafficPriceInfoEntity();
  final String? paidTotal = jsonConvert.convert<String>(json['paidTotal']);
  if (paidTotal != null) {
    sMHTrafficPriceInfoEntity.paidTotal = paidTotal;
  }
  final String? paidRemain = jsonConvert.convert<String>(json['paidRemain']);
  if (paidRemain != null) {
    sMHTrafficPriceInfoEntity.paidRemain = paidRemain;
  }
  final String? freeTotal = jsonConvert.convert<String>(json['freeTotal']);
  if (freeTotal != null) {
    sMHTrafficPriceInfoEntity.freeTotal = freeTotal;
  }
  final String? freeRemain = jsonConvert.convert<String>(json['freeRemain']);
  if (freeRemain != null) {
    sMHTrafficPriceInfoEntity.freeRemain = freeRemain;
  }
  return sMHTrafficPriceInfoEntity;
}

Map<String, dynamic> $SMHTrafficPriceInfoEntityToJson(
    SMHTrafficPriceInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['paidTotal'] = entity.paidTotal;
  data['paidRemain'] = entity.paidRemain;
  data['freeTotal'] = entity.freeTotal;
  data['freeRemain'] = entity.freeRemain;
  return data;
}

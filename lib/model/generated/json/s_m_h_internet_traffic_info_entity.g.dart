import 'base/json_convert_content.dart';
import 'package:smh_flutter_sdk/model/user_model/s_m_h_internet_traffic_info_entity.dart';

SMHInternetTrafficInfoEntity $SMHInternetTrafficInfoEntityFromJson(
    Map<String, dynamic> json) {
  final SMHInternetTrafficInfoEntity sMHInternetTrafficInfoEntity =
      SMHInternetTrafficInfoEntity();
  final String? startTime = jsonConvert.convert<String>(json['startTime']);
  if (startTime != null) {
    sMHInternetTrafficInfoEntity.startTime = startTime;
  }
  final String? endTime = jsonConvert.convert<String>(json['endTime']);
  if (endTime != null) {
    sMHInternetTrafficInfoEntity.endTime = endTime;
  }
  final List<int>? timestamps =
      jsonConvert.convertListNotNull<int>(json['timestamps']);
  if (timestamps != null) {
    sMHInternetTrafficInfoEntity.timestamps = timestamps;
  }
  final List<SMHInternetTrafficInfoDatapoints>? datapoints = jsonConvert
      .convertListNotNull<SMHInternetTrafficInfoDatapoints>(json['datapoints']);
  if (datapoints != null) {
    sMHInternetTrafficInfoEntity.datapoints = datapoints;
  }
  return sMHInternetTrafficInfoEntity;
}

Map<String, dynamic> $SMHInternetTrafficInfoEntityToJson(
    SMHInternetTrafficInfoEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['startTime'] = entity.startTime;
  data['endTime'] = entity.endTime;
  data['timestamps'] = entity.timestamps;
  data['datapoints'] = entity.datapoints?.map((v) => v.toJson()).toList();
  return data;
}

SMHInternetTrafficInfoDatapoints $SMHInternetTrafficInfoDatapointsFromJson(
    Map<String, dynamic> json) {
  final SMHInternetTrafficInfoDatapoints sMHInternetTrafficInfoDatapoints =
      SMHInternetTrafficInfoDatapoints();
  final String? metricName = jsonConvert.convert<String>(json['metricName']);
  if (metricName != null) {
    sMHInternetTrafficInfoDatapoints.metricName = metricName;
  }
  final String? metricLabel = jsonConvert.convert<String>(json['metricLabel']);
  if (metricLabel != null) {
    sMHInternetTrafficInfoDatapoints.metricLabel = metricLabel;
  }
  final List<int>? values = jsonConvert.convertListNotNull<int>(json['values']);
  if (values != null) {
    sMHInternetTrafficInfoDatapoints.values = values;
  }
  return sMHInternetTrafficInfoDatapoints;
}

Map<String, dynamic> $SMHInternetTrafficInfoDatapointsToJson(
    SMHInternetTrafficInfoDatapoints entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['metricName'] = entity.metricName;
  data['metricLabel'] = entity.metricLabel;
  data['values'] = entity.values;
  return data;
}

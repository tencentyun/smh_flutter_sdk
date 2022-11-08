import 'package:dio/dio.dart';
import 'package:smh_flutter_sdk/model/generated/json/base/json_convert_content.dart';

class SMHResponse<T> {
  T? data;
  Headers? headers;
  int? statusCode;
  String? statusMessage;

  SMHResponse({this.data, this.statusCode, this.statusMessage});

  SMHResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null && json['data'] != 'null') {
      data = JsonConvert.fromJsonAsT<T>(json['data']);
    }
    statusCode = json['statusCode'];
    statusMessage = json['statusMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data;
    }
    data['statusCode'] = this.statusCode;
    data['statusMessage'] = this.statusMessage;
    return data;
  }
}

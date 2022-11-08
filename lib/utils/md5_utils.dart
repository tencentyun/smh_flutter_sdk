import 'dart:convert';
import 'dart:io';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

class SMHMD5Utils {
  static String smhString2md5(String data) {
    var content = new Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    return hex.encode(digest.bytes);
  }

  static String smhData2md5(List<int> data) {
    var digest = md5.convert(data);
    return hex.encode(digest.bytes);
  }

  static Future<String> smhFile2md5(File file, {int? start, int? end}) async {
    return (await md5.bind(file.openRead(start, end)).first).toString();
  }
}

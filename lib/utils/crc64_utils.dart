import 'dart:io';

import 'package:convert/convert.dart';
import 'package:crclib/catalog.dart';
import 'package:crclib/crclib.dart';

class SMHCRC64Utils {
  static bool calculateCRC64(String filePath, String expect) {
    RandomAccessFile accessFile = File(filePath).openSync();
    final output = AccumulatorSink<CrcValue>();
    final input = Crc64Xz().startChunkedConversion(output);

    int fileLength = accessFile.lengthSync();
    int blockSize = 8 * 1024;
    while (accessFile.positionSync() < fileLength) {
      input.add(accessFile.readSync(blockSize));
    }
    input.close();
    BigInt bytes = output.events.single.toBigInt();
    output.close();

    String result = bytes.toRadixString(16);
    String result16 = BigInt.parse(result, radix: 16).toString();
    return expect == result16;
  }
}

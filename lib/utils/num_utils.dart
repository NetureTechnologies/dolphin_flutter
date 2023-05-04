import 'package:units_converter/models/extension_converter.dart';
import 'package:units_converter/properties/digital_data.dart';

class NumUtils {
  /*
   * Data Sizes
   */
  static int? bytesToGb(num bytes) {
    return bytes.convertFromTo(DIGITAL_DATA.byte, DIGITAL_DATA.gibibyte)?.toInt();
  }
  static int? gbToBytes(num gb) {
    return gb.convertFromTo(DIGITAL_DATA.gibibyte, DIGITAL_DATA.byte)?.toInt();
  }
  static int? mbToGb(num mb) {
    return mb.convertFromTo(DIGITAL_DATA.mebibyte, DIGITAL_DATA.gibibyte)?.toInt();
  }
}
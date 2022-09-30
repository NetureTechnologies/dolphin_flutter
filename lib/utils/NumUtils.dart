import 'package:units_converter/models/extension_converter.dart';
import 'package:units_converter/properties/digital_data.dart';

class NumUtils {
  /*
   * Data Sizes
   */
  static int? bytesToGb(num bytes) {
    return bytes.convertFromTo(DIGITAL_DATA.byte, DIGITAL_DATA.gibibyte)?.toInt();
  }
}
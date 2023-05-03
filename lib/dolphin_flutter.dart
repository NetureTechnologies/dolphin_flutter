library dolphin_flutter;

import 'package:dolphin_flutter/utils/DeviceUtils.dart';

class Dolphin {
  static void initialize() {
    DeviceUtils.cache();
  }
}

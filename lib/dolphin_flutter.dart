library dolphin_flutter;

import 'package:dolphin_flutter/utils/AppUtils.dart';
import 'package:dolphin_flutter/utils/DeviceUtils.dart';

class Dolphin {
  static Future<void> initialize() async {
    DeviceUtils.cache();
    await AppUtils.cache();
  }
}

library dolphin_flutter;

import 'package:dolphin_flutter/utils/app_utils.dart';
import 'package:dolphin_flutter/utils/device_utils.dart';

class Dolphin {
  static Future<void> initialize() async {
    await DeviceUtils.cache();
    await AppUtils.cache();
  }
}

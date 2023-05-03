library dolphin_flutter;

import 'package:dolphin_flutter/utils/AppUtils.dart';
import 'package:dolphin_flutter/utils/DeviceUtils.dart';

class Dolphin {
  static void initialize() async {
    DeviceUtils.cache();
    await AppUtils.cache();
  }
}

library dolphin_flutter;

import 'dart:io';
import 'package:flutter/foundation.dart';

class DeviceUtils {
  static bool get isPlatformDesktop => Platform.isLinux || Platform.isMacOS || Platform.isWindows;
  static bool get isPlatformMobile => Platform.isAndroid || Platform.isIOS || Platform.isFuchsia;
  static bool get isPlatformWeb => kIsWeb;

  static String getOperatingSystem() {
    return Platform.operatingSystem;
  }
  static String getOperatingSystemVersion() {
    return Platform.operatingSystemVersion;
  }
  static String getDartVersion() {
    return Platform.version;
  }

  // Desktop App only
  static String getHostname() {
    return Platform.localHostname;
  }
}
library dolphin_flutter;

import 'dart:io';
import 'package:flutter/foundation.dart';

class DeviceUtils {
  static bool isPlatformDesktop = false;
  static bool isPlatformMobile = false;
  static bool isPlatformWeb = false;

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

  // Cache
  static void cache() {
    try {
      isPlatformDesktop = Platform.isLinux || Platform.isMacOS || Platform.isWindows;
    }
    catch(ex) {}

    try {
      isPlatformMobile = Platform.isAndroid || Platform.isIOS || Platform.isFuchsia;
    }
    catch(ex) {}

    try {
      isPlatformWeb = kIsWeb;
    }
    catch(ex) {}
  }
}
library dolphin_flutter;

import 'dart:io';
import 'package:flutter/foundation.dart';

class DeviceUtils {
  static bool get isPlatformDesktop {
    try {
      return Platform.isLinux || Platform.isMacOS || Platform.isWindows;
    }
    catch(ex) {
      return false;
    }
  }
  static bool get isPlatformMobile {
    try {
      return Platform.isAndroid || Platform.isIOS || Platform.isFuchsia;
    }
    catch(ex) {
       return false;
    }
  }
  static bool get isPlatformWeb {
    try {
      return kIsWeb;
    }
    catch(ex) {
      return false;
    }
  }

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
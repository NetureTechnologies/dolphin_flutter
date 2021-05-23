import 'dart:io';

class DeviceUtils {
  static String getPlatform() {
    if(Platform.isAndroid)
      return "ANDROID";
    else if(Platform.isIOS)
      return "APPLE IOS";

    return "";
  }
  static bool isAndroid() => getPlatform() == "ANDROID";
  static bool isIOS() => getPlatform() == "APPLE IOS";

  static String getHostname() {
    return Platform.localHostname;
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
}
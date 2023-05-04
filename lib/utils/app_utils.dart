library dolphin_flutter;

import 'package:package_info_plus/package_info_plus.dart';

abstract class AppUtils {
  static PackageInfo? _packageInfo;

  // Versions
  static String getVersionCute() => "${_packageInfo?.version}.${_packageInfo?.buildNumber}";
  static bool isCurrentVersion(String version, [String? build]) {
    if (build != null)
      return version == _packageInfo?.version && build == _packageInfo?.buildNumber;

    return version == _packageInfo?.version;
  }
  static bool isCurrentBuild(String build) => build == _packageInfo?.buildNumber;

  /*
   * Cache
   */
  static Future<void> cache() async {
    _packageInfo = await PackageInfo.fromPlatform();
  }
}
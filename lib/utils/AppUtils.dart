library dolphin_flutter;

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppUtils {
  static PackageInfo? _packageInfo;

  Future<AppUtils> initialize() async {
    _packageInfo = await PackageInfo.fromPlatform();
    return this;
  }

  String getVersionCute() => "${_packageInfo?.version}.${_packageInfo?.buildNumber}";
  bool isCurrentVersion(String version, [String? build]) {
    if (build != null)
      return version == _packageInfo?.version && build == _packageInfo?.buildNumber;

    return version == _packageInfo?.version;
  }
  bool isCurrentBuild(String build) => build == _packageInfo?.buildNumber;

  bool get isPlatformMobile => Platform.isAndroid || Platform.isIOS || Platform.isFuchsia;
  bool get isPlatformWeb => kIsWeb;
}
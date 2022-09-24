library dolphin_flutter;

import 'dart:io';
import 'package:dolphin_flutter/enums/hardware_platform.dart';
import 'package:dolphin_flutter/enums/os_platform.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppUtils {
  static PackageInfo? _packageInfo;
  static OSPlatform _osPlatform = OSPlatform.UNKNOWN;
  static HardwarePlatform _hardwarePlatform = HardwarePlatform.UNKNOWN;

  Future<AppUtils> initialize() async {
    _packageInfo = await PackageInfo.fromPlatform();

    // Figure out Hardware and OS Platforms
    if(this.isPlatformWeb) {
      _hardwarePlatform = HardwarePlatform.WEB;
      _osPlatform = OSPlatform.WEB;
    }
    else if(this.isPlatformDesktop) {
      _hardwarePlatform = HardwarePlatform.DESKTOP;

      if(Platform.isWindows)
        _osPlatform = OSPlatform.WINDOWS;
      else if(Platform.isMacOS)
        _osPlatform = OSPlatform.MACOS;
      else if(Platform.isLinux)
        _osPlatform = OSPlatform.LINUX;
    }
    else if(this.isPlatformMobile) {
      // TODO In the future, detect if its tablet or phone
      _hardwarePlatform = HardwarePlatform.PHONE;

      if(Platform.isAndroid)
        _osPlatform = OSPlatform.ANDROID;
      else if(Platform.isIOS)
        _osPlatform = OSPlatform.IOS;
      else if(Platform.isFuchsia)
        _osPlatform = OSPlatform.FUCHSIA;
    }

    return this;
  }

  String getVersionCute() => "${_packageInfo?.version}.${_packageInfo?.buildNumber}";
  bool isCurrentVersion(String version, [String? build]) {
    if (build != null)
      return version == _packageInfo?.version && build == _packageInfo?.buildNumber;

    return version == _packageInfo?.version;
  }
  bool isCurrentBuild(String build) => build == _packageInfo?.buildNumber;

  HardwarePlatform get getHardwarePlatform => _hardwarePlatform;
  OSPlatform get getOSPlatform => _osPlatform;

  bool get isPlatformDesktop => Platform.isLinux || Platform.isMacOS || Platform.isWindows;
  bool get isPlatformMobile => Platform.isAndroid || Platform.isIOS || Platform.isFuchsia;
  bool get isPlatformWeb => kIsWeb;
}
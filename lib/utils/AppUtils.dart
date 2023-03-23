library dolphin_flutter;

import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dolphin_flutter/enums/hardware_platform.dart';
import 'package:dolphin_flutter/enums/os_platform.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'DeviceUtils.dart';

class AppUtils {
  static PackageInfo? _packageInfo;
  static BaseDeviceInfo? _deviceInfo;
  static OSPlatform _osPlatform = OSPlatform.UNKNOWN;
  static HardwarePlatform _hardwarePlatform = HardwarePlatform.UNKNOWN;
  static String? deviceId;

  Future<AppUtils> initialize() async {
    _packageInfo = await PackageInfo.fromPlatform();
    _deviceInfo = await DeviceInfoPlugin().deviceInfo;

    // Get Device ID
    deviceId = await PlatformDeviceId.getDeviceId;

    // Figure out Hardware and OS Platforms
    if(DeviceUtils.isPlatformWeb) {
      _hardwarePlatform = HardwarePlatform.WEB;
      _osPlatform = OSPlatform.WEB;
    }
    else if(DeviceUtils.isPlatformDesktop) {
      _hardwarePlatform = HardwarePlatform.DESKTOP;

      if(Platform.isWindows)
        _osPlatform = OSPlatform.WINDOWS;
      else if(Platform.isMacOS)
        _osPlatform = OSPlatform.MACOS;
      else if(Platform.isLinux)
        _osPlatform = OSPlatform.LINUX;
    }
    else if(DeviceUtils.isPlatformMobile) {
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

  // Versions
  String getVersionCute() => "${_packageInfo?.version}.${_packageInfo?.buildNumber}";
  bool isCurrentVersion(String version, [String? build]) {
    if (build != null)
      return version == _packageInfo?.version && build == _packageInfo?.buildNumber;

    return version == _packageInfo?.version;
  }
  bool isCurrentBuild(String build) => build == _packageInfo?.buildNumber;

  // Device Info
  BaseDeviceInfo? getDeviceInfo() => _deviceInfo;

  // Platform
  HardwarePlatform get getHardwarePlatform => _hardwarePlatform;
  OSPlatform get getOSPlatform => _osPlatform;
}
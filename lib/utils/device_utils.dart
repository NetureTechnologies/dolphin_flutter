library dolphin_flutter;

import 'dart:io';
import 'package:dolphin_flutter/enums/hardware_platform.dart';
import 'package:dolphin_flutter/enums/os_platform.dart';
import 'package:dolphin_flutter/utils/logging_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:device_info_plus/device_info_plus.dart';

abstract class DeviceUtils {
  // Device
  static OSPlatform _osPlatform = OSPlatform.UNKNOWN;
  static HardwarePlatform _hardwarePlatform = HardwarePlatform.UNKNOWN;
  static String _name = "";
  static String _hardware = "";
  static String _hardwareBrand = "";
  static String _serialNumber = "";
  static String _osVersion = "";

  // Platform
  static bool isPlatformDesktop = false;
  static bool isPlatformMobile = false;
  static bool isPlatformWeb = false;

  static HardwarePlatform getHardwarePlatform() => _hardwarePlatform;
  static OSPlatform getOSPlatform() => _osPlatform;
  static String getName() => _name;
  static String getHardware() => _hardware;
  static String getHardwareBrand() => _hardwareBrand;
  static String getSerialNumber() => _serialNumber;
  static String getOperatingSystem() => _osPlatform.name;
  static String? getOperatingSystemVersion() {
    String? version;
    try {
      version = Platform.operatingSystemVersion;
    } catch (_) {}
    return version;
  }
  static String getDartVersion() => Platform.version;

  // Desktop App only
  static String getWebHostname() => Platform.localHostname;

  /*
   * Cache
   */
  static Future<void> cache() async {
    // Detect Platform
    try {
      isPlatformDesktop = Platform.isLinux || Platform.isMacOS || Platform.isWindows;
    }
    catch(ex) {} // Ignore Errors
    try {
      isPlatformMobile = Platform.isAndroid || Platform.isIOS || Platform.isFuchsia;
    }
    catch(ex) {} // Ignore Errors
    try {
      isPlatformWeb = kIsWeb;
    }
    catch(ex) {} // Ignore Errors

    // Detect Device Information
    try {
      if (isPlatformWeb) {
        var deviceInfo = await DeviceInfoPlugin().webBrowserInfo;

        _hardwarePlatform = HardwarePlatform.WEB;
        _osPlatform = OSPlatform.WEB;
        _name = deviceInfo.browserName.name.toUpperCase();
        _hardware = deviceInfo.product?? "";
        _hardwareBrand = deviceInfo.vendor?? "";
        _osVersion = deviceInfo.userAgent?? "";
      }
      else if (isPlatformDesktop) {
        _hardwarePlatform = HardwarePlatform.DESKTOP;

        if (Platform.isWindows) {
          var deviceInfo = await DeviceInfoPlugin().windowsInfo;

          _osPlatform = OSPlatform.WINDOWS;
          _name = deviceInfo.computerName;
          _hardware = deviceInfo.productName;
          _hardwareBrand = deviceInfo.registeredOwner;
          _serialNumber = deviceInfo.deviceId;
        }

        else if (Platform.isMacOS) {
          var deviceInfo = await DeviceInfoPlugin().macOsInfo;

          _osPlatform = OSPlatform.MACOS;
          _name = deviceInfo.computerName;
          _hardware = deviceInfo.model;
          _hardwareBrand = "APPLE";
          _serialNumber = deviceInfo.systemGUID?? "";
        }
        else if (Platform.isLinux) {
          var deviceInfo = await DeviceInfoPlugin().linuxInfo;

          _osPlatform = OSPlatform.LINUX;
          _name = deviceInfo.prettyName;
          _hardware = deviceInfo.variant?? "";
          _hardwareBrand = "";
          _serialNumber = deviceInfo.machineId?? "";
        }
      }
      else if (isPlatformMobile) {
        // TODO In the future, detect if its tablet or phone
        _hardwarePlatform = HardwarePlatform.PHONE;

        if (Platform.isAndroid) {
          var deviceInfo = await DeviceInfoPlugin().androidInfo;

          _osPlatform = OSPlatform.ANDROID;
          _name = deviceInfo.host;
          _hardware = deviceInfo.hardware;
          _hardwareBrand = deviceInfo.brand;
          _serialNumber = deviceInfo.serialNumber;
        }
        else if (Platform.isIOS) {
          var deviceInfo = await DeviceInfoPlugin().iosInfo;

          _osPlatform = OSPlatform.IOS;
          _name = deviceInfo.systemName?? "";
          _hardware = deviceInfo.model?? "";
          _hardwareBrand = "APPLE";
          _serialNumber = deviceInfo.identifierForVendor?? "";
        }
        else if (Platform.isFuchsia)
          _osPlatform = OSPlatform.FUCHSIA;

        // OS Version
        try {
          _osVersion = Platform.operatingSystemVersion;
        }
        catch (_) {}
      }
    }
    catch(ex) {
      LoggingUtils.error("DeviceUtils", "Error detecting hardware and OS platforms!");
    }
  }
}
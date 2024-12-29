import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

// import 'package:flutter_hms_gms_availability/flutter_hms_gms_availability.dart';

class AppInfo {
  AppInfo({
    this.appId = '',
    this.appVersion = '',
    this.buildNumber = '',
    this.platform = '',
    this.deviceModel = '',
    this.deviceVersion = '',
    this.deviceUUID = '',
    this.provider = '',
  });

  final String appId;
  final String appVersion;
  final String buildNumber;
  final String platform;
  final String? deviceModel;
  final String? deviceUUID;
  final String? deviceVersion;
  final String? provider;

  static Future<AppInfo> init() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    // bool isGMSAvailable = await FlutterHmsGmsAvailability.isGmsAvailable;

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

      return AppInfo(
        appId: packageInfo.packageName,
        appVersion: packageInfo.version,
        buildNumber: packageInfo.buildNumber,
        platform: "android",
        deviceModel: "${androidInfo.brand}_${androidInfo.model}",
        deviceVersion: androidInfo.version.release,
        deviceUUID: androidInfo.id,
        provider: "gms",
      );
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;

      return AppInfo(
        appId: packageInfo.packageName,
        appVersion: packageInfo.version,
        buildNumber: packageInfo.buildNumber,
        platform: "ios",
        deviceModel: iosInfo.name,
        deviceVersion: iosInfo.utsname.release,
        deviceUUID: iosInfo.identifierForVendor,
        provider: "apple",
      );
    }

    return AppInfo(
      appId: packageInfo.packageName,
      appVersion: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
      platform: "unknown",
      provider: "unknown",
    );
  }
}

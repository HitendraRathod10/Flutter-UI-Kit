import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

Future<bool> isTablet(BuildContext context) async {
  bool isTab = false;
  if (Platform.isIOS) {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    if (iosInfo.model?.toLowerCase() == "ipad") {
      isTab = true;
    } else {
      isTab = false;
    }
    return isTab;
  } else {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    if (shortestSide > 600) {
      isTab = true;
    } else {
      isTab = false;
    }
    return isTab;
  }
}

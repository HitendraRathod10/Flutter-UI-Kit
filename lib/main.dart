import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Onboarding/onboarding_screen.dart';
import 'package:flutter_ui_kit/Register/register_screen.dart';
import 'package:flutter_ui_kit/Splash/splash_screen.dart';
import 'package:flutter_ui_kit/Splash/welcome_screen.dart';
import 'package:flutter_ui_kit/utils/app_color.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

import 'Home/bottom_navigation_bar_screen.dart';
import 'Home/home_provider.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
void main() {
  runApp(const MyApp());
  HttpOverrides.global = MyHttpOverrides();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UI Kit',
        home: SplashScreen(),
      ),
    );
  }
}

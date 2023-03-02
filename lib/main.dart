import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Splash/splash_screen.dart';
import 'package:flutter_ui_kit/utils/pallete.dart';
import 'package:flutter_ui_kit/utils/theme_controller.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
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
    ThemeController themeController = Get.put(ThemeController());
    return GetX<ThemeController>(
        init: themeController,
        builder: (context) {
          print('themeController.isDarkMode.value ${themeController.isDarkMode.value}');
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => HomeProvider()),
            ],
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'UI Kit',
              home: const SplashScreen(),
              theme: lightThemeData,
              darkTheme: darkThemeData,
              themeMode: themeController.isDarkMode.value
                  ? ThemeMode.dark
                  : ThemeMode.light,
            ),
          );
        });
  }
}

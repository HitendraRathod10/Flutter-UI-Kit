import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/languages.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Modules/real_estate/Home/home_provider.dart';
import 'Modules/real_estate/Splash/splash_screen.dart';
import 'Modules/real_estate/l10n/l10n.dart';
import 'Modules/real_estate/utils/pallete.dart';
import 'Modules/real_estate/utils/theme_controller.dart';

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

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeController themeController = Get.put(ThemeController());
  String lan = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return GetX<ThemeController>(
        init: themeController,
        builder: (context) {
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
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate
              ],
              translations: Languages(),
              locale: Locale(lan),
            ),
          );
        });
  }

  void getData() async {
    String l1 = await themeController.changeLanguageName();
    setState(() {
      lan = l1;
    });
  }
}

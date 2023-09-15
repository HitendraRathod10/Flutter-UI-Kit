import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Splash/splash_screen.dart';
import 'package:flutter_ui_kit/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
          print("laggg123 ::: ${themeController.name.value}");
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
              supportedLocales: L10n.allLanguages,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate
              ],
              // fallbackLocale: const Locale('en', 'US'),
              // translations: Languages(),
              locale: Locale(themeController.name.value),
            ),
          );
        });
  }
}


class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'hi': {
      "test":"घर"
    },
    'gu': {
      "test":"ઘર"
    },
    'en': {
      "test":"Home"
    },
    'mr':{
      "test":"मुख्यपृष्ठ"
    },
    'pa':{
      "test":"ਘਰ"
    }
  };
}
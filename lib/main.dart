import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

import 'Modules/real_estate/Home/home_provider.dart';
import 'Modules/real_estate/Splash/splash_screen.dart';
import 'Modules/real_estate/l10n/l10n.dart';
import 'Modules/real_estate/utils/pallete.dart';
import 'Modules/real_estate/utils/theme_controller.dart';
import 'module_list.dart';

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
          print("laggg12 ::: ${themeController.name.value}");
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => HomeProvider()),
            ],
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              // builder: (context, child) {
              //   return MediaQuery(
              //     child: child!,
              //     data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              //   );
              // },
              title: 'UI Kit',
              home: Module_list(),
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
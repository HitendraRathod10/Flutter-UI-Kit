import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Splash/splash_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
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
    return ResponsiveSizer(
      builder: (BuildContext , Orientation , ScreenType ) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          home: const SplashScreen(),
        );
      },maxTabletWidth: 900,
    );
  }
}


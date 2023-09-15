import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageController extends GetxController {

  var lag = "en".obs;


  languageProvider() {
    setInitialLocale();
  }

  void setLocale(String languageCode) {
    lag.value  = languageCode;
    print("lagg ${lag.value}");
    // _locale = Locale(languageCode);
    // print('_locale :: ${_locale} languageCode :: $languageCode');
    // notifyChildrens();
  }

  Locale get locale => Locale(lag.value);

  setInitialLocale() {
    String? language;
    if(language!='' || language!.isNotEmpty) {
      // _locale =  Locale(language!);
    }else{
      // print("else in setInitialLocale ${_locale.languageCode}");
    }
    notifyChildrens();
  }
}

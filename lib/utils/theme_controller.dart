import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
  var isDarkMode = SchedulerBinding.instance.platformDispatcher.platformBrightness.name == Brightness.dark ?  true.obs : false.obs;

  var name = 'en'.obs;
  changeThemeMode(Object? value) async{
    if(value == ThemeMode.dark){
      isDarkMode.value = true;
    }else{
      isDarkMode.value = false;
    }
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('mode', isDarkMode.value);
    notifyChildrens();
  }
  changeLanguageName (String? langName){
    name.value = langName!;
    print("object:::: ${name.value}");
    notifyChildrens();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/app_font.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../real_estate/utils/theme_controller.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({Key? key}) : super(key: key);

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  bool _light = false;
  dynamic themeMode;
  ThemeController themeController = Get.put(ThemeController());

  void setThemeButton() async{
    var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    final prefs = await SharedPreferences.getInstance();
    themeMode = prefs.getString('themeMode') ?? ThemeMode.system ;
    print("themeModea ::: $themeMode");
    print("themeModeb ::: ${prefs.getString('themeMode')}");
    print("themeModec ::: ${ThemeMode.system}");
    if(themeMode == ThemeMode.system.toString()){
      themeController.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
    }
    themeMode = themeMode == ThemeMode.system.toString() ? ThemeMode.system : themeMode == ThemeMode.dark.toString() ? ThemeMode.dark : ThemeMode.light;
    debugPrint("themeModed $themeMode");
    if(themeMode == ThemeMode.dark) {
      _light = true;
      setState(() {});
    }else{
      _light = false;
      setState(() {});
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setThemeButton();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appScreenBackground,
      appBar: AppBar(
        title: const Text(
          "Change theme",
          style: TextStyle(
              color: Colors.white, fontFamily: AppFont.bold, fontSize: 20),
        ),
        backgroundColor: AppColor.primary_color,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 00, 15, 00),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Dark theme",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontFamily: AppFont.medium,
                      ),
                ),
                const Spacer(),
                Switch(
                    value: _light,
                    onChanged: (toggle) async {
                      setState(() {
                        _light = toggle;
                        debugPrint("_light $_light");
                      });
                      if (_light == true) {
                        final prefs = await SharedPreferences.getInstance();
                        themeMode = ThemeMode.dark;
                        prefs.setString('themeMode', themeMode.toString());
                        debugPrint("_light $_light");
                        setState(() {});
                        themeController.changeThemeMode(ThemeMode.dark);
                      } else {
                        final prefs = await SharedPreferences.getInstance();
                        themeMode = ThemeMode.light;
                        prefs.setString('themeMode', themeMode.toString());
                        setState(() {});
                        themeController.changeThemeMode(ThemeMode.light);
                      }
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/theme_controller.dart';

class DisplayThemeMode extends StatefulWidget {
  const DisplayThemeMode({Key? key}) : super(key: key);

  @override
  State<DisplayThemeMode> createState() => _DisplayThemeModeState();
}

class _DisplayThemeModeState extends State<DisplayThemeMode> {
  ThemeController themeController = Get.put(ThemeController());
  final prefs = SharedPreferences.getInstance();
  dynamic themeMode;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setThemeButton();
  }

  void setThemeButton() async{
    var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    final prefs = await SharedPreferences.getInstance();
    themeMode = prefs.getString('themeMode') ?? ThemeMode.system ;
    if(themeMode == ThemeMode.system.toString()){
      themeController.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
    }
    themeMode = themeMode == ThemeMode.system.toString() ? ThemeMode.system : themeMode == ThemeMode.dark.toString() ? ThemeMode.dark : ThemeMode.light;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Mode', style: Theme.of(context).textTheme.titleLarge?.copyWith()),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Theme.of(context).iconTheme.color)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Text('Choose how your Flutter UI Kit experience looks for this device...',style: Theme.of(context).textTheme.headline3),
              const SizedBox(height: 15),
              RadioListTile(
                title: const Text('Device settings'),
                groupValue: themeMode,
                value: ThemeMode.system,
                onChanged: (value) async{
                  final prefs = await SharedPreferences.getInstance();
                  themeMode = ThemeMode.system;
                  prefs.setString('themeMode',themeMode.toString());
                  setState(() {});
                  themeController.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
                }
              ),
              RadioListTile(
                title: const Text('Dark Mode'),
                groupValue: themeMode,
                value: ThemeMode.dark,
                onChanged: (value) async{
                  final prefs = await SharedPreferences.getInstance();
                  themeMode = ThemeMode.dark;
                  prefs.setString('themeMode',themeMode.toString());
                  setState(() {});
                  themeController.changeThemeMode(value);
                }
              ),
              RadioListTile(
                title: const Text('Light Mode'),
                groupValue: themeMode,
                value: ThemeMode.light,
                onChanged: (value) async{
                  final prefs = await SharedPreferences.getInstance();
                  themeMode = ThemeMode.light;
                  prefs.setString('themeMode',themeMode.toString());
                  setState(() {});
                  themeController.changeThemeMode(value);
                }
              ),
              const SizedBox(height: 15),
              Text("If you cheese Device settings, this app will use the mode that's already selected in this device's settings.",style: Theme.of(context).textTheme.headline3),
            ]
        ),
      ),
    );
  }
}

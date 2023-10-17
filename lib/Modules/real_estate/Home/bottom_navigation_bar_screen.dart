import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/app_color.dart';
import '../utils/theme_controller.dart';
import 'home_provider.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  ThemeController themeController = Get.put(ThemeController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<HomeProvider>(context, listen: false).getRecommaned('Recommaned');
    // Provider.of<HomeProvider>(context,listen: false).selectedIndex = 0;
  }
  void setThemeButton() async {
    var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    final prefs = await SharedPreferences.getInstance();
    var themeMode = prefs.getString('themeMode') ?? ThemeMode.system;
    if (themeMode == ThemeMode.system.toString()) {
      prefs.setString('themeMode',themeMode.toString());
      themeController.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
    }/*else{
      prefs.setString('themeMode',isDarkMode ? ThemeMode.dark.toString() : ThemeMode.light.toString());
      themeController.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
    }*/
  }

  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 1), (timer) => setThemeButton());
    return Scaffold(
      bottomNavigationBar: Consumer<HomeProvider>(
        builder: (context, snapshot, _) {
          return GNav(
              tabBorderRadius: 16,
              backgroundColor: /*AppColor.appBlueColor.withOpacity(0.7),*/Theme.of(context).bottomAppBarColor.withOpacity(0.7),
              gap: 5,
              // color: Theme.of(context).primaryColor,
              activeColor: AppColor.white,
              iconSize: 24,
              tabBackgroundColor: AppColor.appBlueColor,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              tabMargin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              onTabChange: snapshot.onItemTapped,
              selectedIndex: snapshot.selectedIndex,
              textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColor.white),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'home'.tr,
                ),
                GButton(
                  icon: Icons.location_on_outlined,
                  text: 'location'.tr,
                ),
                GButton(
                  icon: Icons.chat,
                  text: "chat".tr,
                ),
                GButton(
                  icon: Icons.person,
                  text: 'profile'.tr,
                )
              ]
          );
        }
      ),
      body: Consumer<HomeProvider>(
        builder: (context, snapshot,_) {
          return snapshot.buildScreen[snapshot.selectedIndex];
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Onboarding/onboarding_screen.dart';
import '../utils/app_color.dart';
import '../utils/app_image.dart';
import '../utils/theme_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  ThemeController themeController = Get.put(ThemeController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setThemeButton();
    Future.delayed(const Duration(seconds: 4),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
    });
  }
  void setThemeButton() async {
    Get.updateLocale(Locale(await themeController.changeLanguageName()));
    var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    final prefs = await SharedPreferences.getInstance();
    var themeMode = prefs.getString('themeMode') ?? ThemeMode.system;
    if (themeMode == ThemeMode.system.toString()) {
      prefs.setString('themeMode',themeMode.toString());
      themeController.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
    }else{
      prefs.setString('themeMode',isDarkMode ? ThemeMode.dark.toString() : ThemeMode.light.toString());
      themeController.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.appBlueColor.withOpacity(0.7),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(20)),
                //   border: Border.all(color: Colors.black),
                  color: Colors.white.withOpacity(0.3)
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: ClipRRect(
                    // borderRadius: BorderRadius.circular(20),
                    child: Image.asset(AppImage.splashImage,height: 130,width: 130,fit: BoxFit.fill)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Real Estate Hub',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ))
          ],
        ),
      ),
    );
  }
  /*Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.network("https://cdn-icons-png.flaticon.com/512/3456/3456978.png"),
            const Text("Real Estate App")
        ],
      )
    );
  }*/
}


import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Onboarding/onBoarding_screen.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_image.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>onBoarding_screen())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppColor.primary_color,
        child: Image.asset(AppImage.medical_splashImage,fit: BoxFit.contain,),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Onboarding/onboarding_screen.dart';
import 'package:flutter_ui_kit/utils/app_color.dart';
import 'package:flutter_ui_kit/utils/app_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
    });
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

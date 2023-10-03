import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Login/login_screen.dart';
import 'package:flutter_ui_kit/Modules/medical/Onboarding/onBoardingControllar.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_image.dart';
import 'package:get/get.dart';

import '../../real_estate/Onboarding/onboarding_controller.dart';

class onBoarding_screen extends StatefulWidget  {
  const onBoarding_screen({super.key});

  @override
  State<onBoarding_screen> createState() => _onBoarding_screenState();
}

class _onBoarding_screenState extends State<onBoarding_screen> with TickerProviderStateMixin {
  final onBoardinControllar = Get.put(OnBoardingControllar());
  late AnimationController animation;
  late Animation<double> _fadeInFadeOut;
  late AnimationController controller;
  late Animation<int> _characterCount;
String _currentString = "Medical App";
  // final _controller = OnBoardingController();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    animation = AnimationController(vsync: this, duration: Duration(seconds: 1),);
    _fadeInFadeOut = CurvedAnimation(
      parent: animation,
        curve: Interval(0.0, 1.0)
    );
    animation.forward();
    controller = new AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _characterCount = new StepTween(begin: 0, end: _currentString.length)
        .animate(new CurvedAnimation(parent: controller, curve: Curves.easeIn));

    Future.delayed(Duration(milliseconds: 500),()=> controller.forward());
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(() => Column(
          children: [
Padding(
  padding: EdgeInsets.only(top: 40),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizeTransition(
      sizeFactor: _fadeInFadeOut,
      child: ClipRRect(borderRadius: BorderRadius.circular(18),child: Image.asset(AppImage.medical_splashImage,height: 50,width: 50,))),
      SizedBox(width: 15,),
      AnimatedBuilder(
      animation: _characterCount,
      builder: (BuildContext context, Widget? child) {    String text = _currentString.substring(0, _characterCount.value);
      return new Text(text,style: TextStyle(color: AppColor.primary_color,fontSize: 25,fontWeight: FontWeight.bold),);
      },
      )
    ],
  ),
),
            
            
            Expanded(

          child:    PageView.builder(
                  controller: onBoardinControllar.pageController,
                  onPageChanged: onBoardinControllar.currentIndex,
                  itemCount: onBoardinControllar.onboardingPages.length,
                  padEnds: false,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            border:
                            Border.all(width: 02, color: AppColor.white),
                            borderRadius: BorderRadius.circular(05)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            onBoardinControllar.onboardingPages[index],
                            fit: BoxFit.cover,
                            // width: double.infinity,
                            // height: MediaQuery.of(context).size.height/3,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0,right: 20,left: 20),
              child: Row(
                children: [
                  DotsIndicator(
                    dotsCount: 3,
                    position: onBoardinControllar.currentIndex.value,
                    decorator: DotsDecorator(
                      size:  Size.square(9.0),
                      activeSize:  Size(18.0, 9.0),
                      activeColor: AppColor.primary_color,
                      activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_Screen()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 22,vertical: 8.0),
                      decoration: BoxDecoration(
                        color: onBoardinControllar.currentIndex.value == 2 ? AppColor.primary_color : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color:AppColor.primary_color)
                      ),
                      child: Text(onBoardinControllar.currentIndex.value == 2 ?"Next":"Skip",style: TextStyle(color:onBoardinControllar.currentIndex.value == 2 ? Colors.white : AppColor.primary_color,fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}

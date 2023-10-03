import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_image.dart';
import 'package:get/get.dart';

class OnBoardingControllar extends GetxController{
  var currentIndex = 0.obs;
  // var selectedPageIndex = 0.obs;
  bool get isLastPage => currentIndex.value == onboardingPages.length - 1;
  var pageController = PageController();
  List<String> onboardingPages = [
    AppImage.medical_onBorading3,AppImage.medical_onBorading2,AppImage.medical_onBorading1
  ];
}
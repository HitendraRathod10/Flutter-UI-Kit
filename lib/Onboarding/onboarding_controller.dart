import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import '../Login/login_screen.dart';
import '../utils/app_color.dart';
import '../utils/app_image.dart';
import 'onboarding_info_model.dart';


class OnBoardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      Get.off(const LoginScreen());
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.easeInOut);
    }
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('https://images.pexels.com/photos/1643383/pexels-photo-1643383.jpeg?auto=compress&cs=tinysrgb&w=600', 'BUY A HOME',
        'Find, Buy & Own Your Dream Home \n',AppColor.grey),
    OnboardingInfo('https://images.pexels.com/photos/277667/pexels-photo-277667.jpeg?auto=compress&cs=tinysrgb&w=600', 'RESIDENTIAL PLOTS/LAND',
        'Explore Residential, Agricultural and Industrial Plots/Land',AppColor.grey),
    OnboardingInfo('https://images.unsplash.com/photo-1630060041646-3ba002aa7d37?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbW1lcmNpYWwlMjByZWFsJTIwZXN0YXRlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', 'COMMERCIAL SPACES',
        'Choose from a wide variety of commercial properties',AppColor.grey),
  ];
}
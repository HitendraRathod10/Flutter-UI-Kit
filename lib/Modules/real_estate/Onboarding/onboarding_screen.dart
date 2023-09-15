// import 'package:employee_attendance_app/login/controller/onboarding_controller.dart';
// import 'package:employee_attendance_app/utils/app_colors.dart';
// import 'package:employee_attendance_app/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'login_screen.dart';
import '../Login/login_screen.dart';
import '../utils/app_color.dart';
import 'onboarding_controller.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _controller = OnBoardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBlueColor.withOpacity(0.7),
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: _controller.pageController,
                onPageChanged: _controller.selectedPageIndex,
                itemCount: _controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 00, 20, 00),
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 02, color: AppColor.white),
                              borderRadius: BorderRadius.circular(05)),
                          child: Image.network(
                            _controller.onboardingPages[index].imageAsset,
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height/3,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        _controller.onboardingPages[index].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: Text(
                          _controller.onboardingPages[index].description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: AppColor.white),
                        ),
                      ),
                    ],
                  );
                }),
            Positioned(
              bottom: 10,
              left: 05,
              child: GestureDetector(
                onTap: () {
                  Get.off(const LoginScreen());
                },
                child: Container(
                    height: 40,
                    width: 70,
                    child: Center(child: Obx(() {
                      return Text(
                        _controller.isLastPage ? '' : 'Skip',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w500, color: AppColor.white),
                      );
                    }))),
              ),
            ),
            Positioned(
              bottom: 80,
              left: 00,
              right: 00,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _controller.onboardingPages.length,
                  (index) => Obx(() {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      width: 07,
                      height: 07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(05),
                        color: _controller.selectedPageIndex.value == index
                            ? AppColor.white
                            : AppColor.grey.withOpacity(0.7),
                        shape: BoxShape.rectangle,
                      ),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
              right: 05,
              bottom: 10,
              child: Obx(() {
                return GestureDetector(
                  onTap: _controller.forwardAction,
                  child: Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.white, width: 02),
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Text(
                        _controller.isLastPage ? 'Start' : 'Next',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w500, color: AppColor.white),
                      ))),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

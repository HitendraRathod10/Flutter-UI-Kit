import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Forgot%20password/forgot_password_screen.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_image.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/app_font.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/check_device.dart';
import 'package:flutter_ui_kit/module_list.dart';

import '../homeScreen/home_screen.dart';
import '../signUp/signUp_screen.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<int> _characterCount;
  bool _passwordInVisible = true;
  String _currentString = "Welcome, \nBack";
  bool? isTab;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _characterCount = new StepTween(begin: 0, end: _currentString.length)
        .animate(new CurvedAnimation(parent: controller, curve: Curves.easeIn));

    controller.forward();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      methodToCheckDevice();
    });

    // controller.addListener(() {
    //   if (controller.isCompleted) {
    //     controller.forward();
    //   }
    //   if(controller.isDismissed){
    //     controller.forward();
    //   }
    // });
  }
  methodToCheckDevice() async {
    isTab = await isTablet(context);
    setState(() {});
    debugPrint("isTab bool in login:: $isTab");
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => Module_list()),
            (route) => false);
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: AppColor.appScreenBackground,
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: isTab == true ? MediaQuery.of(context).size.height * 1.1 : MediaQuery.of(context).size.height,
                    child: Stack(
                      children: [
                        ClipPath(
                          clipper: customClipper(),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 2.5,
                            color: AppColor.primary_color.withAlpha(20),
                          ),
                        ),
                        ClipPath(
                          clipper: customClipper(),
                          child: Container(
                              padding: EdgeInsets.only(top: 100, left: 20),
                              height: MediaQuery.of(context).size.height / 2.8,
                              width: MediaQuery.of(context).size.width,
                              color: AppColor.primary_color,
                              child: AnimatedBuilder(
                                  animation: _characterCount,
                                  builder:
                                      (BuildContext context, Widget? child) {
                                    String text = _currentString.substring(
                                        0, _characterCount.value);
                                    return Text(
                                      text,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 32,
                                          fontFamily: AppFont.bold,),
                                    );
                                  })),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height / 7,
                      right: 15,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          AppImage.medical_hospital,
                          height: MediaQuery.of(context).size.width / 2.5,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      )),
                  Positioned(
                    top: isTab == true ? MediaQuery.of(context).size.height / 2.4 : MediaQuery.of(context).size.height / 3,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                                color: AppColor.primary_color,
                                fontFamily: AppFont.bold,
                                fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 8),
                                hintText: "Email Id",
                                hintStyle: TextStyle(fontFamily: AppFont.medium,),
                                errorMaxLines: 2,
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.primary_color),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.primary_color),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 15),
                            child: TextFormField(
                              obscureText: _passwordInVisible,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 8),
                                hintText: "Password",
                                hintStyle: TextStyle(fontFamily: AppFont.medium,),
                                errorMaxLines: 2,
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.primary_color),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColor.primary_color),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordInVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    //change icon based on boolean value
                                    color: AppColor.primary_color,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordInVisible =
                                          !_passwordInVisible; //change boolean value
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 8),
                            child: Row(
                              children: [
                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ForgotPasswordScreen()));
                                  },
                                  child: Text(
                                    "Forget Your Password?",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15,fontFamily: AppFont.medium,),
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Home_Screen())),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 18.0),
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                  child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: AppFont.bold,),
                              )),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(colors: [
                                    AppColor.primary_color,
                                    AppColor.primary_color.withAlpha(80),
                                  ]),
                                  boxShadow: [
                                    BoxShadow(
                                        color: AppColor.primary_color
                                            .withAlpha(20),
                                        blurRadius: 10,
                                        offset: Offset(3, 10))
                                  ]),
                            ),
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 01,
                                color: Colors.grey,
                                width: MediaQuery.of(context).size.width / 4,
                              ),
                              const Text(
                                "  Or Login with  ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15,fontFamily: AppFont.medium,),
                              ),
                              Container(
                                height: 01,
                                color: Colors.grey,
                                width: MediaQuery.of(context).size.width / 4,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(AppImage.medical_google),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Image.network(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpmRUoTYCySOUlIBKXiayaFeknzNzusP_LmA&usqp=CAU"),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: Image.network(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn8RXi6i8DyMBuaoQEuEYqSBjMEXOeYFqe3Q&usqp=CAU"),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => SignUp_Screen()));
                            },
                            child: Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account yet?",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(fontFamily: AppFont.medium,),
                                ),
                                Text(" SignUp",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                            color: AppColor.primary_color,
                                            fontFamily: AppFont.semiBold,
                                            fontSize: 18)),
                              ],
                            )),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class customClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip

    var path = new Path();
    path.lineTo(0, size.height / 1.8);
    var startPoint = Offset(size.width / 3.5, size.height);
    var endPoint = Offset(size.width / 2, size.height / 2);
    path.quadraticBezierTo(
        startPoint.dx, startPoint.dy, endPoint.dx, endPoint.dy);

    var start_Point = Offset(size.width - (size.width / 3), size.height / 2);
    var end_Point = Offset(size.width, size.height / 7);
    path.quadraticBezierTo(
        start_Point.dx, start_Point.dy, end_Point.dx, end_Point.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

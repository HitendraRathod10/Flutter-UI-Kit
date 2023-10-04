import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_image.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<int> _characterCount;
  String _currentString = "Forget password";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _characterCount = StepTween(begin: 0, end: _currentString.length + 1)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));
    controller.forward().then((value) {
      controller.repeat();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
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
                            padding: const EdgeInsets.only(top: 100, left: 20),
                            height: MediaQuery.of(context).size.height / 2.8,
                            width: MediaQuery.of(context).size.width,
                            color: AppColor.primary_color,
                            child: AnimatedBuilder(
                                animation: _characterCount,
                                builder: (BuildContext context, Widget? child) {
                                  String text = _currentString.substring(
                                      0, _characterCount.value);
                                  return Text(
                                    text,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
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
                  top: MediaQuery.of(context).size.height / 3,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Forget Password",
                          style: TextStyle(
                              color: AppColor.primary_color,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 8),
                              hintText: "Email Id",
                              errorMaxLines: 2,
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColor.primary_color),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColor.primary_color),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            padding: const EdgeInsets.symmetric(vertical: 18.0),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(colors: [
                                  AppColor.primary_color,
                                  AppColor.primary_color.withAlpha(80),
                                ]),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          AppColor.primary_color.withAlpha(20),
                                      blurRadius: 10,
                                      offset: const Offset(3, 10))
                                ]),
                            child: const Center(
                                child: Text(
                              "Reset Password",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
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

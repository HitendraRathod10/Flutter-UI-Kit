import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/homeScreen/home_screen.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/app_font.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool currentPasswordInVisible = true;
  bool newPasswordInVisible = true;
  bool confirmNewPasswordInVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appScreenBackground,
      appBar: AppBar(
        title: Text(
          "change password".tr,
          style: TextStyle(
              color: Colors.white, fontFamily: AppFont.bold, fontSize: 20),
        ),
        backgroundColor: AppColor.primary_color,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            textFormField(
                labelText: "current password".tr,
                passwordShow: currentPasswordInVisible),
            const SizedBox(
              height: 15,
            ),
            textFormField(
                labelText: "new password".tr, passwordShow: newPasswordInVisible),
            const SizedBox(
              height: 15,
            ),
            textFormField(
                labelText: "confirm new password".tr,
                passwordShow: confirmNewPasswordInVisible),
            const SizedBox(
              height: 60,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "password changed successfully.".tr,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: AppColor.primary_color,
                      textColor: Colors.white,
                      fontSize: 16.0);
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const Home_Screen()),
                      (route) => false);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(colors: [
                        AppColor.primary_color,
                        AppColor.primary_color.withAlpha(80),
                      ]),
                      boxShadow: [
                        BoxShadow(
                            color: AppColor.primary_color.withAlpha(20),
                            blurRadius: 10,
                            offset: const Offset(3, 10))
                      ]),
                  child: Center(
                    child: Text(
                      "change password".tr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: AppFont.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textFormField({String? labelText, bool? passwordShow}) {
    return TextFormField(
      cursorColor: AppColor.primary_color,
      textInputAction: TextInputAction.next,
      obscureText: passwordShow!,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(5),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.primary_color)),
        labelText: labelText,
        labelStyle: const TextStyle(
            color: AppColor.primary_color, fontFamily: AppFont.regular),
        suffixIcon: IconButton(
          icon: Icon(
            passwordShow ? Icons.visibility : Icons.visibility_off,
            color: AppColor.primary_color,
          ),
          onPressed: () {
            if (labelText == "Current Password") {
              currentPasswordInVisible = !currentPasswordInVisible;
            } else if (labelText == "New Password") {
              newPasswordInVisible = !newPasswordInVisible;
            } else {
              confirmNewPasswordInVisible = !confirmNewPasswordInVisible;
            }
            setState(() {});
          },
        ),
      ),
    );
  }
}

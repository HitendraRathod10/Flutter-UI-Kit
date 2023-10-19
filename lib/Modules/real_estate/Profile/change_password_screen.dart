import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/app_font.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../utils/app_color.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("change password".tr,style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: AppFont.semiBold)),
        // backgroundColor: AppColor.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Theme.of(context).iconTheme.color)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 00),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("current password".tr,style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: AppFont.medium),),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context).primaryColorLight,
                border: Border.all(
                  color: Theme.of(context).primaryColorLight,
                  width: 1.5,
                ),
              ),
              height: 50,
              child: TextFormField(
                style: const TextStyle(color: AppColor.black),
                decoration: InputDecoration(
                    filled: true,
                    // fillColor: Theme.of(context).hintColor,
                    hintText: "type current password here".tr,
                    hintStyle: TextStyle(fontFamily: AppFont.medium),
                    contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    border:
                    OutlineInputBorder(borderSide: BorderSide.none)),
                obscureText: true,
                cursorColor: AppColor.appBlueColor,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter required fields';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text("new password".tr,style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: AppFont.medium),),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context).primaryColorLight,
                border: Border.all(
                  color: Theme.of(context).primaryColorLight,
                  width: 1.5,
                ),
              ),
              height: 50,
              child: TextFormField(
                style: const TextStyle(color: AppColor.black),
                decoration: InputDecoration(
                    filled: true,
                    // fillColor: Theme.of(context).hintColor,
                    contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    hintText: "type new password here".tr,
                    hintStyle: TextStyle(fontFamily: AppFont.medium),
                    border:
                    OutlineInputBorder(borderSide: BorderSide.none)),
                obscureText: true,
                cursorColor: AppColor.appBlueColor,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter required fields';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text("confirm new password".tr,style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: AppFont.medium),),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context).primaryColorLight,
                border: Border.all(
                  color: Theme.of(context).primaryColorLight,
                  width: 1.5,
                ),
              ),
              height: 50,
              child: TextFormField(
                style: const TextStyle(color: AppColor.black),
                decoration: InputDecoration(
                    filled: true,
                    // fillColor: Theme.of(context).hintColor,
                    contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    hintText: "type confirm new password here".tr,
                    hintStyle: TextStyle(fontFamily: AppFont.medium),
                    border:
                    OutlineInputBorder(borderSide: BorderSide.none)),
                obscureText: true,
                cursorColor: AppColor.appBlueColor,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter required fields';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
                Fluttertoast.showToast(
                    msg:
                    "Password changes successfully.",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: AppColor.appBlueColor,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).buttonTheme.colorScheme?.background
                ),
                child: Center(
                    child: Text("update password".tr,
                      style: TextStyle(color: AppColor.white,fontSize: 20,fontFamily: AppFont.medium),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

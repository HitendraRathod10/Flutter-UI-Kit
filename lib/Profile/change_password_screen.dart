import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/utils/app_color.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text("Change password",style: TextStyle(color: AppColor.black)),
        backgroundColor: AppColor.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios, color: AppColor.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 00),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Current Password",style: TextStyle(color: AppColor.black,fontWeight: FontWeight.w500),),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                style: const TextStyle(color: AppColor.black),
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Type Current Password Here",
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
            const Text("New Password",style: TextStyle(color: AppColor.black,fontWeight: FontWeight.w500),),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                style: const TextStyle(color: AppColor.black),
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Type New Password Here",
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
            const Text("Confirm New Password",style: TextStyle(color: AppColor.black,fontWeight: FontWeight.w500),),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                style: const TextStyle(color: AppColor.black),
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Type Confirm New Password Here",
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
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.appBlueColor
              ),
              child: const Center(
                  child: Text("Update Password",
                    style: TextStyle(color: AppColor.white,fontSize: 25,fontWeight: FontWeight.w700),)),
            )
          ],
        ),
      ),
    );
  }
}

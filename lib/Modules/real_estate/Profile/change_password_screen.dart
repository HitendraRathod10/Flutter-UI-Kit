import 'package:flutter/material.dart';

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
        title: Text("Change password",style: Theme.of(context).textTheme.titleLarge?.copyWith()),
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
            Text(" Current Password",style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),),
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
                    hintText: "Type Current Password Here",
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
            Text(" New Password",style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),),
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
            Text(" Confirm New Password",style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),),
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
                  color: Theme.of(context).buttonTheme.colorScheme?.background
              ),
              child: const Center(
                  child: Text("Update Password",
                    style: TextStyle(color: AppColor.white,fontSize: 20,fontWeight: FontWeight.w500),)),
            )
          ],
        ),
      ),
    );
  }
}

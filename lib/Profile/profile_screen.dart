import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Profile/app_settings_screen.dart';
import 'package:flutter_ui_kit/Profile/bookmarks_screen.dart';
import 'package:flutter_ui_kit/Profile/change_password_screen.dart';
import 'package:flutter_ui_kit/Profile/edit_profile_screen.dart';
import 'package:flutter_ui_kit/Profile/language_screen.dart';
import 'package:flutter_ui_kit/Profile/notification_screen.dart';

import '../utils/app_color.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        title: const Text(
          "Profile",
          style: TextStyle(color: AppColor.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditProfileScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 00),
              child: Card(
                color: Colors.grey.shade200,
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Row(
                  children: const [
                    Icon(Icons.person),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Edit Profile"),
                    Spacer(),
                    Icon(Icons.chevron_right)
                  ],
                ),
              )),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChangePasswordScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 00, 10, 00),
              child: Card(
                  color: AppColor.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: const [
                        Icon(Icons.password),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Change Password"),
                        Spacer(),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  )),
            ),
          ),
          /*InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 00, 10, 00),
              child: Card(
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: const [
                        Icon(Icons.notifications),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Notifications"),
                        Spacer(),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  )),
            ),
          ),*/
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const BookmarksScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 00, 10, 00),
              child: Card(
                  color: AppColor.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: const [
                        Icon(Icons.bookmark),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Bookmarks"),
                        Spacer(),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  )),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const LanguageScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 00, 10, 00),
              child: Card(
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: const [
                        Icon(Icons.language),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Language"),
                        Spacer(),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  )),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AppSettingsScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 00, 10, 00),
              child: Card(
                  color: AppColor.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: const [
                        Icon(Icons.settings),
                        SizedBox(
                          width: 10,
                        ),
                        Text("App Settings"),
                        Spacer(),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  )),
            ),
          ),
          InkWell(
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditProfileScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 00, 10, 00),
              child: Card(
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: const [
                        Icon(Icons.power_settings_new),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Logout"),
                        // Spacer(),
                        // Icon(Icons.chevron_right)
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Chat/chat_screen.dart';
import 'package:flutter_ui_kit/Home/home_screen.dart';
import 'package:flutter_ui_kit/Map/map_screen.dart';
import 'package:flutter_ui_kit/Profile/profile_screen.dart';
import 'package:flutter_ui_kit/Splash/splash_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../utils/app_color.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.appBlueColor.withOpacity(0.7),
      appBar: AppBar(
        title: Text("hi"),
      ),
      bottomNavigationBar: GNav(
        // backgroundColor: AppColor.grey.withOpacity(0.1),
          rippleColor: Color(0xFF4E598C).withOpacity(0.1), // tab button ripple color when pressed
          // hoverColor: AppColor.grey, // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 16,
          // tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
          // tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
          // tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
          // curve: Curves.easeOutExpo, // tab animation curves
          // duration: Duration(microseconds: 1000), // tab animation duration
          gap: 5, // the tab button gap between icon and text
          color: AppColor.appBlueColor.withOpacity(0.7), // unselected icon color
          activeColor: AppColor.white, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor: AppColor.appBlueColor.withOpacity(0.9), // selected tab background color
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // navigation bar padding
          tabMargin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          // padding: EdgeInsets.fromLTRB(05, 05, 05, 05),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.location_on_outlined,
              text: 'Location',
            ),
            GButton(
              icon: Icons.chat,
              text: 'Chat',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            )
          ]
      ),
      body: Column(
        children: [
          Text("data")
        ],
      )
    );
  }
}

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/homeScreen/notification.dart';
import 'package:flutter_ui_kit/Modules/medical/homeScreen/profile.dart';
import 'package:flutter_ui_kit/Modules/real_estate/Chat/chat_list_screen.dart';
import 'package:flutter_ui_kit/Modules/real_estate/Home/home_provider.dart';
import 'package:provider/provider.dart';

import 'chat_list.dart';
import 'home_widget.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  final List<Widget> _screens = [
    Home_Widget(),
    Chat_List(),
    Notification_widget(),
    Profile(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE4ECF0),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xFFE4ECF0),
          color: AppColor.primary_color,
          onTap: (int){
           setState(() {
             index = int;
           });
          },
          items: <Widget>[
            Icon(Icons.home,color: Colors.white,),
            Icon(Icons.chat_bubble,color: Colors.white),
            Icon(Icons.notifications_active_rounded,color: Colors.white),
            Icon(Icons.person,color: Colors.white),
          ]),
      body: _screens[index],
    );
  }
}

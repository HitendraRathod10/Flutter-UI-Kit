import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Chat/chat_list_screen.dart';
import 'package:flutter_ui_kit/Home/home_screen.dart';
import 'package:flutter_ui_kit/Map/map_screen.dart';
import 'package:flutter_ui_kit/Profile/profile_screen.dart';

class HomeProvider extends ChangeNotifier{

  int selectedIndex=0;

  List<Widget> buildScreen =
  [
    const HomeScreen(),
    const MapScreen(),
    const ChatListScreen(),
    const ProfileScreen()
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }

}
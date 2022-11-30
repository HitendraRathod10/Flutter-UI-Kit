import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Chat/chat_list_screen.dart';
import 'package:flutter_ui_kit/Home/home_screen.dart';
import 'package:flutter_ui_kit/Map/map_screen.dart';
import 'package:flutter_ui_kit/Profile/profile_screen.dart';
import 'package:flutter_ui_kit/Splash/splash_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../utils/app_color.dart';
import 'home_provider.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<HomeProvider>(context,listen: false).selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Consumer<HomeProvider>(
        builder: (context, snapshot, _) {
          return GNav(
              tabBorderRadius: 16,
              gap: 5,
              color: AppColor.appBlueColor,
              activeColor: AppColor.white,
              iconSize: 24,
              tabBackgroundColor: AppColor.appBlueColor,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              tabMargin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              onTabChange: snapshot.onItemTapped,
              tabs: const [
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
          );
        }
      ),
      body: Consumer<HomeProvider>(
        builder: (context, snapshot,_) {
          return snapshot.buildScreen[snapshot.selectedIndex];
        },
      ),
    );
  }
}

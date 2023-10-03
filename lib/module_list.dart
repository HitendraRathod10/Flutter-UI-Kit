import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/real_estate/Splash/splash_screen.dart';

import 'Modules/medical/Splash/splash_screen.dart';

class Module_list extends StatefulWidget {
  @override
  State<Module_list> createState() => _Module_listState();
}

class _Module_listState extends State<Module_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modules"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          moduleWidget(
              name: "RealeState APP",
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SplashScreen()))),
          moduleWidget(
              name: "Medical APP",
              onTap: () {
                FlutterStatusbarcolor.setStatusBarColor(AppColor.primary_color);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Splash_Screen()));
              }),
        ],
      ),
    );
  }

  Widget moduleWidget(
      {required String name, required GestureTapCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(50),
                blurRadius: 46,
                offset: const Offset(-2, 8),
              )
            ]),
        child: Row(
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 18),
            ),
            Spacer(),
            Icon(Icons.keyboard_arrow_right)
          ],
        ),
      ),
    );
  }
}

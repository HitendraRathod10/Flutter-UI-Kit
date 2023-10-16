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
        title: const Text(
          "Modules",
          style: TextStyle(color: AppColor.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.appGrey,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          moduleWidget(
              name: "Real Estate",
              networkImage:
                  "https://images.unsplash.com/photo-1560518883-ce09059eeffa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cmVhbCUyMGVzdGF0ZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SplashScreen()))),
          moduleWidget(
              name: "Medical",
              networkImage:
                  "https://images.unsplash.com/photo-1664902273556-600a6e50beda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjM4fHxob3NwaXRhbCUyMGRyfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
              onTap: () {
                FlutterStatusbarcolor.setStatusBarColor(AppColor.primary_color);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Splash_Screen()));
              }),
        ],
      ),
    );
  }

  Widget moduleWidget(
      {required String name,
      required GestureTapCallback onTap,
      required String networkImage}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 100, 0, 100),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(networkImage),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  AppColor.black.withOpacity(0.6), BlendMode.colorBurn),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColor.appGrey.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 3,
                offset: const Offset(5, 10),
              )
            ]),
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18, color: AppColor.white),
        ),
      ),
    );
  }
}

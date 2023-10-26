import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/app_font.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({Key? key}) : super(key: key);

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  dynamic listData = [
    {"langKey": "en", "langName": "English", "langNameWord": "A"},
    {"langKey": "hi", "langName": "हिन्दी", "langNameWord": "अ"},
    {"langKey": "gu", "langName": "ગુજરાતી", "langNameWord": "અ"},
    {"langKey": "he", "langName": "עִברִית", "langNameWord": "א"},
    {"langKey": "ar", "langName": "عربي", "langNameWord": "أ"},
  ];

  bool isClick = false;
  int? dataIndex;
  String? data;

  methodForShowingSelectedLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    data = prefs.getString("selectedLanguage") ?? "en";
    setState(() {
      dataIndex = int.parse(prefs.getString("selectedLanguageIndex") ?? "0");
    });
    // print("dataIndex $dataIndex");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    methodForShowingSelectedLanguage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appScreenBackground,
      appBar: AppBar(
        title: Text(
          "choose language".tr,
          style: const TextStyle(
              color: Colors.white, fontFamily: AppFont.bold, fontSize: 20),
        ),
        backgroundColor: AppColor.primary_color,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 00),
        children: List.generate(
          listData.length,
          (index) {
            String key = listData[index]['langName'];
            String value = listData[index]['langKey'];
            return GestureDetector(
              onTap: () async {
                // print("key: $key || value: $value");
                isClick = true;
                Get.updateLocale(Locale(value));
                setState(() {
                  dataIndex = index;
                });
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setString("selectedLanguage", value);
                prefs.setString("selectedLanguageIndex", index.toString());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: index == dataIndex
                      ? AppColor.primary_color
                      : AppColor.primary_color.withOpacity(0.3),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      key,
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: AppFont.regular,
                          color: index == dataIndex
                              ? AppColor.white
                              : AppColor.black),
                    ),
                    Text(
                      value,
                      style: TextStyle(
                          fontFamily: AppFont.bold,
                          fontSize: 40,
                          color: index == dataIndex
                              ? AppColor.white
                              : AppColor.black),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

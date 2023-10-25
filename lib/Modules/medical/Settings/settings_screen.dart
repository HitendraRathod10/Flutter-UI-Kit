import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Settings/change_language.dart';
import 'package:flutter_ui_kit/Modules/medical/Settings/change_password.dart';
import 'package:flutter_ui_kit/Modules/medical/Settings/change_theme.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/homeScreen/editProfile.dart';

import '../../real_estate/utils/app_font.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appScreenBackground,
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(color: AppColor.white, fontFamily: AppFont.bold),
        ),
        backgroundColor: AppColor.primary_color,
        iconTheme: const IconThemeData(
          color: AppColor.white,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          cardItem(
              titleName: "Edit profile",
              iconName: Icons.person,
              navigationScreen: const EditProfile()),
          cardItem(
              titleName: "Change password",
              iconName: Icons.password_rounded,
              navigationScreen: const ChangePassword()),
          cardItem(
              titleName: "Change language",
              iconName: Icons.language,
              navigationScreen: const ChangeLanguage()),
          cardItem(
              titleName: "Change theme",
              iconName: Icons.color_lens,
              navigationScreen: const ChangeTheme()),
        ],
      ),
    );
  }

  Widget cardItem(
      {String? titleName, IconData? iconName, Widget? navigationScreen}) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => navigationScreen!));
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 00),
        child: Card(
            // color: Colors.grey.shade200,
            child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
            children: [
              Icon(iconName),
              const SizedBox(
                width: 10,
              ),
              Text(
                titleName!,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontFamily: AppFont.medium,
                    ),
              ),
              const Spacer(),
              const Icon(Icons.chevron_right)
            ],
          ),
        )),
      ),
    );
  }
}

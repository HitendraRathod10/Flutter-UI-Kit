import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/theme_controller.dart';
import 'display_theme_mode.dart';

class AppSettingsScreen extends StatefulWidget {
  const AppSettingsScreen({Key? key}) : super(key: key);

  @override
  State<AppSettingsScreen> createState() => _AppSettingsScreenState();
}

class _AppSettingsScreenState extends State<AppSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Scaffold(
      appBar: AppBar(
        title: Text("App Settings Screen", style: Theme.of(context).textTheme.titleLarge?.copyWith()),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Theme.of(context).iconTheme.color)),
      ),
      body: Column(
        children: [
          Card(child: ListTile(
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const DisplayThemeMode())),

    // leading: Icon(
              // themeController.isDarkMode.value
              // ? Icons.wb_sunny_outlined
              //     : Icons.nightlight_outlined,
              // color: Colors.white,
              // ),
              title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      /*  themeController.isDarkMode.value
    ? 'Light Mode'
        : */'Display',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          /*  themeController.isDarkMode.value
    ? 'Light Mode'
        : */'Dark Mode',
                          // style: fixedStyle,
                        ),
                        Icon(Icons.east_rounded)
                      ],)
                  ])
          )),
          // RadioListTile(
          //   title: const Text('Light Mode'),
          //   groupValue: themeController,
          //   value: ThemeMode.light,
          //   onChanged: (value) => themeController.changeThemeMode(value),
          // ),
          // RadioListTile(
          //   title: const Text('Dark Mode'),
          //   groupValue: 'male',
          //   value: ThemeMode.dark,
          //   onChanged: (value) => themeController.changeThemeMode(value),
          // )
        ],
      ),
    );
  }
}

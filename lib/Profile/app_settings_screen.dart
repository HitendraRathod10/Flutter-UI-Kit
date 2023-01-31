import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Profile/theme_provider.dart';
import 'package:provider/provider.dart';

class AppSettingsScreen extends StatefulWidget {
  const AppSettingsScreen({Key? key}) : super(key: key);

  @override
  State<AppSettingsScreen> createState() => _AppSettingsScreenState();
}

class _AppSettingsScreenState extends State<AppSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    // final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("App Settings Screen"),
      ),
      body: Column(
        children: [
          // RadioListTile<ThemeMode>(
          //   title: const Text('Light Mode'),
          //   groupValue: themeChanger.themeMode,
          //   value: ThemeMode.light,
          //   onChanged: themeChanger.setTheme,
          // ),
          // RadioListTile<ThemeMode>(
          //   title: const Text('Dark Mode'),
          //   groupValue: themeChanger.themeMode,
          //   value: ThemeMode.dark,
          //   onChanged: themeChanger.setTheme,
          // )
        ],
      ),
    );
  }
}

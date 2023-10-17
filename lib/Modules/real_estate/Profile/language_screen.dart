import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/app_color.dart';
import '../utils/theme_controller.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  Map lang = {
    "English": "en",
    "हिन्दी": "hi",
    "ગુજરાતી": "gu",
    "עִברִית": "he",
    "عربي": "ar"
  };
  bool isClick = false;
  int? dataIndex;
  String? data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    methodForShowingSelectedLanguage();
  }

  methodForShowingSelectedLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    data = prefs.getString("selectedLanguage") ?? "en";
    setState(() {
      dataIndex = int.parse(prefs.getString("selectedLanguageIndex") ?? "0");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('choose language'.tr,
              style: Theme.of(context).textTheme.titleLarge?.copyWith()),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).iconTheme.color,
            ),
          )),
      body: ListView.builder(
          itemCount: lang.length,
          itemBuilder: (context, index) {
            String key = lang.keys.elementAt(index);
            String value = lang.values.elementAt(index);
            return Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 00),
              child: InkWell(
                onTap: () async {
                  isClick = true;
                  Get.updateLocale(Locale(value));
                  setState(() {
                    dataIndex = index;
                  });
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setString("selectedLanguage", value);
                  prefs.setString("selectedLanguageIndex", index.toString());
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 40,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(05, 00, 00, 00),
                    child: Row(
                      children: [
                        Text(key,
                            style: Theme.of(context).textTheme.titleMedium),
                        const Spacer(),
                        index == dataIndex
                            ? const Icon(Icons.done)
                            : const SizedBox.shrink()
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import '../utils/app_color.dart';
import '../utils/theme_controller.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {

  Map lang = {
    "English" : "en",
    "हिन्दी" : "hi",
    "ગુજરાતી" : "gu",
    "मराठी" : "mr",
    "ਪੰਜਾਬੀ" : "pa",
  };
  bool isClick = false;
  int? count;
  final storeController = Get.find<ThemeController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.test,style: Theme.of(context).textTheme.titleLarge?.copyWith()),
        // backgroundColor: AppColor.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Theme.of(context).iconTheme.color,),
      )),
      body: ListView.builder(
        itemCount: lang.length,
          itemBuilder: (context,index){
            String key = lang.keys.elementAt(index);
            String value = lang.values.elementAt(index);
          return Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 00),
            child: InkWell(
              onTap: (){
                isClick = true;
                count = index;
                storeController.changeLanguageName(value);
                setState(() {

                });
                // Get.updateLocale(Locale(value));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  // color: AppColor.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(05, 00, 00, 00),
                  child: Row(
                    children: [
                      Text(key,style: Theme.of(context).textTheme.titleMedium),
                      const Spacer(),
                      index == count ? const Icon(Icons.done) : const SizedBox.shrink()
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

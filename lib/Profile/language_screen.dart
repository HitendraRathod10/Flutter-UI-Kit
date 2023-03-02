import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {

  List languages = ['English','हिन्दी','ગુજરાતી','मराठी',"ਪੰਜਾਬੀ"];
  bool isClick = false;
  int? count;

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
        title: Text("Choose Language",style: Theme.of(context).textTheme.titleLarge?.copyWith()),
        // backgroundColor: AppColor.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Theme.of(context).iconTheme.color,),
      )),
      body: ListView.builder(
        itemCount: languages.length,
          itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 00),
            child: InkWell(
              onTap: (){
                isClick = true;
                count = index;
                setState(() {});
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
                      Text(languages[index],style: Theme.of(context).textTheme.titleMedium),
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

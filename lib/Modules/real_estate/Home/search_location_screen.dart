import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/app_font.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../utils/app_color.dart';
import 'bottom_navigation_bar_screen.dart';
import 'home_provider.dart';

class SearchLocationScreen extends StatefulWidget {
  const SearchLocationScreen({Key? key}) : super(key: key);

  @override
  State<SearchLocationScreen> createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  TextEditingController locationController = TextEditingController();
  bool viewMore = true;

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<HomeProvider>(context, listen: false);
    return Consumer<HomeProvider>(builder: (BuildContext context, snap, child) {
      return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text("Search location",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: AppFont.semiBold,)),
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios_new,
                    color: Theme.of(context).iconTheme.color)),
          ),
          body: Container(
              // height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    color: Theme.of(context).cardTheme.color,
                    shadowColor: Theme.of(context).cardTheme.shadowColor,
                    child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.appBlueColor,
                            border: Border.all(
                                color: Theme.of(context).primaryColor)),
                        child: TextFormField(
                          style: const TextStyle(color: AppColor.black),
                          controller: locationController,
                          decoration: InputDecoration(
                            filled: true,
                            hintText: "search by street/area/city".tr,
                            hintStyle: TextStyle(fontFamily: AppFont.medium,),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppColor.black,
                            ),
                            prefixIconColor: AppColor.black,
                          ),
                          cursorColor: AppColor.appBlueColor,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter required fields';
                            }
                            return null;
                          },
                        )),
                  ),
                  const SizedBox(height: 25),
                  GestureDetector(
                    onTap: () {
                      print('On Tap Click');
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BottomNavigationBarScreen()),
                          (route) => false);
                      Provider.of<HomeProvider>(context, listen: false)
                          .onItemTapped(1);
                      // Navigator.of(context).pop();
                      // snap.onItemTapped(1);
                      // snap.buildScreen[1];
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarScreen()));
                    },
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      children: [
                        const Icon(
                          CupertinoIcons.paperplane_fill,
                          color: Colors.deepOrangeAccent,
                          size: 25,
                        ),
                        const SizedBox(width: 15),
                        Text('use my current location'.tr,
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(
                                    fontFamily: AppFont.medium,
                                    color: Colors.deepOrangeAccent))
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Divider(
                    color: Theme.of(context).dividerColor,
                    thickness: 1,
                    indent: Theme.of(context).dividerTheme.indent,
                    endIndent: Theme.of(context).dividerTheme.endIndent,
                    height: 2,
                  ),
                  const SizedBox(height: 20),
                  Text('recent searches'.tr,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(letterSpacing: 5,fontFamily: AppFont.semiBold,)),
                  const SizedBox(height: 10),
                  Expanded(
                      child: Stack(children: [
                    ListView.builder(
                        itemCount: providerData.locationData.length,
                        // physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          if (viewMore == true) {
                            viewMore = true;
                          }
                          if (viewMore == true) {
                            return index < 3
                                ? recentLocation(index)
                                : const SizedBox.shrink();
                          } else {
                            return recentLocation(index);
                          }
                        }),
                    // Visibility(
                    //     visible: viewMore,
                    //     child: GestureDetector(
                    //       child: Wrap(
                    //         children: const [
                    //           Text('View more '),
                    //           Icon(Icons.keyboard_arrow_down)
                    //         ],
                    //       ),
                    //       onTap: () {
                    //         setState(() {
                    //           viewMore = true;
                    //         });
                    //       },
                    //     ))
                  ]))
                ],
              )));
    });
  }

  Widget recentLocation(int index) {
    final providerData = Provider.of<HomeProvider>(context, listen: false);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: [
              const Icon(Icons.location_on, color: Colors.black),
              const SizedBox(width: 5),
              Text('${providerData.locationData[index]['title']}',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontFamily: AppFont.medium,)),
              Text('  \u2022  ${providerData.locationData[index]['distance']}',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontFamily: AppFont.medium, fontSize: 14)),
            ],
          ),
          // const SizedBox(height: 2),
          Text(' ${providerData.locationData[index]['address']}',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontFamily: AppFont.medium, color: Colors.grey),
              maxLines: 1,
              overflow: TextOverflow.ellipsis),
          const SizedBox(height: 20)
        ],
      ),
      if (index + 1 == 3)
        Visibility(
            visible: viewMore,
            child: GestureDetector(
              child: Wrap(
                children: [
                  Text('view more'.tr,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontFamily: AppFont.medium,
                          color: Colors.deepOrangeAccent)),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.deepOrangeAccent,
                  )
                ],
              ),
              onTap: () {
                setState(() {
                  viewMore = false;
                });
              },
            ))
    ]);
  }
}

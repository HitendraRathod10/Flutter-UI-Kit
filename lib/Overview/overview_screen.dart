import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Chat/chat_screen.dart';

import '../utils/app_color.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: InkWell(
          onTap: () {},
          child: Container(
            height: 50,
            decoration: const BoxDecoration(
                color: AppColor.appBlueColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    Icon(Icons.call,color: AppColor.white,),
                    SizedBox(width: 03,),
                    Text("Call",style: TextStyle(color: AppColor.white),),
                  ],
                ),
                const VerticalDivider(color: AppColor.white, thickness: 1, indent: 12, endIndent: 12),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChatScreen()));
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.message,color: AppColor.white,),
                      SizedBox(width: 03,),
                      Text("Chat",style: TextStyle(color: AppColor.white),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height / 2.4,
                      width: double.infinity,
                      child: Image.network(
                        "https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg?auto=compress&cs=tinysrgb&w=600",
                        fit: BoxFit.fill,
                      )),
                  Positioned(
                      left: 10,
                      top: 10,
                      child: ClipOval(
                          child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            decoration:
                                const BoxDecoration(color: AppColor.white),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                size: 18,
                                color: AppColor.black,
                              ),
                            )),
                      ))),
                  Positioned(
                      left: MediaQuery.of(context).size.width / 2.4,
                      top: 15,
                      child: const Text(
                        "Details",
                        style: TextStyle(
                            color: AppColor.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      top: 10,
                      right: 10,
                      child: ClipOval(
                          child: InkWell(
                        onTap: () {
                          // Navigator.pop(context);
                        },
                        child: Container(
                            decoration:
                                const BoxDecoration(color: AppColor.white),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Icon(
                                Icons.bookmark_border_outlined,
                                size: 20,
                                color: AppColor.black,
                              ),
                            )),
                      ))),
                  const Positioned(
                      left: 15,
                      bottom: 60,
                      child: Text(
                        "Indraprasth - 11",
                        style: TextStyle(
                            color: AppColor.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                    left: 15,
                    bottom: 30,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          size: 20,
                          color: AppColor.white,
                        ),
                        SizedBox(
                          width: 05,
                        ),
                        Text(
                          "Prahladnagar, Ahmedabad",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: AppColor.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 00),
                child: Row(
                  children: [
                    const Icon(Icons.currency_rupee,
                        size: 30, color: AppColor.black),
                    const Text(
                      "15,000/",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Container(
                        alignment: Alignment.bottomCenter,
                        height: 24,
                        child: const Text(
                          " month",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 00),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.bedroom_parent),
                      Text("4 Bed"),
                      VerticalDivider(
                          color: AppColor.grey,
                          thickness: 1,
                          indent: 20,
                          endIndent: 20),
                      Icon(Icons.bathroom_outlined),
                      Text("2 Bath"),
                      VerticalDivider(
                          color: AppColor.grey,
                          thickness: 1,
                          indent: 20,
                          endIndent: 20),
                      Icon(Icons.space_bar),
                      Text("250 Sq. ft."),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 00, 00),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Description",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 05, 00, 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Simple apartment with morden architecture and quality guaranteed interiors located in the city center "
                      "with a great view makes it easy for you to reach the article city to find out how consumer tastes "
                      "have evolved. Cozy and homey apartment with the most affordable price.Simple apartment with morden architecture and quality guaranteed interiors located in the city center "
                      "with a great view makes it easy for you to reach the article city to find out how consumer tastes "
                      "have evolved. Cozy and homey apartment with the most affordable price.Simple apartment with morden architecture and quality guaranteed interiors located in the city center "
                      "with a great view makes it easy for you to reach the article city to find out how consumer tastes "
                      "have evolved. Cozy and homey apartment with the most affordable price.",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 18),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

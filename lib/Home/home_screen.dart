import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Home/commercial_result_screen.dart';
import 'package:flutter_ui_kit/Home/flats_result_screen.dart';
import 'package:flutter_ui_kit/Home/house_result_screen.dart';
import 'package:flutter_ui_kit/Home/residential_result_screen.dart';
import 'package:flutter_ui_kit/Home/search_location_screen.dart';
import 'package:flutter_ui_kit/Overview/overview_screen.dart';
import 'package:flutter_ui_kit/utils/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 00),
                child: Row(
                  children: [
                    const Text(
                      "What are \nlooking for?",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchLocationScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColor.black,
                              width: 01,
                            ),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                topRight: Radius.circular(25))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Current location",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.grey)),
                            const SizedBox(height: 04),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: Image.network(
                                    "https://cdn-icons-png.flaticon.com/512/3177/3177361.png",
                                    color: AppColor.appBlueColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 02,
                                ),
                                const Text(
                                  "New ranip, Ahmedabad",
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w500),
                                ),
                                // Icon(Icons.arrow_drop_down)
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 00, 20, 00),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HouseResultScreen()));
                      },
                      child: Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(
                            color: AppColor.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.home,
                              size: 40,
                            ),
                            SizedBox(
                              height: 04,
                            ),
                            Text(
                              "House",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 01,
                            ),
                            Text("2000+ results",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal, fontSize: 14))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 05,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FlatResultScreen()));
                      },
                      child: Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(
                            color: AppColor.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.apartment_rounded,
                              size: 40,
                            ),
                            SizedBox(
                              height: 04,
                            ),
                            Text(
                              "Flats / Apartments",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 01,
                            ),
                            Text("5000+ results",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal, fontSize: 14))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 05, 20, 00),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ResidentialResultScreen()));
                      },
                      child: Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(
                            color: AppColor.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/7143/7143369.png",
                              height: 60,
                              width: 60,
                            ),
                            const SizedBox(
                              height: 04,
                            ),
                            const Text(
                              "Residential",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 01,
                            ),
                            const Text("1000+ results",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal, fontSize: 14))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 05,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CommercialResultScreen()));
                      },
                      child: Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(
                            color: AppColor.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/88/88945.png",
                              height: 60,
                              width: 60,
                            ),
                            const SizedBox(
                              height: 04,
                            ),
                            const Text(
                              "commercial",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 01,
                            ),
                            const Text("1000+ results",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal, fontSize: 14))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 00),
                child: Text(
                  "Recommend For You",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 00),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OverviewScreen()));
                        },
                        child: Card(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 3,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      bottomLeft: Radius.circular(4)),
                                  child: Image.network(
                                    "https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg?auto=compress&cs=tinysrgb&w=600",
                                    height: 90,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 05),
                              Expanded(
                                flex: 5,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(00, 03, 02, 00),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Expanded(flex: 8, child: Text("Indraprasth - 11",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: AppColor.appBlueColor),)),
                                          Expanded(flex: 1, child: Icon(Icons.bookmark_border_outlined, color: AppColor.black, size: 20),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 03,),
                                      Row(
                                        children: const [
                                          Expanded(flex:1,child: Icon(Icons.location_on, size: 20)),
                                          Expanded(flex:8,child: Text("Prahladnagar, Ahmedabad",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),overflow: TextOverflow.ellipsis,)),
                                        ],
                                      ),
                                      const SizedBox(height: 03,),
                                      Row(
                                        children: const [
                                          Expanded(flex: 1,child: Icon(Icons.home, size: 20)),
                                          Expanded(flex: 8,child: Text("3 BHK")),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

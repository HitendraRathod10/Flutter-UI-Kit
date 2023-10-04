import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_image.dart';
import 'package:flutter_ui_kit/Modules/medical/homeScreen/articleDetail.dart';
import 'package:flutter_ui_kit/Modules/medical/homeScreen/doctor_list.dart';

class Home_Widget extends StatefulWidget {
  const Home_Widget({super.key});

  @override
  State<Home_Widget> createState() => _Home_WidgetState();
}

class _Home_WidgetState extends State<Home_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE4ECF0),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: const [
              Text(
                "Hey,",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                " Ravi",
                style: TextStyle(fontSize: 25, color: AppColor.primary_color),
              ),
            ],
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFE4ECF0),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                enableInfiniteScroll: false,
                viewportFraction: 0.9,
                initialPage: 0,
                autoPlay: true,
                disableCenter: true,
                onPageChanged: (index, reason) {}),
            items: [
              AppImage.medical_banner1,
              AppImage.medical_banner2,
              AppImage.medical_banner3
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 15),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(
                            image: AssetImage(i),
                            fit: BoxFit.fill,
                          )));
                },
              );
            }).toList(),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Doctor_list()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.primary_color,
                          boxShadow: [
                            BoxShadow(
                                color: AppColor.primary_color.withAlpha(80),
                                offset: const Offset(0, -5),
                                blurRadius: 12,
                                spreadRadius: 4)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          AppImage.medical_calander,
                          color: Colors.white,
                          scale: 5,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Book My Appointment",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.primary_color,
                        boxShadow: [
                          BoxShadow(
                              color: AppColor.primary_color.withAlpha(80),
                              offset: const Offset(0, -5),
                              blurRadius: 12,
                              spreadRadius: 4)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        AppImage.medical_video,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Video Consulation",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Text(
              "Packages",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.primary_color.withAlpha(80),
                            offset: const Offset(0, -5),
                            blurRadius: 12,
                          )
                        ]),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(AppImage.medical_doctor),
                          radius: 40,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Health Package",
                                  style: TextStyle(
                                      color: AppColor.primary_color,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                  style: TextStyle(fontSize: 18),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  child: Divider(
                                    thickness: 2,
                                    color: Colors.grey,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "₹400 / Month",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 8),
                                      decoration: BoxDecoration(
                                        color: AppColor.primary_color,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Text(
                                        "Buy Now",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Text(
              "Articles",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (contex)=>ArticalsDetail()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW_zcgq_veTV_uQ60JLSd2dIB63jsv1dIf3A&usqp=CAU",fit: BoxFit.fill,)),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

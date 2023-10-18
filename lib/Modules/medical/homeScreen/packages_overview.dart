import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_image.dart';
import 'package:url_launcher/url_launcher.dart';

class PackagesOverview extends StatefulWidget {
  const PackagesOverview({Key? key}) : super(key: key);

  @override
  State<PackagesOverview> createState() => _PackagesOverviewState();
}

class _PackagesOverviewState extends State<PackagesOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Health Package",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppColor.primary_color,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 00),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                child: Image.asset(AppImage.medical_doctor),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Full body check Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "By Dr. John Deo",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  RatingBar.builder(
                    initialRating: 4.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),
                    ignoreGestures: true,
                    onRatingUpdate: (rating) {},
                  )
                ],
              ),
              const SizedBox(height: 5),
              const Text(
                "Family Doctor",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
              const SizedBox(height: 10),
              const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(Icons.check),
                  SizedBox(width: 5),
                  Text(
                    "Vitamin B-12",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(Icons.check),
                  SizedBox(width: 5),
                  Text(
                    "Body Mass Index",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(Icons.check),
                  SizedBox(width: 5),
                  Text(
                    "Urine (Routine & Micro)",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(Icons.check),
                  SizedBox(width: 5),
                  Text(
                    "Vitamin D",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(Icons.check),
                  SizedBox(width: 5),
                  Text(
                    "FBS",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(Icons.check),
                  SizedBox(width: 5),
                  Text(
                    "ECG",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(Icons.check),
                  SizedBox(width: 5),
                  Text(
                    "Lipid Profile",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      // bottomSheet: Container(
      //   height: 40,
      //   decoration: const BoxDecoration(color: AppColor.primary_color),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Expanded(
      //         child: InkWell(
      //           onTap: () async {
      //             var url = Uri.parse('tel:9876543210');
      //             if (await canLaunchUrl(url)) {
      //               await launchUrl(url);
      //             } else {
      //               throw 'Could not launch $url';
      //             }
      //           },
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: const [
      //               Text(
      //                 "Call",
      //                 style: TextStyle(
      //                     fontSize: 15,
      //                     fontWeight: FontWeight.bold,
      //                     color: AppColor.white),
      //               ),
      //               SizedBox(
      //                 width: 2,
      //               ),
      //               Icon(Icons.call, size: 17, color: AppColor.white),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Container(
      //         width: 1,
      //         color: AppColor.white,
      //       ),
      //       Expanded(
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: const [
      //             Text(
      //               "Chat",
      //               style: TextStyle(
      //                   fontSize: 15,
      //                   fontWeight: FontWeight.bold,
      //                   color: AppColor.white),
      //             ),
      //             SizedBox(
      //               width: 2,
      //             ),
      //             Icon(Icons.chat_rounded, size: 17, color: AppColor.white),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         width: 1,
      //         color: AppColor.white,
      //       ),
      //       Expanded(
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: const [
      //             Text(
      //               "Buy Now",
      //               style: TextStyle(
      //                   fontSize: 15,
      //                   fontWeight: FontWeight.bold,
      //                   color: AppColor.white),
      //             ),
      //             SizedBox(
      //               width: 2,
      //             ),
      //             Icon(Icons.add_circle_outline,
      //                 size: 17, color: AppColor.white),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        type: ExpandableFabType.up,
        distance: 57,
        openButtonBuilder: RotateFloatingActionButtonBuilder(
          child: const Icon(Icons.add),
          fabSize: ExpandableFabSize.small,
          foregroundColor: AppColor.primary_color,
          backgroundColor: AppColor.offWhite,
        ),
        closeButtonBuilder: RotateFloatingActionButtonBuilder(
          child: const Icon(Icons.close),
          fabSize: ExpandableFabSize.small,
          foregroundColor: AppColor.primary_color,
          backgroundColor: AppColor.offWhite,
        ),
        children: [
          FloatingActionButton.extended(
            heroTag: null,
            backgroundColor: AppColor.offWhite,
            foregroundColor: AppColor.primary_color,
            label: const Text("Call"),
            elevation: 15,
            icon: const Icon(Icons.headset_mic_outlined),
            onPressed: () async {
              var url = Uri.parse('tel:9876543210');
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
          FloatingActionButton.extended(
            heroTag: null,
            backgroundColor: AppColor.offWhite,
            foregroundColor: AppColor.primary_color,
            label: const Text("Chat"),
            elevation: 15,
            icon: const Icon(Icons.chat),
            onPressed: () {},
          ),
          FloatingActionButton.extended(
            heroTag: null,
            backgroundColor: AppColor.offWhite,
            foregroundColor: AppColor.primary_color,
            label: const Text("Buy now"),
            elevation: 15,
            icon: const Icon(Icons.add_circle),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

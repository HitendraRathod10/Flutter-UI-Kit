import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
        title: const Text("Health Package"),
      ),
      body: Container(
        // color: Colors.red,
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "By Dr. John Deo",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  onRatingUpdate: (rating) {},
                )
              ],
            ),
            const Text(
              "Family Doctor",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            const SizedBox(height: 10),
            const Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: TextStyle(fontSize: 17),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 40,
        decoration: const BoxDecoration(color: Colors.grey),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () async {
                var url = Uri.parse('tel:9876543210');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Row(
                children: const [
                  Text(
                    "Call",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    Icons.call,
                    size: 17,
                  ),
                ],
              ),
            ),
            Container(
              width: 1,
              color: Colors.black,
            ),
            Row(
              children: const [
                Text(
                  "Chat",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 2,
                ),
                Icon(
                  Icons.chat,
                  size: 17,
                ),
              ],
            ),
            Container(
              width: 1,
              color: Colors.black,
            ),
            Row(
              children: const [
                Text(
                  "Buy Now",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 2,
                ),
                Icon(
                  Icons.add_circle_outline,
                  size: 17,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

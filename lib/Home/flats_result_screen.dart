import 'package:flutter/material.dart';

import '../Overview/overview_screen.dart';
import '../utils/app_color.dart';

class FlatResultScreen extends StatefulWidget {
  const FlatResultScreen({Key? key}) : super(key: key);

  @override
  State<FlatResultScreen> createState() => _FlatResultScreenState();
}

class _FlatResultScreenState extends State<FlatResultScreen> {

  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
          const Text("Flats / Apartments", style: TextStyle(color: AppColor.black)),
          backgroundColor: AppColor.white,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios, color: AppColor.black)),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          controller: _controller,
          itemCount: 05,
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OverviewScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 05, 10, 00),
                    child: Card(
                      color: Colors.white.withOpacity(1.0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 00),
                        child: Column(
                          children: [
                            Stack(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(10)),
                                  child: Image.network(
                                    'https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg?auto=compress&cs=tinysrgb&w=600',
                                    height: 180,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Positioned(
                                  bottom: 08,
                                  left: 08,
                                  right: 80,
                                  child: Text(
                                    'Indraprasth - 11',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 27,
                                        fontWeight: FontWeight.w700),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ),
                                Positioned(
                                    top: 08,
                                    right: 08,
                                    child: Container(
                                      // padding: const EdgeInsets.all(02),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(20),
                                          border: Border.all(
                                              color: AppColor.white)),
                                      child: const Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Icon(
                                          Icons.bookmark_rounded,
                                          color: AppColor.appBlueColor,
                                          size: 25,
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(02),
                                    decoration: BoxDecoration(
                                        color: AppColor.grey.withOpacity(0.3),
                                        borderRadius:
                                        BorderRadius.circular(20)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Icon(
                                        Icons.location_on,
                                        size: 20,
                                      ),
                                    )),
                                const SizedBox(
                                  width: 07,
                                ),
                                SizedBox(
                                    width:
                                    MediaQuery.of(context).size.width / 1.3,
                                    child: const Text(
                                      "Prahladnagar, Ahmedabad",
                                      style: TextStyle(
                                        // fontFamily: AppFont.regular,
                                          fontSize: 17),
                                      overflow: TextOverflow.ellipsis,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(02),
                                    decoration: BoxDecoration(
                                        color: AppColor.grey.withOpacity(0.3),
                                        borderRadius:
                                        BorderRadius.circular(20)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Icon(
                                        Icons.home_filled,
                                        size: 20,
                                      ),
                                    )),
                                const SizedBox(
                                  width: 07,
                                ),
                                const SizedBox(
                                  width: 150,
                                  child: Text("3 BHK",
                                      style: TextStyle(
                                        // fontFamily: AppFont.regular,
                                          fontSize: 17),
                                      overflow: TextOverflow.ellipsis),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(02),
                                    decoration: BoxDecoration(
                                        color: AppColor.grey.withOpacity(0.3),
                                        borderRadius:
                                        BorderRadius.circular(20)),
                                    width: 30,
                                    child: const Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Icon(Icons.currency_rupee),
                                    )),
                                const SizedBox(
                                  width: 07,
                                ),
                                SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width / 1.4,
                                  child: const Text("15,000/Month",
                                      style: TextStyle(
                                        // fontFamily: AppFont.regular,
                                          fontSize: 17),
                                      overflow: TextOverflow.ellipsis),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        )
    );
  }
}

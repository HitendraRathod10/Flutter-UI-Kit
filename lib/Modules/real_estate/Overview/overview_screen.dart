import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/app_font.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Chat/chat_screen.dart';
import '../Home/home_provider.dart';
import '../model/service_model.dart';
import '../utils/app_color.dart';

class OverviewScreen extends StatefulWidget {
  RealStateModel? realStateData;
  int index;
  String bookMarkType;

  OverviewScreen(this.realStateData, this.index, this.bookMarkType,
      {super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  getBookmark() {
    Provider.of<HomeProvider>(context, listen: false).getRecommaned('Bookmark');
    Navigator.of(context).pop();
  }
  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: WillPopScope(
        onWillPop: ()=> getBookmark(),
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
                  GestureDetector(
                      onTap: () async {
                        var url =
                        Uri.parse('tel:${widget.realStateData!.mobile}');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.call,
                            color: AppColor.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("call".tr,
                              style: const TextStyle(color: AppColor.white, fontFamily: AppFont.medium,fontSize: 15),
                              maxLines: 2,
                              textAlign: TextAlign.center),
                        ],
                      )),
                  const VerticalDivider(
                      color: AppColor.white,
                      thickness: 1,
                      indent: 12,
                      endIndent: 12),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ChatScreen(widget.realStateData!)));
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.message,
                          color: AppColor.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "chat".tr,
                          style: const TextStyle(color: AppColor.white, fontFamily: AppFont.medium,fontSize: 15),
                        ),
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
                        child: CachedNetworkImage(
                          imageUrl: '${widget.realStateData!.image}',
                          height: 100,
                          fit: BoxFit.fill,
                          placeholder: (context, url) => Shimmer.fromColors(
                              baseColor: Colors.grey.shade300,
                              highlightColor: Colors.grey.shade100,
                              child: Container(
                                  color: Theme.of(context).primaryColor,
                                  height: 100)),
                          errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                        )),
                    Padding(
                        padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipOval(
                                child: InkWell(
                                  onTap: () {
                                    Provider.of<HomeProvider>(context, listen: false).getRecommaned('Bookmark');
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
                                )),
                            Text(
                              "details".tr,
                              style: const TextStyle(
                                  color: AppColor.white,
                                  fontSize: 20,
                                  fontFamily: AppFont.regular,),
                            ),
                            bookmarkWidget(),
                          ],
                        )),
                    /*Positioned(
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
                          setState(() {
                            if (providerData.recommendedData[widget.index]
                            ['bookMark']) {
                              providerData.recommendedData[widget.index]
                              ['bookMark'] = false;
                            } else {
                              providerData.recommendedData[widget.index]
                              ['bookMark'] = true;
                            }
                          });
                        },
                        child: Container(
                            decoration:
                                 BoxDecoration(
                                    color: providerData.recommendedData[widget.index]['bookMark']
                                        ? Theme.of(context).backgroundColor
                                        : Colors.white
                                 ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Icon(
                                Icons.bookmarks_rounded,
                                size: 23,
                                  color: providerData.recommendedData[widget.index]['bookMark']
                                      ? Theme.of(context).primaryColor
                                      : Theme.of(context).iconTheme.color,
                              ),
                            )),
                      ))),*/
                    Positioned(
                        left: 15,
                        bottom: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${widget.realStateData!.title}",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                fontFamily: AppFont.semiBold,
                                color: AppColor.white,
                                fontSize: 30,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  size: 20,
                                  color: AppColor.white,
                                ),
                                const SizedBox(
                                  width: 05,
                                ),
                                Text(
                                  "${widget.realStateData?.address}",
                                  maxLines: 2,
                                  style: const TextStyle(
                                      fontFamily: AppFont.medium,
                                      fontSize: 20,
                                      color: AppColor.white),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            )
                          ],
                        )),
                    /*Positioned(
                    left: 15,
                    bottom: 30,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 20,
                          color: AppColor.white,
                        ),
                        SizedBox(
                          width: 05,
                        ),
                        Text(
                          "${providerData.recommendedData[widget.index]['address']}",
                          maxLines: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: AppColor.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),*/
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 00),
                  child: Row(
                    children: [
                      const Icon(Icons.currency_rupee,
                          size: 30, color: AppColor.black),
                      Text(
                        "${widget.realStateData?.price}",
                        style: const TextStyle(
                            fontSize: 30, fontFamily: AppFont.regular,),
                      ),
                      widget.realStateData?.rent == true
                          ? Container(
                          alignment: Alignment.bottomCenter,
                          height: 24,
                          child: Text(
                            "month".tr,
                            style: const TextStyle(
                                fontSize: 18, fontFamily: AppFont.regular,),
                          ))
                          : const SizedBox.shrink(),
                      widget.realStateData?.govtCharge == true
                          ? Text('govt. charges'.tr,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                              color: Colors.blue,
                              fontSize: 18,
                              fontFamily: AppFont.regular,))
                          : const SizedBox.shrink()
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 00),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Row(
                          children: [
                            const Icon(Icons.bedroom_parent),
                            const SizedBox(width: 5,),
                            Text(
                              "${widget.realStateData?.bed}",
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontFamily: AppFont.regular,),
                            ),
                            const SizedBox(width: 5,),
                            Text(
                              "bed".tr,
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontFamily: AppFont.regular,),
                            ),
                          ],
                        ),
                        const VerticalDivider(
                            color: AppColor.grey,
                            thickness: 1,
                            indent: 20,
                            endIndent: 20),
                        Row(
                          children: [
                            const Icon(Icons.bathroom_outlined),
                            const SizedBox(width: 5,),
                            Text(
                              "${widget.realStateData?.bath}",
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontFamily: AppFont.regular,),
                            ),
                            const SizedBox(width: 5,),
                            Text(
                              "bath".tr,
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontFamily: AppFont.regular,),
                            ),
                          ],
                        ),
                        const VerticalDivider(
                            color: AppColor.grey,
                            thickness: 1,
                            indent: 20,
                            endIndent: 20),
                        Row(
                          children: [
                            const Icon(Icons.space_bar),
                            const SizedBox(width: 5,),
                            Text(
                              "${widget.realStateData?.squared}",
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontFamily: AppFont.regular,),
                            ),
                            const SizedBox(width: 5,),
                            Text(
                              "sqft".tr,
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontFamily: AppFont.regular,),
                            ),
                          ],
                        ),
                        const SizedBox(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 00, 00),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "description".tr,
                        style:
                        const TextStyle(fontFamily: AppFont.medium, fontSize: 22),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 05, 00, 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${widget.realStateData?.description}',
                        style: const TextStyle(
                            fontFamily: AppFont.regular, fontSize: 18),
                      )),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 05, 00, 20),
                    child: Row(
                      children: [
                        const Icon(Icons.calendar_month),
                        const SizedBox(width: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "published on".tr,
                            style: const TextStyle(
                                fontFamily: AppFont.medium, fontSize: 20),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "${widget.realStateData?.published}",
                          maxLines: 2,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontFamily: AppFont.regular, fontSize: 18),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 05, 00, 20),
                    child: Row(
                      children: [
                        const Icon(Icons.add_ic_call),
                        const SizedBox(width: 5),
                        const SizedBox(width: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "sales enquiries".tr,
                            style: const TextStyle(
                                fontFamily: AppFont.medium, fontSize: 20),
                          ),
                        ),
                        Text(
                          " ${widget.realStateData?.mobile}",
                          maxLines: 2,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontFamily: AppFont.regular, fontSize: 18),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bookmarkWidget() {
    var data;
    if (widget.bookMarkType == "Recommaned") {
      data =
          Consumer<HomeProvider>(builder: (BuildContext context, snap, child) {
        return ClipOval(
            child: InkWell(
          onTap: () {
            snap.changeRecommendBookmark(widget.index, widget.bookMarkType);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: snap.realStateRecommanedData[widget.index].bookMark == false
                      ? Theme.of(context).backgroundColor
                      : AppColor.appBlueColor),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Icon(
                  Icons.bookmarks_rounded,
                  size: 23,
                  color: snap.realStateRecommanedData[widget.index].bookMark == false
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).iconTheme.color,
                ),
              )),
        ));
      });
    } else if (widget.bookMarkType == "House") {
      data =
          Consumer<HomeProvider>(builder: (BuildContext context, snap, child) {
        return ClipOval(
            child: InkWell(
          onTap: () {
            snap.changeRecommendBookmark(widget.index, widget.bookMarkType);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: snap.realStateHouseData[widget.index].bookMark!
                      ? Theme.of(context).backgroundColor
                      : AppColor.appBlueColor),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Icon(
                  Icons.bookmarks_rounded,
                  size: 23,
                  color: snap.realStateHouseData[widget.index].bookMark!
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).iconTheme.color,
                ),
              )),
        ));
      });
    } else if (widget.bookMarkType == "Flat") {
      data =
          Consumer<HomeProvider>(builder: (BuildContext context, snap, child) {
        return ClipOval(
            child: InkWell(
          onTap: () {
            snap.changeRecommendBookmark(widget.index, widget.bookMarkType);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: snap.realStateFlatData[widget.index].bookMark!
                      ? Theme.of(context).backgroundColor
                      : AppColor.appBlueColor),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Icon(
                  Icons.bookmarks_rounded,
                  size: 23,
                  color: snap.realStateFlatData[widget.index].bookMark!
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).iconTheme.color,
                ),
              )),
        ));
      });
    } else if (widget.bookMarkType == "Residential") {
      data =
          Consumer<HomeProvider>(builder: (BuildContext context, snap, child) {
        return ClipOval(
            child: InkWell(
          onTap: () {
            snap.changeRecommendBookmark(widget.index, widget.bookMarkType);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: snap.realStateResidentialData[widget.index].bookMark!
                      ? Theme.of(context).backgroundColor
                      : AppColor.appBlueColor),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Icon(
                  Icons.bookmarks_rounded,
                  size: 23,
                  color: snap.realStateResidentialData[widget.index].bookMark!
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).iconTheme.color,
                ),
              )),
        ));
      });
    } else if (widget.bookMarkType == "Commercial") {
      data =
          Consumer<HomeProvider>(builder: (BuildContext context, snap, child) {
        return ClipOval(
            child: InkWell(
          onTap: () {
            snap.changeRecommendBookmark(widget.index, widget.bookMarkType);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: snap.realStateCommercialData[widget.index].bookMark!
                      ? Theme.of(context).backgroundColor
                      : AppColor.appBlueColor),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Icon(
                  Icons.bookmarks_rounded,
                  size: 23,
                  color: snap.realStateCommercialData[widget.index].bookMark!
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).iconTheme.color,
                ),
              )),
        ));
      });
    } else if (widget.bookMarkType == "Bookmark") {
      data =
          Consumer<HomeProvider>(builder: (BuildContext context, snap, child) {
            return ClipOval(
                child: InkWell(
                  onTap: () {
                    snap.changeRecommendBookmark(widget.index, widget.bookMarkType);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: snap.realStateBookmarkData[widget.index].bookMark == false
                              ? Theme.of(context).backgroundColor
                              : AppColor.appBlueColor),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Icon(
                          Icons.bookmarks_rounded,
                          size: 23,
                          color: snap.realStateBookmarkData[widget.index].bookMark == false
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).iconTheme.color,
                        ),
                      )),
                ));
          });
    }
    return data;
  }
}

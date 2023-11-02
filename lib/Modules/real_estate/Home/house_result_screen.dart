import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/app_font.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

import '../Overview/overview_screen.dart';
import '../model/service_model.dart';
import '../utils/app_color.dart';
import 'home_provider.dart';

class HouseResultScreen extends StatefulWidget {
  List<RealStateModel> realStateHouseData;
  String screenName;

  HouseResultScreen(this.realStateHouseData, this.screenName, {Key? key})
      : super(key: key);

  @override
  State<HouseResultScreen> createState() => _HouseResultScreenState();
}

class _HouseResultScreenState extends State<HouseResultScreen> {
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.screenName == "House" ? "house".tr : widget.screenName ==  "Flat" ? "flats / apartments".tr : widget.screenName ==  "Residential" ? "residential".tr : widget.screenName ==  "Commercial" ? "commercial".tr : widget.screenName,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: AppFont.semiBold,)),
          // backgroundColor: AppColor.white,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios,
                  color: Theme.of(context).iconTheme.color)),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          controller: _controller,
          itemCount: widget.realStateHouseData.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OverviewScreen(
                                widget.realStateHouseData[index],
                                index,
                                widget.screenName)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 05, 10, 00),
                    child: Card(
                      // color: Colors.white.withOpacity(1.0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 00),
                        child: Column(
                          children: [
                            imageWidget(index),
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
                                    child: Text(
                                      "${widget.realStateHouseData[index].address}",
                                      style: const TextStyle(
                                          fontFamily: AppFont.medium,
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
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                      "${widget.realStateHouseData[index].type}",
                                      style: const TextStyle(
                                          fontFamily: AppFont.medium,
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
                                  child: Text(
                                      "${widget.realStateHouseData[index].price}",
                                      style: const TextStyle(
                                          fontFamily: AppFont.medium,
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
        ));
  }

  Widget bookmarkWidget(int index) {
    var data;
    if (widget.screenName == "Recommaned") {
      data =
          Consumer<HomeProvider>(builder: (BuildContext context, snap, child) {
        return ClipOval(
            child: InkWell(
          onTap: () {
            snap.changeRecommendBookmark(index, "Recommaned");
          },
          child: Container(
              decoration: BoxDecoration(
                  color: snap.realStateRecommanedData[index].bookMark == false
                      ? Theme.of(context).backgroundColor
                      : AppColor.appBlueColor),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Icon(
                  Icons.bookmarks_rounded,
                  size: 23,
                  color: snap.realStateRecommanedData[index].bookMark == false
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).iconTheme.color,
                ),
              )),
        ));
      });
    } else if (widget.screenName == "House") {
      data =
          Consumer<HomeProvider>(builder: (BuildContext context, snap, child) {
        return ClipOval(
            child: InkWell(
          onTap: () {
            snap.changeRecommendBookmark(index, "House");
          },
          child: Container(
              decoration: BoxDecoration(
                  color: snap.realStateHouseData[index].bookMark == false
                      ? Theme.of(context).backgroundColor
                      : AppColor.appBlueColor),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Icon(
                  Icons.bookmarks_rounded,
                  size: 23,
                  color: snap.realStateHouseData[index].bookMark == false
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).iconTheme.color,
                ),
              )),
        ));
      });
    } else if (widget.screenName == "Flat") {
      data =
          Consumer<HomeProvider>(builder: (BuildContext context, snap, child) {
        return ClipOval(
            child: InkWell(
          onTap: () {
            snap.changeRecommendBookmark(index, "Flat");
          },
          child: Container(
              decoration: BoxDecoration(
                  color: snap.realStateFlatData[index].bookMark == false
                      ? Theme.of(context).backgroundColor
                      : AppColor.appBlueColor),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Icon(
                  Icons.bookmarks_rounded,
                  size: 23,
                  color: snap.realStateFlatData[index].bookMark == false
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).iconTheme.color,
                ),
              )),
        ));
      });
    } else if (widget.screenName == "Residential") {
      data =
          Consumer<HomeProvider>(builder: (BuildContext context, snap, child) {
        return ClipOval(
            child: InkWell(
          onTap: () {
            snap.changeRecommendBookmark(index, "Residential");
          },
          child: Container(
              decoration: BoxDecoration(
                  color: snap.realStateResidentialData[index].bookMark == false
                      ? Theme.of(context).backgroundColor
                      : AppColor.appBlueColor),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Icon(
                  Icons.bookmarks_rounded,
                  size: 23,
                  color: snap.realStateResidentialData[index].bookMark == false
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).iconTheme.color,
                ),
              )),
        ));
      });
    } else if (widget.screenName == "Commercial") {
      data =
          Consumer<HomeProvider>(builder: (BuildContext context, snap, child) {
        return ClipOval(
            child: InkWell(
          onTap: () {
            snap.changeRecommendBookmark(index, "Commercial");
          },
          child: Container(
              decoration: BoxDecoration(
                  color: snap.realStateCommercialData[index].bookMark == false
                      ? Theme.of(context).backgroundColor
                      : AppColor.appBlueColor),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Icon(
                  Icons.bookmarks_rounded,
                  size: 23,
                  color: snap.realStateCommercialData[index].bookMark == false
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).iconTheme.color,
                ),
              )),
        ));
      });
    }

    return data;
  }

  Widget imageWidget(int index) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
          child: CachedNetworkImage(
              imageUrl: '${widget.realStateHouseData[index].image}',
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: (context, url) => Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: Container(
                      color: Theme.of(context).primaryColor, height: 100)),
              errorWidget: (context, url, error) => const Icon(Icons.error)),
        ),
        Positioned(
          bottom: 08,
          left: 08,
          right: 80,
          child: Text(
            '${widget.realStateHouseData[index].title}',
            style: const TextStyle(
                color: Colors.white, fontSize: 27, fontFamily: AppFont.semiBold,),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        Positioned(right: 5, top: 5, child: bookmarkWidget(index)
            /*Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).highlightColor,
                                      borderRadius: BorderRadius.circular(5)),
                                  alignment: Alignment.center,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (providerData.realStateHouseData[index]
                                            .bookMark!) {
                                          providerData.realStateHouseData[index]
                                              .bookMark = false;
                                        } else {
                                          providerData.realStateHouseData[index]
                                              .bookMark = true;
                                        }
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.bookmarks_rounded,
                                      size: 20,
                                    ),
                                    color: providerData
                                        .realStateHouseData[index].bookMark!
                                        ? Theme.of(context).primaryColor
                                        : Theme.of(context).iconTheme.color,
                                  ),
                                )*/
            ),
      ],
    );
  }
}

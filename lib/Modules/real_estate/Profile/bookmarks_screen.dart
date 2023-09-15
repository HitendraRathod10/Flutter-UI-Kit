import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

import '../Home/home_provider.dart';
import '../Overview/overview_screen.dart';
import '../utils/app_color.dart';
import '../utils/no_data_found_screen.dart';

class BookmarksScreen extends StatefulWidget {
  const BookmarksScreen({Key? key}) : super(key: key);

  @override
  State<BookmarksScreen> createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  List data = [];
  ScrollController _controller = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<HomeProvider>(context, listen: false).getRecommaned('Bookmark');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bookmarks", style: Theme.of(context).textTheme.titleLarge?.copyWith()),
          // backgroundColor: AppColor.white,
          leading: InkWell(
              onTap: () {
                Provider.of<HomeProvider>(context, listen: false).getRecommaned('Bookmark');
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, color: Theme.of(context).iconTheme.color)),
        ),
        body: Consumer<HomeProvider>(builder: (BuildContext context, snap, child) {
          if(snap.realStateBookmarkData.isEmpty){
            print('Real State Bookmark Data Is Empty......');
            return const NoDataFoundScreen();
          }
          return ListView.builder(
            shrinkWrap: true,
            controller: _controller,
            itemCount: snap.realStateBookmarkData.length,
            itemBuilder: (BuildContext context, index) {
              return Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OverviewScreen(
                                  snap.realStateBookmarkData[index],
                                  index,
                                  'Bookmark')));
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>OverviewScreen(1)));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 05, 10, 00),
                      child: Card(
                        color: Theme.of(context).cardTheme.color,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 00),
                          child: Column(
                            children: [
                              Stack(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4), bottomLeft: Radius.circular(4)),
                                    child: CachedNetworkImage(
                                      imageUrl: '${snap.realStateBookmarkData[index].image}',
                                      height: 180,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) => Shimmer.fromColors(
                                          baseColor: Colors.grey.shade300,
                                          highlightColor: Colors.grey.shade100,
                                          child: Container(
                                              color: Theme.of(context).primaryColor,
                                              height: 100)),
                                      errorWidget: (context, url, error) => const Icon(Icons.error),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 08,
                                    left: 08,
                                    right: 80,
                                    child: Text(
                                      '${snap.realStateBookmarkData[index].title}',
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 27, fontWeight: FontWeight.w700),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    )
                                    // Text(
                                    //   '${snap.realStateBookmarkData[index].title}',
                                    //   style: TextStyle(
                                    //       color: Theme.of(context).textTheme.titleMedium?.color,
                                    //       fontSize: 27,
                                    //       fontWeight: FontWeight.w700),
                                    //   overflow: TextOverflow.ellipsis,
                                    //   maxLines: 3,
                                    // ),
                                  ),
                                  Positioned(
                                      top: 08,
                                      right: 08,
                                      child: Consumer<HomeProvider>(
                                          builder: (BuildContext context,snap,child){
                                            return Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Theme.of(context).highlightColor,
                                                  borderRadius: BorderRadius.circular(5)),
                                              alignment: Alignment.center,
                                              child: IconButton(
                                                onPressed: () {
                                                  snap.changeRecommendBookmark(index,'Bookmark');
                                                  Provider.of<HomeProvider>(context, listen: false).getRecommaned('Bookmark');
                                                },
                                                icon: const Icon(
                                                  Icons.bookmarks_rounded,
                                                  size: 20,
                                                ),
                                                color: snap.realStateBookmarkData[index].bookMark == false
                                                    ? Theme.of(context).primaryColor
                                                    : Theme.of(context).iconTheme.color,
                                              ),
                                            );
                                          })
                                    /*Container(
                                        // padding: const EdgeInsets.all(02),
                                        decoration: BoxDecoration(
                                            color: Theme.of(context).primaryColor,
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            border: Border.all(
                                                color: AppColor.white)),
                                        child: Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Icon(
                                            Icons.bookmark_rounded,
                                            color: Theme.of(context).iconTheme.color,
                                            size: 25,
                                          ),
                                        ),
                                      )*/),
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
                                      child: Text(
                                        "${snap.realStateBookmarkData[index].address}",
                                        style: const TextStyle(
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
                                  SizedBox(
                                    width: 150,
                                    child: Text("${snap.realStateBookmarkData[index].type}",
                                        style: Theme.of(context).textTheme.titleMedium,
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
                                    child: Text("${snap.realStateBookmarkData[index].price}",
                                        style: const TextStyle(
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
          );
        })
    );
  }
}

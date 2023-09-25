import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/real_estate/Home/search_location_screen.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import '../Overview/overview_screen.dart';
import '../model/service_model.dart';
import '../utils/app_color.dart';
import 'home_provider.dart';
import 'house_result_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<RealStateModel>? recommaned;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 00),
              child: Row(
                children: [
                  Text(
                    "what are \nlooking for?",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchLocationScreen()));
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
                          Text("current location".tr,
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
                    onTap: () {
                      Provider.of<HomeProvider>(context, listen: false).getRecommaned('House');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HouseResultScreen(Provider.of<HomeProvider>(context, listen: false).realStateHouseData, 'House')));
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
                          Icon(
                            Icons.home,
                            size: 40,
                          ),
                          SizedBox(
                            height: 04,
                          ),
                          Text(
                            "house".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 01,
                          ),
                          Text("2000+ results".tr,
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
                    onTap: () {
                      Provider.of<HomeProvider>(context, listen: false).getRecommaned('Flat');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HouseResultScreen(Provider.of<HomeProvider>(context, listen: false).realStateFlatData, 'Flat')));
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const FlatResultScreen()));
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
                          Icon(
                            Icons.apartment_rounded,
                            size: 40,
                          ),
                          SizedBox(
                            height: 04,
                          ),
                          Text(
                            "flats / apartments".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 01,
                          ),
                          Text("5000+ results".tr,
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
                    onTap: () {
                      Provider.of<HomeProvider>(context, listen: false).getRecommaned('Residential');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HouseResultScreen(Provider.of<HomeProvider>(context, listen: false).realStateResidentialData, 'Residential')));
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const ResidentialResultScreen()));
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
                            color: Theme.of(context).iconTheme.color,
                          ),
                          const SizedBox(
                            height: 04,
                          ),
                          Text(
                            "residential".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 01,
                          ),
                          Text("1000+ results".tr,
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
                    onTap: () {
                      Provider.of<HomeProvider>(context, listen: false).getRecommaned('Commercial');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HouseResultScreen(Provider.of<HomeProvider>(context, listen: false).realStateCommercialData, 'Commercial')));
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
                            color: Theme.of(context).iconTheme.color,
                          ),
                          const SizedBox(
                            height: 04,
                          ),
                          Text(
                            "commercial".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 01,
                          ),
                          Text("1000+ results".tr,
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
              padding: EdgeInsets.fromLTRB(20, 20, 20, 00),
              child: Text(
                "recommend for you".tr,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 00),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: providerData.realStateRecommanedData.length,
                  itemBuilder: (context, index) {
                    print('realStateRecommanedData $index...... ${providerData.realStateRecommanedData[index].bookMark}');
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OverviewScreen(providerData.realStateRecommanedData[index],index,"Recommaned")));
                      },
                      child: cardWidget(providerData.realStateRecommanedData[index], index),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget cardWidget(RealStateModel realStateRecommanedData, int index) {
    final providerData = Provider.of<HomeProvider>(context, listen: false);
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4), bottomLeft: Radius.circular(4)),
              child: CachedNetworkImage(
                imageUrl: '${realStateRecommanedData.image}',
                height: 100,
                fit: BoxFit.fill,
                placeholder: (context, url) => Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                        color: Theme.of(context).primaryColor,
                        height: 100)),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(width: 7),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(00, 03, 02, 00),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        ' ${realStateRecommanedData.title}',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                      )),
                      Consumer<HomeProvider>(
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
                              snap.changeRecommendBookmark(index,'Recommaned');
                            },
                            icon: const Icon(
                              Icons.bookmarks_rounded,
                              size: 20,
                            ),
                            color: snap.realStateRecommanedData[index].bookMark == false
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).iconTheme.color,
                          ),
                        );
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_on, size: 20),
                      Expanded(
                          child: Text(
                        " ${realStateRecommanedData.address}",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.normal, fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 03,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.home, size: 20),
                      Expanded(
                          child: Text(
                        ' ${realStateRecommanedData.type}',
                        style: Theme.of(context).textTheme.bodySmall,
                      )),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/app_font.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';
import '../utils/app_color.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  final Set<Marker> markers = {};
  final LatLng _center = const LatLng(23.022505, 72.571365);
  // FocusNode? searchFocus;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Future markerLocation() async {
    markers.add(Marker(
        markerId: const MarkerId("ABC"),
        onTap: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) {
              return Wrap(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.white),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              'https://plus.unsplash.com/premium_photo-1661926736128-f2b643f91d1e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHJlYWwlMjBlc3RhdGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                              height: 90,
                              width: 90,
                              fit: BoxFit.fill),
                        ),
                        Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    SizedBox(height: 2),
                                    Text(
                                      'Indraprasth - 11',
                                      style: TextStyle(
                                          color: AppColor.appBlueColor,
                                          fontFamily: AppFont.semiBold,
                                          fontSize: 20),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 2),
                                    Text("Prahladnagar, Ahmedabad",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: AppFont.medium,),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis),
                                    SizedBox(height: 4),
                                    Text("3 BHK",style: TextStyle(fontFamily: AppFont.medium,),)
                                  ])),
                        )
                      ],
                    ),
                  )
                ],
              );
            },
          );
        },
        position: LatLng(double.parse("23.1073"), double.parse("72.6675")),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueRed,
        )));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    markerLocation();
    // searchFocus = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Hi");
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Stack(
          children: [
            GestureDetector(
              onTap: () {
                print("hie");
                FocusScope.of(context).unfocus();
              },
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 10.0,
                ),
                markers: markers,
              ),
            ),
            Positioned(
                top: 40,
                left: 00,
                right: 00,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    height: 50,
                    // width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      style: const TextStyle(color: AppColor.appBlueColor),
                      // focusNode: searchFocus,
                      decoration: InputDecoration(
                          filled: true,
                          contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                          // fillColor: Colors.white,
                          hintText: 'search location'.tr,
                          hintStyle: TextStyle(fontFamily: AppFont.regular,),
                          // labelText: "Search Location",
                          // labelStyle: TextStyle(
                          //   color: AppColor.appBlueColor,
                          //   fontSize: 20.0,
                          //   fontWeight: FontWeight.normal,
                          // ),
                          suffixIcon: InkWell(
                              onTap: () {},
                              child: const Icon(Icons.search,
                                  color: AppColor.appBlueColor)),
                          border:
                              const OutlineInputBorder(borderSide: BorderSide.none)),
                      cursorColor: AppColor.appBlueColor,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Email';
                        }
                        return null;
                      },
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

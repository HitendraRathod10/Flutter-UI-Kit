import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_image.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/app_font.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class SlotBooking extends StatefulWidget {
  const SlotBooking({super.key});

  @override
  State<SlotBooking> createState() => _SlotBookingState();
}

class _SlotBookingState extends State<SlotBooking> {
  final currentDate = DateTime.now();
  DateTime? date;
  List<String> weekday = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  List<String> morningSlot = [
    "09:00 AM To 10:00 AM",
    "10:00 AM To 11:00 AM",
    "11:00 AM To 12:00 PM",
  ];
  List<String> afternoonSlot = [
    "02:00 PM To 03:00 PM",
    "03:00 PM To 04:00 PM",
  ];
  List<String> eveningSlot = [
    "04:00 PM To 05:00 PM",
    "05:00 PM To 06:00 PM",
    "06:00 PM To 07:00 PM",
    "07:00 PM To 08:00 PM",
  ];
  List dates = [];
  DateTime now = DateTime.now();
  late int selectedDay;
  String selectedSlot = "";
  String? selectedDayForTiming;
  String? selectedDayForWeekday;
  final dayFormatter = DateFormat('dd');
  final monthFormatter = DateFormat('MMM');
  final weekDayFormatter = DateFormat('EEE');

  methodForDate() {
    // print("Total days ---> ${DateTime(now.year, now.month + 1, 0).day}");
    // print("previous days --> ${now.day - 1}");
    // print(
    //     "output days --> ${DateTime(now.year, now.month + 1, 0).day - (now.day - 1)}");
    for (var i = 0;
        i < DateTime(now.year, now.month + 1, 0).day - (now.day - 1);
        i++) {
      date = currentDate.add(Duration(days: i));
      setState(() {
        dates.add(date);
      });
    }
    // print("Dates length :: ${dates}");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    methodForDate();
    selectedDay = now.day;
    // print("selectedDay $selectedDay");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appScreenBackground,
      bottomNavigationBar: SizedBox(
        height: 80,
        // color: Colors.grey,
        child: GestureDetector(
          onTap: () {
            Fluttertoast.showToast(
                msg: "Your appointment has been booked successfully.",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: AppColor.primary_color,
                textColor: Colors.white,
                fontSize: 16.0);
            Navigator.of(context).pop();
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            // padding: const EdgeInsets.symmetric(),
            width: MediaQuery.of(context).size.width,
            child: const Center(
                child: Text(
              "BOOK NOW",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: AppFont.bold,),
            )),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(colors: [
                  AppColor.primary_color,
                  AppColor.primary_color.withAlpha(80),
                ]),
                boxShadow: [
                  BoxShadow(
                      color: AppColor.primary_color.withAlpha(20),
                      blurRadius: 10,
                      offset: const Offset(3, 10))
                ]),
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Book Your Appointment",
          style: TextStyle(color: Colors.white, fontFamily: AppFont.bold,),
        ),
        backgroundColor: AppColor.primary_color,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(AppImage.medical_doctor),
                  radius: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "DR. SURYAKANT PANKAJ",
                        style: TextStyle(
                            color: AppColor.primary_color,
                            fontSize: 17,
                            fontFamily: AppFont.semiBold,),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "DR. SURYAKANT PANKAJ",
                        style: TextStyle(
                            fontSize: 13, fontFamily: AppFont.medium,),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RatingBar.builder(
                        itemSize: 20,
                        tapOnlyMode: true,
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Text(
              "Choose Your Appointment date",
              style: TextStyle(fontSize: 18, fontFamily: AppFont.semiBold,),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
                itemCount: dates.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDay = index + 1;
                      });
                      selectedDayForTiming =
                          weekDayFormatter.format(dates[index]);
                      selectedDayForWeekday = dayFormatter.format(dates[index]);
                      print("selectedDayForTiming $selectedDayForWeekday");
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 8, right: index == dates.length - 1 ? 8 : 0),
                      child: Column(
                        children: [
                          Text(
                            weekday[DateTime(
                                        now.year,
                                        now.month,
                                        int.parse(
                                            dayFormatter.format(dates[index])))
                                    .weekday -
                                1],
                            style: const TextStyle(
                                fontSize: 15,
                                fontFamily: AppFont.regular,
                                color: AppColor.primary_color),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: selectedDay == index + 1
                                        ? AppColor.primary_color
                                        : AppColor.white),
                                color: selectedDay == index + 1
                                    ? AppColor.primary_color
                                    : AppColor.white),
                            child: Center(
                                child: Text(
                              "${dayFormatter.format(dates[index])} ${monthFormatter.format(dates[index])}",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontFamily: AppFont.regular,
                                  color: selectedDay == index + 1
                                      ? AppColor.white
                                      : AppColor.black),
                            )),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15),
            child: Text(
              "Morning",
              style: TextStyle(fontSize: 18, fontFamily: AppFont.semiBold,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
                spacing: 8,
                runSpacing: 8,
                direction: Axis.horizontal,
                children: List.generate(
                    morningSlot.length,
                    (index) => slot(
                        text: morningSlot[index],
                        onTap: () => setState(() {
                              selectedSlot = morningSlot[index];
                            })))),
          ),
          selectedDayForTiming == "Sunday"
              ? const SizedBox()
              : const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15),
                  child: Text(
                    "Afternoon",
                    style: TextStyle(fontSize: 18, fontFamily: AppFont.semiBold),
                  ),
                ),
          selectedDayForTiming == "Sunday"
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      direction: Axis.horizontal,
                      children: List.generate(
                          afternoonSlot.length,
                          (index) => slot(
                              text: afternoonSlot[index],
                              onTap: () => setState(() {
                                    selectedSlot = afternoonSlot[index];
                                  })))),
                ),
          selectedDayForTiming == "Sunday"
              ? const SizedBox()
              : const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15),
                  child: Text(
                    "Evening",
                    style: TextStyle(fontSize: 18, fontFamily: AppFont.semiBold),
                  ),
                ),
          selectedDayForTiming == "Sunday"
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      direction: Axis.horizontal,
                      children: List.generate(
                          eveningSlot.length,
                          (index) => slot(
                              text: eveningSlot[index],
                              onTap: () => setState(() {
                                    selectedSlot = eveningSlot[index];
                                  })))),
                )
        ],
      ),
    );
  }

  Widget slot({required String text, required GestureTapCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: selectedSlot == text
                    ? AppColor.primary_color
                    : Colors.grey),
            color:
                selectedSlot == text ? AppColor.primary_color : Colors.white),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 15,
                fontFamily: AppFont.regular,
                color: selectedSlot == text ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}

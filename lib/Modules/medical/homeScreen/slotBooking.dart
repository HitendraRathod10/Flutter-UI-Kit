import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_image.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SlotBooking extends StatefulWidget {
  const SlotBooking({super.key});

  @override
  State<SlotBooking> createState() => _SlotBookingState();
}

class _SlotBookingState extends State<SlotBooking> {
List<String> weekday = [
  "Mon",
  "Tue",
  "Wed",
  "Thu",
  "Fri",
  "Sat",
  "Sun"
];
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
DateTime now = new DateTime.now();
late int selectedDay;
String selectedSlot = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    selectedDay = now.day;
// print("Day --> ${now.day}");
// print("Day --> ${now.month}");
// print("Day --> ${now.weekday}");
// print("Day --> ${now.year}");
//     DateTime lastDayOfMonth = new DateTime(2023, 10, 1);
//     print("Week Day --> ${lastDayOfMonth.weekday}");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE4ECF0),
      bottomNavigationBar: Container(
        height: 80,
        // color: Colors.grey,
        child: GestureDetector(
          onTap: (){
            Fluttertoast.showToast(
                msg:
                "Your appointment has been booked successfully.",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                backgroundColor: Colors.green,
                textColor: Colors.white,
                fontSize: 16.0);
            Navigator.of(context).pop();
          },
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: 20, vertical: 15),
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: Text(
                  "BOOK NOW",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(colors: [
                  AppColor.primary_color,
                  AppColor.primary_color.withAlpha(80),
                ]),
                boxShadow: [
                  BoxShadow(
                      color:
                      AppColor.primary_color.withAlpha(20),
                      blurRadius: 10,
                      offset: Offset(3, 10))
                ]),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Book Your Appointment"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(AppImage.medical_doctor),
                  radius: 50,
                ),
                SizedBox(
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
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "DR. SURYAKANT PANKAJ",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RatingBar.builder(
                        itemSize: 20,
                        tapOnlyMode: true,
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, _) => Icon(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8),
            child: Text("Choose Your Appointment date",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 100,
            child:   ListView.builder(itemCount: DateTime(now.year,now.month+1,0).day,scrollDirection: Axis.horizontal,itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){

                  if(index+1 < now.day){

                  }else{
                    setState(() {
                      selectedDay = index+1;
                    });
                  }

                },
                child: Container(
                  margin: EdgeInsets.only(left: 8,right:DateTime(now.year,now.month+1,0).day-1 == index ?8:0 ),
                  child: Column(
                    children: [
                      Text(weekday[DateTime(now.year, now.month, index+1).weekday-1],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: AppColor.primary_color),),
                      SizedBox(height: 10,),
                      Container(
                        height: 50,
                        width: 50,
                        padding: EdgeInsets.all(8),
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color:selectedDay == index+1 ?AppColor.primary_color: Colors.grey),
                            color: selectedDay == index+1 ? AppColor.primary_color :index+1 < now.day ? Colors.grey: Colors.white
                        ),
                        child: Center(child: Text((index+1).toString(),style: TextStyle(fontSize: 25,color: selectedDay == index+1 ? AppColor.white :index+1 < now.day ? Colors.black: AppColor.primary_color),)),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 15),
            child: Text("Morning",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              direction: Axis.horizontal,
              children: List.generate(morningSlot.length, (index) => slot(text: morningSlot[index], onTap: ()=>setState(() {
                selectedSlot = morningSlot[index];
              })))
            ),
          ),
         DateTime(now.year, now.month, selectedDay).weekday == 7 ? SizedBox() : const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 15),
            child: Text("Afternoon",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          ),
         DateTime(now.year, now.month, selectedDay).weekday == 7 ? SizedBox() : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
                spacing: 8,
                runSpacing: 8,
                direction: Axis.horizontal,
                children: List.generate(afternoonSlot.length, (index) => slot(text: afternoonSlot[index], onTap: ()=>setState(() {
                  selectedSlot = afternoonSlot[index];
                })))
            ),
          ),
        DateTime(now.year, now.month, selectedDay).weekday == 7 ? SizedBox() :  const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 12.0,vertical: 15),
            child: Text("Evening",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          ),
        DateTime(now.year, now.month, selectedDay).weekday == 7 ? SizedBox() :  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
                spacing: 8,
                runSpacing: 8,
                direction: Axis.horizontal,
                children: List.generate(eveningSlot.length, (index) => slot(text: eveningSlot[index], onTap: ()=>setState(() {
                  selectedSlot = eveningSlot[index];
                })))
            ),
          )
        ],
      ),
    );
  }
  Widget slot({required String text,required GestureTapCallback onTap}){
    return       GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color:selectedSlot == text ?AppColor.primary_color: Colors.grey),
            color: selectedSlot == text ?AppColor.primary_color : Colors.white
        ),
        child: Center(child: Text(text,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color:selectedSlot == text ?Colors.white:Colors.black),),),
      ),
    );
  }
}

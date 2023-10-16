import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';

class Notification_widget extends StatefulWidget {
  const Notification_widget({super.key});

  @override
  State<Notification_widget> createState() => _NotificationState();
}

class _NotificationState extends State<Notification_widget> {
  List staticData = [
    {
      "title": "Video consultation",
      "subtitle":
          "Mr. John Deo has requested tomorrow's 03:00 to 03:15 PM through Video consultation."
    },
    {
      "title": "Riya's Birthday",
      "subtitle": "Say happy birthday to Dr. Riya Patel"
    },
    {
      "title": "Appointment booked",
      "subtitle":
          "Mr. Jay Patel has booked Appointment of tomorrow's 05:00 to 05:15 PM."
    },
    {
      "title": "Video consultation",
      "subtitle":
          "Mrs. Arpita Modi has requested tomorrow's 10:00 to 10:15 AM through Video consultation."
    },
    {
      "title": "Appointment booked",
      "subtitle":
          "Mrs. Honey Shah has booked Appointment of tomorrow's 10:00 to 10:15 AM."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE4ECF0),
      appBar: AppBar(
        title: const Text(
          "Notification",
          style: TextStyle(color: AppColor.white),
        ),
        backgroundColor: AppColor.primary_color,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: ListView.builder(
            itemCount: staticData.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: AppColor.offWhite,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                          color: AppColor.primary_color,
                          offset: Offset(5, 10),
                          blurRadius: 8,
                          spreadRadius: 1)
                    ]),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                child: Row(
                  children: [
                    const Icon(Icons.notifications_active_rounded),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            staticData[index]['title'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(staticData[index]['subtitle'])
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}

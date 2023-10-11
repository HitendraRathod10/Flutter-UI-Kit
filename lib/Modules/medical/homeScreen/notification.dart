import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';

class Notification_widget extends StatefulWidget {
  const Notification_widget({super.key});

  @override
  State<Notification_widget> createState() => _NotificationState();
}

class _NotificationState extends State<Notification_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE4ECF0),
      appBar: AppBar(
        title: Text("Notification",style: TextStyle(color: AppColor.white),),
        backgroundColor: AppColor.primary_color,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.primary_color.withAlpha(80),
                        offset: const Offset(0, -5),
                        blurRadius: 12,
                      )
                    ]),
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                child: Row(
                  children: [
                    Icon(Icons.notifications_active_rounded),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Notification title",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Notification description")
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

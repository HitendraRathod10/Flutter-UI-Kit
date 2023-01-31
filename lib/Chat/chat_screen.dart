import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/utils/app_color.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  showDeleteAlertDialog(BuildContext context) {
    Widget cancelButton = Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey),
      child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child:  const Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Text(
              'Cancel',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )),
    );
    Widget continueButton = Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColor.appBlueColor),
      child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child:  const Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Text(
              'Yes',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )),
    );
    AlertDialog alert = AlertDialog(
      backgroundColor: AppColor.white,
      titleTextStyle: const TextStyle(color: AppColor.black,fontSize: 18),
      title: const Text("Delete message",style: TextStyle(fontSize: 25),),
      content: const Text("Are you sure want to delete this message from chat ?",style: TextStyle(color: AppColor.black,fontSize: 20)),
      actions: [
        cancelButton,
        const SizedBox(
          width: 01,
        ),
        continueButton,
      ],
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)
          )),
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            title: const Text("Dhebaram Prajapati",
                style: TextStyle(color: AppColor.black)),
            backgroundColor: AppColor.white,
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios, color: AppColor.black)),
            actions: const [
              CircleAvatar(
                  radius: 17,
                  backgroundColor: AppColor.appBlueColor,
                  child: Icon(
                    Icons.call,
                    size: 20,
                    color: AppColor.white,
                  )),
              SizedBox(
                width: 10,
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(05, 00, 05, 00),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: 100,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(00, 10, 00, 00),
                          child: Column(
                            crossAxisAlignment: index % 2 == 0
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.end,
                            children: [
                              InkWell(
                                onLongPress: (){
                                  showDeleteAlertDialog(context);
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 05),
                                    width: MediaQuery.of(context).size.width / 1.5,
                                    decoration: BoxDecoration(
                                        color: index % 2 == 0
                                            ? AppColor.white
                                            : AppColor.appBlueColor,
                                        borderRadius: index % 2 == 0
                                            ? const BorderRadius.only(
                                                bottomRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                                topRight: Radius.circular(10))
                                            : const BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10))),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.fromLTRB(10, 10, 10, 05),
                                          child: Text(
                                            "hello Good morning ! hello Good morning ! "
                                            "hello Good morning",
                                            style: TextStyle(
                                                color: index % 2 == 0
                                                    ? AppColor.black
                                                    : AppColor.white),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.fromLTRB(00, 00, 05, 10),
                                          child: Text(
                                            "12:30",
                                            style: TextStyle(
                                                color: index % 2 == 0
                                                    ? AppColor.black
                                                    : AppColor.white,
                                                fontSize: 10),
                                            textAlign: TextAlign.end,
                                          ),
                                        )
                                      ],
                                    )),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    style: const TextStyle(color: AppColor.black),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Type message here",
                        suffixIcon:
                        InkWell(
                          onTap: (){},
                            child: Icon(Icons.send, color: AppColor.appBlueColor)),
                        border:
                        OutlineInputBorder(borderSide: BorderSide.none)),
                    cursorColor: AppColor.appBlueColor,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Email';
                      }
                      return null;
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}

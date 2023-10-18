import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/app_font.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Home/home_provider.dart';
import '../model/service_model.dart';
import '../utils/app_color.dart';

class ChatScreen extends StatefulWidget {
  RealStateModel chatData;

  ChatScreen(this.chatData, {super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController message = TextEditingController();

  @override
  void initState() {
    super.initState();
    print('Dta..... ${widget.chatData.chat}');
    print('Dta..... ${widget.chatData.chat!.length}');
  }

  showDeleteAlertDialog(BuildContext context) {
    Widget cancelButton = Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.grey),
      child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Text(
              'cancel'.tr,
              style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: AppFont.medium,),
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
          child: Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Text(
              'yes'.tr,
              style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: AppFont.medium,),
            ),
          )),
    );
    AlertDialog alert = AlertDialog(
      backgroundColor: AppColor.white,
      titleTextStyle: const TextStyle(color: AppColor.black, fontSize: 18),
      title: Text(
        "delete message".tr,
        style: TextStyle(fontSize: 25, fontFamily: AppFont.semiBold,),
      ),
      content: Text(
          "are you sure want to delete this message from chat ?".tr,
          style: TextStyle(color: AppColor.black, fontSize: 20, fontFamily: AppFont.medium,)),
      actions: [
        cancelButton,
        const SizedBox(
          width: 01,
        ),
        continueButton,
      ],
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
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
          backgroundColor:
              Theme.of(context).backgroundColor, //Colors.grey.shade200,
          appBar: AppBar(
            title: Text("${widget.chatData.title}",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontFamily: AppFont.medium,) /* style: TextStyle(color: AppColor.black)*/),
            // backgroundColor: AppColor.white,
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios,
                    color: Theme.of(context).iconTheme.color)),
            actions: [
              GestureDetector(
                  onTap: () async {
                    var url = Uri.parse('tel:${widget.chatData.mobile}');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: CircleAvatar(
                      radius: 17,
                      backgroundColor: AppColor.appBlueColor,
                      child: Icon(
                        Icons.call,
                        size: 20,
                        color: AppColor.white,
                      ))),
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
                  child: Consumer<HomeProvider>(builder: (BuildContext context, snap, child) {
                    return ListView.builder(
                        itemCount: widget.chatData.chat?.length,
                        reverse: false,
                        itemBuilder: (context, index) {
                          if (widget.chatData.chat![index]?.customer != "") {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(00, 10, 00, 00),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onLongPress: () {
                                      showDeleteAlertDialog(context);
                                    },
                                    child: Container(
                                        margin: const EdgeInsets.only(bottom: 05),
                                        constraints: BoxConstraints(
                                            minWidth: 70,
                                            maxWidth: MediaQuery.of(context)
                                                .size
                                                .width /
                                                1.5),
                                        // width: MediaQuery.of(context).size.width / 1.5,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius: const BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10))),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                          children: [
                                            Wrap(
                                              crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                              alignment: WrapAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      10, 10, 10, 05),
                                                  child: Text(
                                                    "${widget.chatData.chat?[index].customer}        ",
                                                    maxLines: 3,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyLarge
                                                        ?.copyWith(
                                                        color:
                                                        AppColor.black,
                                                      fontFamily: AppFont.medium,),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Wrap(
                                              crossAxisAlignment:
                                              WrapCrossAlignment.end,
                                              alignment: WrapAlignment.end,
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 10, 10, 05),
                                                  child: Text(
                                                    "${widget.chatData.chat?[index].time}",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium
                                                        ?.copyWith(
                                                        color:
                                                        AppColor.black,
                                                      fontFamily: AppFont.medium,),
                                                    textAlign: TextAlign.end,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )),
                                  )
                                ],
                              ),
                            );
                          }
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(00, 10, 00, 00),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(bottom: 05),
                                    constraints: BoxConstraints(
                                        minWidth: 70,
                                        maxWidth:
                                        MediaQuery.of(context).size.width /
                                            1.5),
                                    // width: MediaQuery.of(context).size.width / 1.5,
                                    decoration: const BoxDecoration(
                                        color: AppColor.appBlueColor,
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10))),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Wrap(
                                          crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                          alignment: WrapAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  10, 10, 10, 05),
                                              child: Text(
                                                "${widget.chatData.chat?[index].suppler}        ",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge
                                                    ?.copyWith(fontFamily: AppFont.medium,color: AppColor.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Wrap(
                                          crossAxisAlignment:
                                          WrapCrossAlignment.end,
                                          alignment: WrapAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  10, 10, 10, 05),
                                              child: Text(
                                                "${widget.chatData.chat?[index].time}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                    color: AppColor.white,
                                                  fontFamily: AppFont.medium,),
                                                textAlign: TextAlign.end,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          );
                        });
                  }),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.appBlueColor),
                  child: TextFormField(
                    style: const TextStyle(color: AppColor.black),
                    decoration: InputDecoration(
                        filled: true,
                        // fillColor: Colors.white,
                        hintText: "type message here".tr,
                        hintStyle: TextStyle(fontFamily: AppFont.medium,),
                        prefixIcon: Icon(Icons.attachment,
                            color: Theme.of(context).iconTheme.color),
                        suffixIcon: InkWell(
                            onTap: () {
                              if (message.text.isNotEmpty) {
                                widget.chatData.chat?.add(Chat.fromJson({
                                  'customer': '${message.text}',
                                  'suppler': "",
                                  'time':
                                  '${DateTime.now().hour}:${DateTime.now().minute}'
                                }));
                                // widget.chatData["chat"].add({
                                //   'customer': '${message.text}',
                                //   'suppler': "",
                                //   'time':
                                //       '${DateTime.now().hour}:${DateTime.now().minute}'
                                // });
                                setState(() {});
                                message.clear();
                              }
                            },
                            child: Icon(Icons.send,
                                color: Theme.of(context).iconTheme.color)),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                    controller: message,
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

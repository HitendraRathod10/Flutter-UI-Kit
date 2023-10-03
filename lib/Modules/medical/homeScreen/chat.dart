import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:url_launcher/url_launcher.dart';

class Chat extends StatefulWidget {
  Map<String,dynamic> data;
   Chat({super.key,required this.data});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController message = TextEditingController();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.data["chat"][0]["customer"]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE4ECF0),
        //Colors.grey.shade200,
        appBar: AppBar(
          title: Text(widget.data["DoctorName"],
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith() /* style: TextStyle(color: AppColor.black)*/),
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
                  var url = Uri.parse('tel:${widget.data["mobile"]}');
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
                child: ListView.builder(
                    itemCount: widget.data["chat"].length,
                    reverse: false,
                    itemBuilder: (context, index) {
                      if (widget.data["chat"][index]["customer"] != "") {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(00, 10, 00, 00),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onLongPress: () {
                                  // showDeleteAlertDialog(context);
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
                                                "${widget.data["chat"][index]["customer"]}",
                                                maxLines: 3,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge
                                                    ?.copyWith(
                                                    color:
                                                    AppColor.black),
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
                                                "${widget.data["chat"][index]["time"]}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                    color:
                                                    AppColor.black),
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
                                    color: AppColor.primary_color,
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
                                            "${widget.data["chat"][index]["doctor"]}        ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(color: AppColor.white),
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
                                            "${widget.data["chat"][index]["time"]}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                color: AppColor.white),
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
                    })
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.appBlueColor),
                child: TextFormField(
                  style: const TextStyle(color: AppColor.black),
                  decoration: InputDecoration(
                      filled: true,
                      // fillColor: Colors.white,
                      hintText: "Type message here",
                      prefixIcon: Icon(Icons.attachment,
                          color: Theme.of(context).iconTheme.color),
                      suffixIcon: InkWell(
                          onTap: () {
                            if (message.text.isNotEmpty) {
                              widget.data["chat"].add({
                                'customer': '${message.text}',
                                'suppler': "",
                                'time':
                                '${DateTime.now().hour}:${DateTime.now().minute}'
                              });
                              // widget.chatData.chat?.add(Chat.fromJson({
                              //   'customer': '${message.text}',
                              //   'suppler': "",
                              //   'time':
                              //   '${DateTime.now().hour}:${DateTime.now().minute}'
                              // }));
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
        ));
  }
}

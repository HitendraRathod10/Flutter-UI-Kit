import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Chat/chat_screen.dart';

import '../utils/app_color.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chats",
          style: TextStyle(color: AppColor.black),
        ),
        backgroundColor: AppColor.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 00),
            child: SizedBox(
              height: 50,
              child: TextFormField(
                style: const TextStyle(color: AppColor.appBlueColor),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    hintText: "Search by name",
                    suffixIcon:
                    const Icon(Icons.search, color: AppColor.appBlueColor),
                    border:
                    const OutlineInputBorder(borderSide: BorderSide.none)),
                cursorColor: AppColor.appBlueColor,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 00),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ChatScreen()));
                      },
                      child: ListTile(
                        title: const Text("Dhebaram Prajapati"),
                        leading: Container(
                          padding: const EdgeInsets.all(07),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Colors.redAccent
                          ),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Xb-IQGY3AY3zA7i1CjKsXg53Eyn4ls2IGHrm9vQi_fhdG8BHBNyrJOXQ9zISGL0W8No&usqp=CAU',
                            // fit: BoxFit.cover,
                          ),
                        ),
                        subtitle: const Text("Last message "),
                        tileColor:
                            index % 2 == 0 ? Colors.grey.shade200 : AppColor.white,
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "12:30 AM",
                              style: TextStyle(fontSize: 12),
                            ),
                            const SizedBox(
                              height: 03,
                            ),
                            Container(
                              padding: const EdgeInsets.all(07),
                              decoration: const BoxDecoration(
                                color: AppColor.appBlueColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Text(
                                "5",
                                style: TextStyle(fontSize: 12, color: AppColor.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

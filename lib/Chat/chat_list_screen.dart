import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Chat/chat_screen.dart';
import 'package:flutter_ui_kit/model/service_model.dart';
import 'package:provider/provider.dart';

import '../Home/home_provider.dart';
import '../utils/app_color.dart';
import '../utils/no_data_found_screen.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<HomeProvider>(context, listen: false).getRecommaned('Chat');
  }

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "  Chats",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(),
          ),
          automaticallyImplyLeading: false,
          // backgroundColor: AppColor.white,
          // centerTitle: true,
        ),
        body: Consumer<HomeProvider>(
            builder: (BuildContext context, snap, child) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 00),
                child: Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).primaryColorLight,
                    border: Border.all(
                      color: Theme.of(context).primaryColorLight,
                      width: 1.5,
                    ),
                  ),
                  child: TextFormField(
                    style: const TextStyle(color: AppColor.appBlueColor),
                    onChanged: snap.onSearchTextChanged,
                    controller: snap.searchController,
                    decoration: InputDecoration(
                        filled: true,
                        // fillColor: Theme.of(context).backgroundColor,
                        hintText: "Search by name",
                        contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                        suffixIcon: snap.searchResult.isEmpty ? Icon(Icons.search,
                            color: Theme.of(context).iconTheme.color) : IconButton(onPressed: ()=> snap.clearText(), icon: Icon(Icons.clear,color: Theme.of(context).iconTheme.color)) ,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                    cursorColor: AppColor.appBlueColor,
                  ),
                ),
              ),
              Expanded(
                  child: snap.searchResult.isNotEmpty ||
                          snap.searchController.text.isNotEmpty
                      ? snap.searchResult.isEmpty ? const NoDataFoundScreen() : ListView.builder(
                          shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          itemCount: providerData.searchResult.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 00),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatScreen(
                                              providerData
                                                  .searchResult[index])));
                                },
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text(
                                          "${providerData.searchResult[index].title}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall),
                                      leading: Container(
                                        padding: const EdgeInsets.all(07),
                                        height: 50,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          // color: Colors.redAccent
                                        ),
                                        child: CircleAvatar(
                                          backgroundColor: Color(0xffE6E6E6),
                                          radius: 30,
                                          child: Icon(
                                            Icons.person,
                                            color: Color(0xffCCCCCC),
                                          ),
                                        ),
                                        /* Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Xb-IQGY3AY3zA7i1CjKsXg53Eyn4ls2IGHrm9vQi_fhdG8BHBNyrJOXQ9zISGL0W8No&usqp=CAU',
                            // fit: BoxFit.cover,
                          ),*/
                                      ),
                                      subtitle: Text(
                                          "${providerData.searchResult[index].chat?.last.customer != "" ? providerData.searchResult[index].chat?.last.customer : providerData.searchResult[index].chat?.last.suppler}"),
                                      // tileColor: index % 2 == 0 ? Colors.grey.shade200 : AppColor.white,
                                      trailing: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "${providerData.searchResult[index].chat?.last.time}",
                                            style:
                                                const TextStyle(fontSize: 12),
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
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: AppColor.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                      style:
                                          Theme.of(context).listTileTheme.style,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          })
                      : ListView.builder(
                          shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          itemCount: providerData.realStateChatData.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 00),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatScreen(
                                              providerData
                                                  .realStateChatData[index])));
                                },
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text(
                                          "${providerData.realStateChatData[index].title}",
                                          maxLines: 1,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall),
                                      leading: Container(
                                        padding: const EdgeInsets.all(07),
                                        height: 50,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          // color: Colors.redAccent
                                        ),
                                        child: CircleAvatar(
                                          backgroundColor: Color(0xffE6E6E6),
                                          radius: 30,
                                          child: Icon(
                                            Icons.person,
                                            color: Color(0xffCCCCCC),
                                          ),
                                        ),
                                        /* Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9Xb-IQGY3AY3zA7i1CjKsXg53Eyn4ls2IGHrm9vQi_fhdG8BHBNyrJOXQ9zISGL0W8No&usqp=CAU',
                            // fit: BoxFit.cover,
                          ),*/
                                      ),
                                      subtitle: Text(
                                          "${providerData.realStateChatData[index].chat?.last.customer != "" ? providerData.realStateChatData[index].chat?.last.customer : providerData.realStateChatData[index].chat?.last.suppler}",maxLines: 1, style: TextStyle(fontSize: 12),),
                                      // tileColor: index % 2 == 0 ? Colors.grey.shade200 : AppColor.white,
                                      trailing: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "${providerData.realStateChatData[index].chat?.last.time}",
                                            style:
                                                const TextStyle(fontSize: 12),
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
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: AppColor.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                      style:
                                          Theme.of(context).listTileTheme.style,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          })),
            ],
          );
        }));
  }
}

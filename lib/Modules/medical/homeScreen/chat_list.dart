import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/homeScreen/chat.dart';

import '../../real_estate/utils/app_color.dart';

class Chat_List extends StatefulWidget {
  const Chat_List({super.key});

  @override
  State<Chat_List> createState() => _Chat_ListState();
}

class _Chat_ListState extends State<Chat_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE4ECF0),
      appBar: AppBar(
        title: Text("Chats"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: ListView.separated(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          itemCount: recommendedData.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
              const EdgeInsets.fromLTRB(8.0, 0, 8.0, 00),
              child: InkWell(
                onTap: () {
Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Chat(data: recommendedData[index])));
                },
                child: ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                      recommendedData[index]["DoctorName"],
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall?.copyWith(fontWeight: FontWeight.bold)),
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                    ),
                    child: ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.network(recommendedData[index]["profile"],fit: BoxFit.fill,)),
                  ),
                  subtitle: Text(
                    recommendedData[index]["chat"][recommendedData[index]["chat"].length - 1]["customer"] != ""?recommendedData[index]["chat"][recommendedData[index]["chat"].length - 1]["customer"]:recommendedData[index]["chat"][recommendedData[index]["chat"].length - 1]["doctor"],maxLines: 1, style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                  // tileColor: index % 2 == 0 ? Colors.grey.shade200 : AppColor.white,
                  trailing: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    crossAxisAlignment:
                    CrossAxisAlignment.end,
                    children: [
                      Text(
                        "12:20",
                        style:
                        const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        height: 03,
                      ),
                      recommendedData[index]["unreadMsgCount"] != "0"?  Container(
                        padding: const EdgeInsets.all(07),
                        decoration: const BoxDecoration(
                          color: AppColor.appBlueColor,
                          shape: BoxShape.circle,
                        ),
                        child:  Text(
                          recommendedData[index]["unreadMsgCount"],
                          style: TextStyle(
                              fontSize: 12,
                              color: AppColor.white),
                        ),
                      ):SizedBox(),
                    ],
                  ),
                  style:
                  Theme.of(context).listTileTheme.style,
                ),
              ),
            );
          }, separatorBuilder: (BuildContext context, int index) { return Divider(thickness: 2,color: Colors.grey,); },),
    );
  }
  List recommendedData = [
    {
      "id": 1001,
      "DoctorName":"Dr Emma Royd",
      "unreadMsgCount":"1",
      "profile":"https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg",
      "chat": [
        {"customer": "Hi", "doctor": "", "time": "6.30"},
        {"customer": "Good AfterNoon", "doctor": "", "time": "6.30"},
        {"customer": "", "doctor": "Good AfterNoon", "time": "8.30"},
        {
          "customer": "I am interested For book your appointment so when you are available Today?",
          "doctor": "",
          "time": "8.30"
        },
        {
          "customer": "",
          "doctor": "Sorry, Today I am not available if possible than you can book your appointment tomorrow",
          "time": "9.30"
        }
      ],
      "mobile": "+91 6355962307",
      "published": "September 20, 2020"
    },
    {
      "id": 1002,
      "DoctorName":"Dr Ova Ree",
      "unreadMsgCount":"0",
      "profile":"https://static.vecteezy.com/system/resources/previews/005/520/145/original/cartoon-drawing-of-a-doctor-vector.jpg",
      "chat": [
        {"customer": "Hi", "doctor": "", "time": "6.30"},
        {"customer": "Good AfterNoon", "doctor": "", "time": "6.30"},
        {"customer": "", "doctor": "Good AfterNoon", "time": "8.30"},
        {
          "customer": "I am interested For book your appointment so when you are available Today?",
          "doctor": "",
          "time": "8.30"
        },
        {
          "customer": "",
          "doctor": "Sorry, Today I am not available if possible than you can book your appointment tomorrow",
          "time": "9.30"
        }
      ],
      "mobile": "+91 6355962307",
      "published": "September 20, 2020"
    },
    {
      "id": 1003,
      "DoctorName":"Dr Tess Tickle",
      "unreadMsgCount":"3",
      "profile":"https://www.thewmch.com/wp-content/uploads/2023/02/female-doctor-using-her-digital-tablet-free-vector.jpg",
      "chat": [
        {"customer": "Hi", "doctor": "", "time": "6.30"},
        {"customer": "Good AfterNoon", "doctor": "", "time": "6.30"},
        {"customer": "", "doctor": "Good AfterNoon", "time": "8.30"},
        {
          "customer": "I am interested For book your appointment so when you are available Today?",
          "doctor": "",
          "time": "8.30"
        },
        {
          "customer": "",
          "doctor": "Sorry, Today I am not available if possible than you can book your appointment tomorrow",
          "time": "9.30"
        }
      ],
      "mobile": "+91 6355962307",
      "published": "September 20, 2020"
    },
    {
      "id": 1004,
      "DoctorName":"Dr D. Livery",
      "unreadMsgCount":"0",

      "profile":"https://www.nicepng.com/png/detail/940-9403152_big-image-doctor-clipart.png",
      "chat": [
        {"customer": "Hi", "doctor": "", "time": "6.30"},
        {"customer": "Good AfterNoon", "doctor": "", "time": "6.30"},
        {"customer": "", "doctor": "Good AfterNoon", "time": "8.30"},
        {
          "customer": "I am interested For book your appointment so when you are available Today?",
          "doctor": "",
          "time": "8.30"
        },
        {
          "customer": "",
          "doctor": "Sorry, Today I am not available if possible than you can book your appointment tomorrow",
          "time": "9.30"
        }
      ],
      "mobile": "+91 6355962307",
      "published": "September 20, 2020"
    },
    {
      "id": 1005,
      "DoctorName":"Dr L. Bow",
      "unreadMsgCount":"0",
      "profile":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK2AqBLk_0O8soHumWItasnbOkPN_jntLJAw&usqp=CAU",
      "chat": [
        {"customer": "Hi", "doctor": "", "time": "6.30"},
        {"customer": "Good AfterNoon", "doctor": "", "time": "6.30"},
        {"customer": "", "doctor": "Good AfterNoon", "time": "8.30"},
        {
          "customer": "I am interested For book your appointment so when you are available Today?",
          "doctor": "",
          "time": "8.30"
        },
        {
          "customer": "",
          "doctor": "Sorry, Today I am not available if possible than you can book your appointment tomorrow",
          "time": "9.30"
        }
      ],
      "mobile": "+91 6355962307",
      "published": "September 20, 2020"
    },
    {
      "id": 1006,
      "DoctorName":"Dr Bobby Orange (B.O.)",
      "unreadMsgCount":"0",
      "profile":"https://previews.123rf.com/images/yayayoy/yayayoy1205/yayayoy120500015/13677714-kid-doctor.jpg",
      "chat": [
        {"customer": "Hi", "doctor": "", "time": "6.30"},
        {"customer": "Good AfterNoon", "doctor": "", "time": "6.30"},
        {"customer": "", "doctor": "Good AfterNoon", "time": "8.30"},
        {
          "customer": "I am interested For book your appointment so when you are available Today?",
          "doctor": "",
          "time": "8.30"
        },
        {
          "customer": "",
          "doctor": "Sorry, Today I am not available if possible than you can book your appointment tomorrow",
          "time": "9.30"
        }
      ],
      "mobile": "+91 6355962307",
      "published": "September 20, 2020"
    },
    {
      "id": 1007,
      "DoctorName":"Dr Richard Head",
      "unreadMsgCount":"0",
      "profile":"https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/7818954/woman-doctor-clipart-xl.png",
      "chat": [
        {"customer": "Hi", "doctor": "", "time": "6.30"},
        {"customer": "Good AfterNoon", "doctor": "", "time": "6.30"},
        {"customer": "", "doctor": "Good AfterNoon", "time": "8.30"},
        {
          "customer": "I am interested For book your appointment so when you are available Today?",
          "doctor": "",
          "time": "8.30"
        },
        {
          "customer": "",
          "doctor": "Sorry, Today I am not available if possible than you can book your appointment tomorrow",
          "time": "9.30"
        }
      ],
      "mobile": "+91 6355962307",
      "published": "September 20, 2020"
    },
  ];


}

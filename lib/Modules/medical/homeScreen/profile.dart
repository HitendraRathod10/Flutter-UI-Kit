import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_image.dart';

import '../Login/login_screen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    print("${MediaQuery.of(context).size.width}");
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: customClipper(),
                        child: Container(
                          height: MediaQuery.of(context).size.height/2.5,
                          color: AppColor.primary_color.withAlpha(20),
                        ),
                      ),
                      ClipPath(
                        clipper: customClipper(),
                        child: Container(
                            padding: EdgeInsets.only(top: 50,left: 20),
                            height: MediaQuery.of(context).size.height/2.8,
                            width: MediaQuery.of(context).size.width,
                            color: AppColor.primary_color,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                // Padding(
                                //   padding: EdgeInsets.only(left: 15.0),
                                //   child: Text("Profile",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold,fontSize: 30),textAlign: TextAlign.center,),
                                // ),
                               SizedBox(height: 10,),
                               CircleAvatar(
                                 radius: MediaQuery.of(context).size.width/5.088,
                            backgroundImage: NetworkImage("https://img.freepik.com/free-photo/attractive-young-male-nutriologist-lab-coat-smiling-against-white-background_662251-2960.jpg"),
                        )

                              ],
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height/3,
                  left: 20,
                  right: 20,
                  child: Container(
                    width: MediaQuery.of(context).size.width,


                    margin:const EdgeInsets.symmetric(vertical: 15),
                    // padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
con(icon: Icons.person, name: "Jigar Ghodasara"),
SizedBox(height: 20,),
con(icon: Icons.email_outlined, name: "jigargodasara@elsner.com"),
                          SizedBox(height: 20,),

con(icon: Icons.calendar_month, name: "21/11/2001"),
                          SizedBox(height: 20,),
                          con(icon: Icons.phone, name: "+91 6355962307"),

                          SizedBox(height: 50,),

                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>const Login_Screen()), (route) => false);
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 100,vertical: 15),
                              padding: const EdgeInsets.symmetric(vertical: 18.0),
                              width: MediaQuery.of(context).size.width,
                              child: Center(child: Text("Logout",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
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
                                        offset: Offset(3, 10)
                                    )
                                  ]
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget con({required IconData icon,required String name}){
  return   Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: AppColor.primary_color.withAlpha(50),
            offset:const Offset(0, -5),
            blurRadius: 12,
          )
        ]
    ),
    padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 12),

    child: Row(
      children: [
        Icon(icon),
        SizedBox(width: 10,),
        Expanded(child: Text(name,style:TextStyle(fontSize: 15,fontWeight: FontWeight.w300)))
      ],
    ),
  );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/homeScreen/home_screen.dart';

import '../Forgot password/forgot_password_screen.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE4ECF0),
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
                          height: MediaQuery.of(context).size.height / 2.5,
                          color: AppColor.primary_color.withAlpha(20),
                        ),
                      ),
                      ClipPath(
                        clipper: customClipper(),
                        child: Container(
                            padding: const EdgeInsets.only(top: 15, left: 20),
                            height: MediaQuery.of(context).size.height / 2.8,
                            width: MediaQuery.of(context).size.width,
                            color: AppColor.primary_color,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(onTap: (){
                                  Navigator.pop(context);
                                },
                                    child: const Icon(Icons.arrow_back,color: AppColor.white,)),
                                // Padding(
                                //   padding: EdgeInsets.only(left: 15.0),
                                //   child: Text("Profile",style: TextStyle(color: AppColor.white,fontWeight: FontWeight.bold,fontSize: 30),textAlign: TextAlign.center,),
                                // ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius:
                                          MediaQuery.of(context).size.width /
                                              5.088,
                                      backgroundImage: const NetworkImage(
                                          "https://cdn.pixabay.com/photo/2017/11/02/14/27/model-2911332_640.jpg"),
                                    ),
                                    const Positioned(
                                        bottom: 0,
                                        right: 10,
                                        child: CircleAvatar(
                                            radius: 20,
                                            child: Icon(
                                              Icons.edit,
                                              color: AppColor.white,
                                            )))
                                  ],
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 3,
                  left: 20,
                  right: 20,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Name',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            initialValue: "John Deo"),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            initialValue: "johndeo@gmail.com"),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Date of Birth',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            initialValue: "01/06/1980"),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Contact Number',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            initialValue: "9876543210"),
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Home_Screen()),
                                  (route) => false);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(colors: [
                                    AppColor.primary_color,
                                    AppColor.primary_color.withAlpha(80),
                                  ]),
                                  boxShadow: [
                                    BoxShadow(
                                        color: AppColor.primary_color
                                            .withAlpha(20),
                                        blurRadius: 10,
                                        offset: const Offset(3, 10))
                                  ]),
                              child: const Center(
                                child: Text(
                                  "Update",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
}

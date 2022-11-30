import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text("Edit profile",style: TextStyle(color: AppColor.black)),
        backgroundColor: AppColor.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios, color: AppColor.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 00, 15, 00),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: ClipOval(
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ72nARG6ueWpDbDXkXV137m7fVt2ALVshZwg&usqp=CAU",
                    height: 150,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.6,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.appBlueColor
                ),
                child: const Center(
                    child: Text("Change Profile Photo",
                      style: TextStyle(color: AppColor.white,fontSize: 17,fontWeight: FontWeight.w700),)),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  style: const TextStyle(color: AppColor.black),
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Username",
                      border:
                      OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    prefixIcon: Icon(Icons.person,color: AppColor.black,),
                    prefixIconColor: AppColor.black,
                  ),
                  cursorColor: AppColor.appBlueColor,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter required fields';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  style: const TextStyle(color: AppColor.black),
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Email",
                      border:
                      OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    prefixIcon: Icon(Icons.mail,color: AppColor.black,),
                    prefixIconColor: AppColor.black,
                  ),
                  cursorColor: AppColor.appBlueColor,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter required fields';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  style: const TextStyle(color: AppColor.black),
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Contact no.",
                      border:
                      OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    prefixIcon: Icon(Icons.phone,color: AppColor.black,),
                    prefixIconColor: AppColor.black,
                  ),
                  cursorColor: AppColor.appBlueColor,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter required fields';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.appBlueColor
                ),
                child: const Center(
                    child: Text("Save Changes",
                      style: TextStyle(color: AppColor.white,fontSize: 25,fontWeight: FontWeight.w700),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

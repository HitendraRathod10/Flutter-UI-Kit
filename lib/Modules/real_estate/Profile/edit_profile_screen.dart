import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/real_estate/utils/app_font.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../utils/app_color.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}
enum ImageSourceType { gallery, camera }
class _EditProfileScreenState extends State<EditProfileScreen> {

  var _image;
  var imagePicker;
  var type;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imagePicker = ImagePicker();
  }

  openCamera() async {
    XFile image = await imagePicker.pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
    );
    setState(() {
      _image = File(image.path);
    });
  }

  openGallery() async {
    XFile image = await imagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
    );
    setState(() {
      _image = File(image.path);
    });
  }

  showAlertOfCameraAndGallery() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              'choose where you want to select the image',
              style: TextStyle(fontFamily: AppFont.semiBold),
            ),
            actionsAlignment: MainAxisAlignment.spaceEvenly,
            actions: [
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).buttonTheme.colorScheme!.background),
                    elevation: MaterialStateProperty.all<double>(10)),
                onPressed: () {
                  openCamera();
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Camera',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).buttonTheme.colorScheme!.background),
                    elevation: MaterialStateProperty.all<double>(10)),
                onPressed: () {
                  openGallery();
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Gallery',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("edit profile".tr,style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: AppFont.semiBold,)),
        // backgroundColor: AppColor.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Theme.of(context).iconTheme.color)),
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
              _image != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.file(
                        _image,
                        height: 160,
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Center(
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
              GestureDetector(
                onTap: () async {
                  showAlertOfCameraAndGallery();
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.6,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).buttonTheme.colorScheme?.background),
                  child: Center(
                      child: Text(
                    "change profile photo".tr,
                    style: const TextStyle(
                      color: AppColor.white,
                      fontSize: 17,
                      fontFamily: AppFont.regular,
                    ),
                  )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).primaryColorLight,
                  border: Border.all(
                    color: Theme.of(context).primaryColorLight,
                    width: 1.5,
                  ),
                ),
                height: 50,
                child: TextFormField(
                  style: const TextStyle(color: AppColor.black),
                  decoration: InputDecoration(
                      filled: true,
                      // fillColor: Theme.of(context).hintColor,
                      hintText: "username".tr,
                      hintStyle: TextStyle(fontFamily: AppFont.regular,),
                      border:
                      OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    prefixIcon: Icon(Icons.person,color: Theme.of(context).iconTheme.color),
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).primaryColorLight,
                  border: Border.all(
                    color: Theme.of(context).primaryColorLight,
                    width: 1.5,
                  ),
                ),
                height: 50,
                child: TextFormField(
                  style: const TextStyle(color: AppColor.black),
                  decoration: InputDecoration(
                      filled: true,
                      // fillColor: Theme.of(context).hintColor,
                      hintText: "email".tr,
                      hintStyle: TextStyle(fontFamily: AppFont.regular,),
                      border:
                      OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    prefixIcon: Icon(Icons.mail,color: Theme.of(context).iconTheme.color),
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).primaryColorLight,
                  border: Border.all(
                    color: Theme.of(context).primaryColorLight,
                    width: 1.5,
                  ),
                ),
                height: 50,
                child: TextFormField(
                  // style: const TextStyle(color: AppColor.black),
                  decoration: InputDecoration(
                      filled: true,
                      // fillColor: Theme.of(context).hintColor,
                      hintText: "contact no".tr,
                      hintStyle: TextStyle(fontFamily: AppFont.regular,),
                      border:
                      OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    prefixIcon: Icon(Icons.phone,color: Theme.of(context).iconTheme.color),
                    prefixIconColor: AppColor.black,
                  ),
                  // cursorColor: AppColor.appBlueColor,
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
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                  Fluttertoast.showToast(
                      msg:
                      "Profile edited successfully.",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: AppColor.appBlueColor,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).buttonTheme.colorScheme?.background
                  ),
                  child: Center(
                      child: Text("save changes".tr,
                        style: const TextStyle(color: AppColor.white,fontSize: 20,fontFamily: AppFont.medium),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

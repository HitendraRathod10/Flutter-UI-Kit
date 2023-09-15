import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Login/login_screen.dart';
import '../utils/app_color.dart';
import '../utils/theme_controller.dart';
import 'app_settings_screen.dart';
import 'bookmarks_screen.dart';
import 'change_password_screen.dart';
import 'edit_profile_screen.dart';
import 'language_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

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
              'No',
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
            // Navigator.pop(context);
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> const LoginScreen()), (route) => false);
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
      title: const Text("Logout",style: TextStyle(fontSize: 25),),
      content: const Text("Are you sure want to logout ?",style: TextStyle(color: AppColor.black,fontSize: 20)),
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
  ThemeController themeController = Get.put(ThemeController());
  TextStyle fixedStyle = GoogleFonts.roboto(
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: AppColor.white,
        title: Text(
          "  Profile",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(),
        ),
        automaticallyImplyLeading: false,
        // centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditProfileScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 00),
                child: Card(
                  // color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        children: [
                          const Icon(Icons.person),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Edit Profile",style: Theme.of(context).textTheme.titleMedium,),
                          const Spacer(),
                          const Icon(Icons.chevron_right)
                        ],
                      ),
                    )),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChangePasswordScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 00, 10, 00),
                child: Card(
                  // color: AppColor.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        children: [
                          const Icon(Icons.password),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Change Password",style: Theme.of(context).textTheme.titleMedium,),
                          const Spacer(),
                          const Icon(Icons.chevron_right)
                        ],
                      ),
                    )),
              ),
            ),
            /*InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 00, 10, 00),
              child: Card(
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: const [
                        Icon(Icons.notifications),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Notifications"),
                        Spacer(),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  )),
            ),
          ),*/
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const BookmarksScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 00, 10, 00),
                child: Card(
                  // color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        children: [
                          const Icon(Icons.bookmark),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Bookmarks",style: Theme.of(context).textTheme.titleMedium),
                          const Spacer(),
                          const Icon(Icons.chevron_right)
                        ],
                      ),
                    )),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const LanguageScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 00, 10, 00),
                child: Card(
                  // color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        children: [
                          const Icon(Icons.language),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Language",style: Theme.of(context).textTheme.titleMedium),
                          const Spacer(),
                          const Icon(Icons.chevron_right)
                        ],
                      ),
                    )),
              ),
            ),
            /*InkWell(
            onTap: ()=> themeController.changeThemeMode(ThemeMode.dark),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 00, 10, 00),
              child: Card(
                  // color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Obx(
                            () {
                              return Row(
                                children: [
                                  Icon(
                                    themeController.isDarkMode.value
                                        ? Icons.wb_sunny_outlined
                                        : Icons.nightlight_outlined,
                                    color: themeController.isDarkMode.value ? Colors.white : Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                      themeController.isDarkMode.value
                                          ? 'Light Mode'
                                          : 'Dark Mode',
                                      style: themeController.isDarkMode.value ?
                                      GoogleFonts.roboto(color: Colors.white)
                                          : GoogleFonts.roboto(color: Colors.black)),
                                  const Spacer(),
                                  const Icon(Icons.chevron_right)
                                ],
                              );
                            }),
                  )),
            ),
          ),*/
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AppSettingsScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 00, 10, 00),
                child: Card(
                  // color: AppColor.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        children: [
                          const Icon(Icons.settings),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("App Settings",style: Theme.of(context).textTheme.titleMedium),
                          const Spacer(),
                          const Icon(Icons.chevron_right)
                        ],
                      ),
                    )),
              ),
            ),
            InkWell(
              onTap: (){
                showDeleteAlertDialog(context);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 00, 10, 00),
                child: Card(
                  // color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        children: [
                          const Icon(Icons.power_settings_new),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Logout",style: Theme.of(context).textTheme.titleMedium),
                          // Spacer(),
                          // Icon(Icons.chevron_right)
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

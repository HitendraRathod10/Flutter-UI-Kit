import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Forgot%20password/forgot_password_screen.dart';
import 'package:flutter_ui_kit/Home/bottom_navigation_bar_screen.dart';
import 'package:flutter_ui_kit/Home/home_provider.dart';
import 'package:flutter_ui_kit/Home/home_screen.dart';
import 'package:flutter_ui_kit/Register/register_screen.dart';
import 'package:provider/provider.dart';

import '../utils/app_color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.6, 0.7],
                  colors: [Color(0xFFC295F7), Color(0xFF869CF3), Color(0xFF74A5FB)],
                )),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height/5,),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        children: [
                          TextSpan(
                            text: "Welcome,\n",
                          ),
                          WidgetSpan(
                              child: SizedBox(
                                height: 30,
                              )),
                          TextSpan(
                              text: "In the real estate world !",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.normal))
                        ],
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          labelText: "Email Address",
                          labelStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            // fontWeight: FontWeight.normal,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 2,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 2,
                              )),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        cursorColor: Colors.white,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Email';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          labelText: "Password",
                          labelStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            // fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 2,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 2,
                              )),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          suffixIcon:
                          const Icon(Icons.remove_red_eye, color: Colors.white),
                        ),
                        cursorColor: Colors.white,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(00, 00, 20, 00),
                      child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
                          },
                          child: Container(
                              alignment: Alignment.centerRight,
                              child: Text("Forgot password?",
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17),))),
                    ),
                    const SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 00, 20, 00),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarScreen()));
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(2, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: const Center(
                              child: Text("Login",
                                style: TextStyle(
                                  color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 80,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 01,
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width/4,
                        ),
                        const Text("  Or Login with  ",style: TextStyle(color: Colors.white,fontSize: 15),),
                        Container(
                          height: 01,
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width/4,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1200px-Google_%22G%22_Logo.svg.png"),
                          ),),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrUD4aUMSFm_MCu10W2kV0arxuOqScLZedEQ&usqp=CAU"),
                          ),),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Twitter-logo.svg/800px-Twitter-logo.svg.png"),
                          ),)
                      ],
                    ),
                    const SizedBox(height: 50,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                      },
                      child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFF74A5FB),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account yet?",style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColor.white),),
                              Text(" SignUp",style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppColor.white,fontWeight: FontWeight.bold,letterSpacing: 2)),
                            ],
                          )
                      ),
                    ),
                    const SizedBox(height: 50,),
                  ],
                ),
              ),
              /*Positioned(
                left: 0,
                right: 0,
                // top: MediaQuery.of(context).size.height / 7,
                top: 100,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    children: [
                      TextSpan(
                        text: "Welcome,\n",
                      ),
                      WidgetSpan(
                          child: SizedBox(
                        height: 30,
                      )),
                      TextSpan(
                          text: "In the real estate world !",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.normal))
                    ],
                  ),
                ),
              ),*/
              /*Positioned(
                left: 0,
                right: 0,
                // top: MediaQuery.of(context).size.height / 3.5,
                top: 220,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.3),
                      labelText: "Email",
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2,
                          )),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                    cursorColor: Colors.white,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Email';
                      }
                      return null;
                    },
                  ),
                ),
              ),*/
              /*Positioned(
                left: 0,
                right: 0,
                // top: MediaQuery.of(context).size.height / 2.6,
                top: 300,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.3),
                      labelText: "Password",
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2,
                          )),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      suffixIcon:
                          const Icon(Icons.remove_red_eye, color: Colors.white),
                    ),
                    cursorColor: Colors.white,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                  ),
                ),
              ),*/
              /*Positioned(
                right: 20,
                top: 370, child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
                  },
                  child: Text("Forgot password?",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17),))),*/
              /*Positioned(
                top: 450,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Center(
                        child: Text("Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        )),
                  )),*/
              /*Positioned(
                  left: 20,
                  right: 20,
                  top: 550,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 01,
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width/4,
                      ),
                      const Text("  Or Login with  ",style: TextStyle(color: Colors.white,fontSize: 15),),
                      Container(
                        height: 01,
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width/4,
                      ),
                    ],
                  )),*/
              /*Positioned(
                left: 20,
                  right: 20,
                  top: 590,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1200px-Google_%22G%22_Logo.svg.png"),
                        ),),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrUD4aUMSFm_MCu10W2kV0arxuOqScLZedEQ&usqp=CAU"),
                        ),),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Twitter-logo.svg/800px-Twitter-logo.svg.png"),
                        ),)
                    ],
                  )),*/
              /*Positioned(
                  left: 20,
                  right: 20,
                  top: 730,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                          "Don't have an account yet ? ",
                          style: TextStyle(color: Colors.white)
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterScreen()));
                        },
                        child: const Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)
                        ),
                      ),
                    ],
                  ),)*/
            ],
          ),
    );
  }
}

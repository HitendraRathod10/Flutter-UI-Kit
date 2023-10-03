import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_color.dart';
import 'package:flutter_ui_kit/Modules/medical/Utils/app_image.dart';

import '../Login/login_screen.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({super.key});

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen>  with TickerProviderStateMixin{
  late AnimationController controller;
  late Animation<int> _characterCount;
  bool _passwordInVisible = true;
  bool _confirmPasswordInVisible = true;
  String _currentString = "Welcome, \nBack";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
    _characterCount = new StepTween(begin: 0, end: _currentString.length)
        .animate(new CurvedAnimation(parent: controller, curve: Curves.easeIn));

    controller.forward().then((value) => Future.delayed(Duration(milliseconds: 500),()=>controller.repeat()));

    // controller.addListener(() {
    //   if (controller.isCompleted) {
    //     controller.forward();
    //   }
    //   if(controller.isDismissed){
    //     controller.forward();
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
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
                            padding: EdgeInsets.only(top: 100,left: 20),
                            height: MediaQuery.of(context).size.height/2.8,
                            width: MediaQuery.of(context).size.width,
                            color: AppColor.primary_color,
                            child: AnimatedBuilder(animation: _characterCount, builder: (BuildContext context,Widget? child){
                              String text = _currentString.substring(0, _characterCount.value);
                              return Text(text,style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),);
                            })
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(top:MediaQuery.of(context).size.height/7 ,right: 15,child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(AppImage.medical_hospital,height: MediaQuery.of(context).size.width/2.5,width: MediaQuery.of(context).size.width/2.5,),
                )),
                Positioned(
                  top: MediaQuery.of(context).size.height/3,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Sign Up",style: TextStyle(color: AppColor.primary_color,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 8),
                              hintText: "Email Id",
                              errorMaxLines: 2,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColor.primary_color),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder:OutlineInputBorder(
                                borderSide: BorderSide(color: AppColor.primary_color),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 15),
                          child: TextFormField(
                            obscureText: _passwordInVisible,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 8),
                              hintText: "Password",
                              errorMaxLines: 2,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColor.primary_color),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder:OutlineInputBorder(
                                borderSide: BorderSide(color: AppColor.primary_color),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              suffixIcon:    IconButton(
                                icon: Icon(
                                  _passwordInVisible ? Icons.visibility : Icons.visibility_off, //change icon based on boolean value
                                  color: Theme.of(context).primaryColorDark,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordInVisible = !_passwordInVisible; //change boolean value
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 15),
                          child: TextFormField(
                            obscureText: _passwordInVisible,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 8),
                              hintText: "Confirm Password",
                              errorMaxLines: 2,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColor.primary_color),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder:OutlineInputBorder(
                                borderSide: BorderSide(color: AppColor.primary_color),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              suffixIcon:    IconButton(
                                icon: Icon(
                                  _confirmPasswordInVisible ? Icons.visibility : Icons.visibility_off, //change icon based on boolean value
                                  color: Theme.of(context).primaryColorDark,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _confirmPasswordInVisible = !_confirmPasswordInVisible; //change boolean value
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          width: MediaQuery.of(context).size.width,
                          child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
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
                        const SizedBox(height: 80,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 01,
                              color: Colors.grey,
                              width: MediaQuery.of(context).size.width/4,
                            ),
                            const Text("  Or Sign Up with  ",style: TextStyle(color: Colors.black,fontSize: 15),),
                            Container(
                              height: 01,
                              color: Colors.grey,
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
                                child: Image.asset(AppImage.medical_google),
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
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login_Screen()));
                          },
                          child: Container(

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Don't have an account yet?",style: Theme.of(context).textTheme.titleMedium?.copyWith(),),
                                  Text(" Login",style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppColor.primary_color,fontWeight: FontWeight.bold,fontSize: 18)),
                                ],
                              )
                          ),
                        ),
                        const SizedBox(height: 50,),
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

import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.6, 0.7],
                    colors: [
                      Color(0xFFC295F7),
                      Color(0xFF869CF3),
                      Color(0xFF74A5FB)
                    ],
                  )),
            ),
            Positioned(
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
                      text: "Create Account \n",
                    ),
                    // WidgetSpan(
                    //     child: SizedBox(
                    //       height: 35,
                    //     )),
                    // TextSpan(
                    //     text: "To get started now !",
                    //     style: TextStyle(
                    //         fontSize: 30, fontWeight: FontWeight.normal))
                  ],
                ),
              ),
            ),
            Positioned(
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
            ),
            Positioned(
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
            ),
            Positioned(
              left: 0,
              right: 0,
              // top: MediaQuery.of(context).size.height / 2.6,
              top: 380,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.3),
                    labelText: "Confirm Password",
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
            ),
            Positioned(
                top: 480,
                left: 20,
                right: 20,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Center(
                      child: Text("Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )),
                )),
            Positioned(
                left: 20,
                right: 20,
                top: 640,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 01,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width/4,
                    ),
                    const Text("  Or Sign Up with  ",style: TextStyle(color: Colors.white,fontSize: 15),),
                    Container(
                      height: 01,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width/4,
                    ),
                  ],
                )),
            Positioned(
                left: 20,
                right: 20,
                top: 680,
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
                )),
            Positioned(
              left: 20,
              right: 20,
              top: 800,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      "Already have an account ? ",
                      style: TextStyle(color: Colors.white)
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                    },
                    child: const Text(
                        'Log in',
                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)
                    ),
                  ),
                ],
              ),)
          ],
        ),
      ),
    );
  }
}

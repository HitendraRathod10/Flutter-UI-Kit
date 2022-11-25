import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Register/register_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
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
              left: 20,
              top: 80,
              child: InkWell(
                child: const Icon(Icons.arrow_back_ios,color: Colors.white,),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const Positioned(
              top: 150,
              left: 20,
              child: Text(
                "Reset Your Password",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                    // fontFamily: AppFont.semiBold
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 240,
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
              top: 360,
              left: 20,
              right: 20,
              child: InkWell(
                  onTap: () {},
                  child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      alignment: Alignment.center,
                      child: const Text(
                        "Reset Password",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ))),
            ),
            Positioned(
              top: 480,
              left: 00,
              right: 00,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't Have An Account Yet? ",
                    style: TextStyle(
                      color: Colors.white
                        // fontFamily: AppFont.regular
                    ),
                  ),
                  InkWell(
                    child: const Text(
                      "Signup",
                      style: TextStyle(
                          color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                          // fontFamily: AppFont.semiBold
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const RegisterScreen()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

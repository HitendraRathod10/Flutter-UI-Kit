import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Login/login_screen.dart';
import 'package:flutter_ui_kit/Register/register_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
                "https://images.pexels.com/photos/5563472/pexels-photo-5563472.jpeg?auto=compress&cs=tinysrgb&w=600",
            fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/8,
            child: const Text("Let""'""s find your",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold))
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/5.5,
            child: const Text("Dream Home",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))
          ),
          Positioned(
            bottom: 50,
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                    decoration: BoxDecoration(
                      border: Border.all(width: 02,color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.1, 0.6, 0.7],
                          colors: [
                            Color(0xFFC295F7),
                            Color(0xFF869CF3),
                            Color(0xFF74A5FB)
                          ],
                        )
                    ),
                    child: const Center(child: Text("Log in",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),)),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                    decoration: BoxDecoration(
                        border: Border.all(width: 02,color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.1, 0.6, 0.7],
                          colors: [
                            Color(0xFFC295F7),
                            Color(0xFF869CF3),
                            Color(0xFF74A5FB)
                          ],
                        )
                    ),
                    child: const Center(child: Text("Register",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            color: Colors.red.shade100,
          ),
          Positioned(
            top: 50,
            child: Text("Let""'""s find your")
          ),
          Positioned(
            top: 70,
            child: Text("Dream Home")
          ),
          Positioned(
            bottom: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    child: Text("Log in"),
                  ),
                ),
                InkWell(
                  child: Container(
                    child: Text("Register"),
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

import 'dart:async';
import 'welcome.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Welcome())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Container(
            height: 300.0,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                //Background Image
                image: AssetImage("images/logo.png"),
                // fit: BoxFit.cover,
                // colorFilter: new ColorFilter.mode(
                //     Colors.white.withOpacity(0.3), BlendMode.dstATop),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

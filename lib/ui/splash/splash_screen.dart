import 'package:flutter/material.dart';
import 'package:islami/ui/homeScreen/HomeScreen.dart';
import 'package:islami/ui/myThemeData.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "Splash";

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        MyThemeData.getSplashScreenImage(),
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}

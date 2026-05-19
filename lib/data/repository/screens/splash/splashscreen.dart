import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/data/repository/domain/constant/appcolors.dart';
import 'package:untitled/data/repository/screens/login/loginscreen.dart';
import 'package:untitled/data/repository/widget/uihelper.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
   @override
  void initState() {
     super.initState();
   Timer(Duration(seconds: 10), () {
     Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (Contex) => Loginscreen()),
  );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Uihelper.CustomImage(img: "Banner.png"),
          SizedBox(width: 20),
          SizedBox(
            height: 150,
            child: Uihelper.CustomImage(img: "lifestylelogo.png"),
          ),
          SizedBox(height: 20,),

          Text(
            "Concept By:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(height: 100,),
          SizedBox(height:80,child: Uihelper.CustomImage(img: "sidheshLogo.png")),


          Uihelper.CustomImage(img: "Backgraund.png"),
        ],
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/data/repository/domain/constant/appcolors.dart';
import 'package:untitled/data/repository/screens/login/loginscreen.dart';
import 'package:untitled/data/repository/widget/uihelper.dart';

class Splashscreen extends StatefulWidget{
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (Contex)=>Loginscreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.scaffoldbackgroud,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Uihelper.CustomImage(img: "image.jpg"),

            ],
          ),
        ),
      ),

    );
  }
}
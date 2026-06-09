import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/uihelper.dart';
import '../newscreen/newscreen.dart';

class otpscreen extends StatelessWidget {
  const otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [Uihelper.CustomImage(img: "Banner.png"),
          SizedBox(height: 15,),
          Text("Verify OTP",
            style: TextStyle(
              fontSize: 25,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(height: 10,),
          Text("Enter 4 Digit OTP send on",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

          ),
          GestureDetector(
            onTap: (){
              Get.to(Newscreen());
            },
            child: Text("Login",
              style: TextStyle(
                fontSize: 25,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
            ),
            ),
          ),
          SizedBox(height: 10,),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
              Text("Didn't receive OTP?",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
              SizedBox(width: 5,),
              Text("Resend OTP",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ],
          ),
          SizedBox(height: 80,),
          Uihelper.CustomImage(img: "Backgraund.png"),
        ]),
      ),


    );
  }
}

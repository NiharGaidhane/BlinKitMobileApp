import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/data/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:untitled/data/repository/widget/uihelper.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Uihelper.CustomImage(img: "Banner.png"),
          Column(
            children: [
              SizedBox(height: 60,),
              Text("Welcome",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontStyle:FontStyle.italic,
                ),
              ),
              SizedBox(height: 5,),
              Text("Login with your whatsapp No.to contunue",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.phone, // Opens the phone keypad
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly // Allows only numbers
                  ],
                  decoration: const InputDecoration(
                    labelText: 'Mobile Number',
                    hintText: 'Enter 10-digit mobile number',
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                  ),
                ),
              ),


            ],
          ),
        ],
      ),


    );
  }
}

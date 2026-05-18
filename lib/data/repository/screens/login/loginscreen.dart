import 'package:flutter/material.dart';
import 'package:untitled/data/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:untitled/data/repository/widget/uihelper.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              
              Uihelper.CustomImage(img: "login.jpeg"),

              const SizedBox(height: 30),


              Uihelper.CustomImage(img: "logo.jpg"),

              const SizedBox(height: 20),


              Uihelper.CustomText(
                text: "India's last minute app",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 20,
                fontfamliy: "bold",
              ),

              const SizedBox(height: 20),


              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Container(
                  height: 220,
                  width: 350,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),

                  child: Column(
                    children: [

                      const SizedBox(height: 20),


                      Uihelper.CustomText(
                        text: "Nihar",
                        color: Colors.black,
                        fontweight: FontWeight.w500,
                        fontsize: 14, fontfamliy: '',
                      ),

                      const SizedBox(height: 5),

                      Uihelper.CustomText(
                        text: "8999xxxxxx",
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        fontsize: 14,
                        fontfamliy: "bold",
                      ),

                      const SizedBox(height: 20),

                      SizedBox(
                        height: 48,
                        width: 295,

                        child: ElevatedButton(
                          onPressed: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => bottomnavscreen(),
                              ),
                            );
                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [

                              Uihelper.CustomText(
                                text: "Login With",
                                color: Colors.white,
                                fontweight: FontWeight.bold,
                                fontsize: 14,
                                fontfamliy: "bold",
                              ),

                              const SizedBox(width: 5),

                              Uihelper.CustomText(
                                text: "Zomato",
                                color: Colors.white,
                                fontweight: FontWeight.bold,
                                fontsize: 25,
                                fontfamliy: "bold",

                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 8),

                      Uihelper.CustomText(
                        text:
                        "Access your saved addresses from Zomato automatically!",
                        color: Colors.black45,
                        fontweight: FontWeight.normal,
                        fontsize: 10, fontfamliy: '',

                      ),

                      const SizedBox(height: 15),

                      Uihelper.CustomText(
                        text: "or login with phone number",
                        color: Colors.teal,
                        fontweight: FontWeight.normal,
                        fontsize: 14, fontfamliy: '',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

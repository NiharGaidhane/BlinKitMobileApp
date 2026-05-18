import 'package:flutter/material.dart';

import '../../widget/uihelper.dart';

class Printscreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBF0CE),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Colors.amberAccent,
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.CustomText(
                          text: "Blinkit in",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamliy: "bold",
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.CustomText(
                          text: "16 minutes",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          fontfamliy: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.CustomText(
                          text: 'HOME',
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamliy: "bold",
                        ),
                        Uihelper.CustomText(
                          text: '- Sujal Dave, Ratanada, Jodhpur (Raj)',
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamliy: "bold",
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black, size: 20),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: Uihelper.CustomTextField(controller: searchController),
              ),
            ],
          ),
          SizedBox(height: 20),
          Uihelper.CustomText(
            text: "Print Store",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 32,
            fontfamliy: "bold",
          ),
          Uihelper.CustomText(
            text: "Blinkit ensures secure prints at every stage",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 14,
            fontfamliy: 'bold',
          ),
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 180,
                width: 361,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.CustomText(
                          text: "Documents",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamliy: 'normal',
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.CustomImage(img: "✦.png"),
                        SizedBox(width: 5),
                        Uihelper.CustomText(
                          text: "Price starting at rs 3/page",
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 15,
                          fontfamliy: 'normal',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Uihelper.CustomImage(img: "✦.png"),
                            SizedBox(width: 5),
                            Uihelper.CustomText(
                              text: "Price starting at rs 3/page",
                              color: Colors.black,
                              fontweight: FontWeight.normal,
                              fontsize: 15,
                              fontfamliy: 'normal',
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Uihelper.CustomImage(img: "✦.png"),
                            SizedBox(width: 5),
                            Uihelper.CustomText(
                              text: "Single side prints",
                              color: Colors.black,
                              fontweight: FontWeight.normal,
                              fontsize: 15,
                              fontfamliy: 'normal',
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        SizedBox(
                          height: 40,
                          width: 125,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Text(
                              "Upload Files",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Uihelper.CustomImage(img: "image 62.png"),
                right: 20,
                bottom: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

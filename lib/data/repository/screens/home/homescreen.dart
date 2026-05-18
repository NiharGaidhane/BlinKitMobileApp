import 'package:flutter/material.dart';

import '../../widget/uihelper.dart';

class Homescreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var data = [
    {"img": "image 50.png", "text": "Lights, Diyas Lights, Diyas & Candles"},

    {"img": "image 51.png", "text": "diwali gift"},
    {"img": "image 52.png", "text": "Appliances & Gagets"},
    {"img": "image 53.png", "text": "Appliances & Gagets"},
  ];
  var category = [
    {"img": "image1.png", "text": "Golden Glass Wooden Lid Candle (Oudh)"},

    {"img": "image2.png", "text": "Royal Gulab Jamun By Bikano"},
    {"img": "image3.png", "text": "bhujiya"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFEC0505),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.CustomText(
                          text: "Blinkit in",
                          color: Colors.white,
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
                          color: Colors.white,
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
                          color: Colors.white,
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamliy: "bold",
                        ),
                        Uihelper.CustomText(
                          text: '- Sujal Dave, Ratanada, Jodhpur (Raj)',
                          color: Colors.white,
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
          Container(height: 1, width: double.infinity, color: Colors.white),
          Container(
            height: 196,
            width: double.infinity,
            color: Color(0XFFEC0505),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Uihelper.CustomImage(img: "image 60.png"),
                    Uihelper.CustomImage(img: "image 55.png"),
                    Uihelper.CustomText(
                      text: "Mega Diwali Sale",
                      color: Colors.white,
                      fontweight: FontWeight.bold,
                      fontsize: 20,
                      fontfamliy: "bold",
                    ),
                    Uihelper.CustomImage(img: "image 55.png"),
                    Uihelper.CustomImage(img: "image 61.png"),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 5,
                            top: 1,
                            bottom: 1,
                          ),
                          child: Container(
                            height: 108,
                            width: 82,

                            decoration: BoxDecoration(
                              color: Color(0XFFEAD3D3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Uihelper.CustomText(
                                  text: data[index]["text"].toString(),
                                  color: Colors.black,
                                  fontweight: FontWeight.bold,
                                  fontsize: 10,
                                  fontfamliy: "bold",
                                ),
                                Uihelper.CustomImage(
                                  img: data[index]["img"].toString(),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: 108,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Uihelper.CustomImage(
                          img: category[index]["img"].toString(),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(padding: EdgeInsets.only(left: 20),child: Uihelper.CustomText(
                      text: category[index]["text"].toString(),
                      color: Colors.black,
                      fontweight: FontWeight.bold,
                      fontsize: 8,
                      fontfamliy: "bold",
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Row(
                        children: [
                          Uihelper.CustomImage(img: "timer 4.png"),
                          Uihelper.CustomText(text: "16 MINS", color: Colors.black38, fontweight: FontWeight.normal, fontsize: 10, fontfamliy: "normal"),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: Row(
                        children: [
                          Uihelper.CustomImage(img: "image 50 (1).png"),
                          Uihelper.CustomText(text: "79", color: Colors.black38, fontweight: FontWeight.bold, fontsize: 15, fontfamliy: "normal"),
                        ],
                      ),
                    )
                  


                  ],
                );
              },
              itemCount: category.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

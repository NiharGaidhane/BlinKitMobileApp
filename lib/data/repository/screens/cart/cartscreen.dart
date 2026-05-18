import 'package:flutter/material.dart';
import 'package:untitled/data/repository/widget/uihelper.dart';

class Cartscreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

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
          Uihelper.CustomImage(img: "shopping-cart (1) 1.png"),
          SizedBox(height: 20),
          Uihelper.CustomText(
            text: "Reordering will be easy",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 16,
            fontfamliy: 'bold',
          ),
          Uihelper.CustomText(
            text: "Items you order will show up here so you can buy",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 13,
            fontfamliy: 'bold',
          ),
          Uihelper.CustomText(
            text: "them again easily.",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 13,
            fontfamliy: 'bold',
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              Uihelper.CustomText(
                text: "Bestsellers",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 16,
                fontfamliy: 'bold',
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 15),
              Stack(
                children: [
                  Uihelper.CustomImage(img: "image 45.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 98, left: 65),
                    child: Uihelper.CustomButton(() {}),
                  ),
                ],
              ),
              SizedBox(width: 15),
              Stack(
                children: [
                  Uihelper.CustomImage(img: "image 44.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 98, left: 65),
                    child: Uihelper.CustomButton(() {}),
                  ),
                ],
              ),
              SizedBox(width: 15),
              Stack(
                children: [
                  Uihelper.CustomImage(img: "image 46.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 98, left: 65),
                    child: Uihelper.CustomButton(() {}),
                  ),
                  Uihelper.CustomText(text: 'Amul Taaza Toned', color: Colors.black, fontweight: FontWeight.normal, fontsize: 8,fontfamliy: 'bold'),
                ],
              ),


            ],
          ),
        ],
      ),
    );
  }
}

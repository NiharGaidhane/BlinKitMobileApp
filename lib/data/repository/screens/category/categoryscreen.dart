import 'package:flutter/material.dart';

import '../../widget/uihelper.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  TextEditingController? get searchController => null;
  var groceryKitchen=[

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
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
                child: Uihelper.CustomTextField(controller: SearchController()),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 20,),
              Uihelper.CustomText(
                text: "Grocery & Kitchen",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamliy: "regular",
              ),
            ],
          )
        ],
      ),
    );
  }
}

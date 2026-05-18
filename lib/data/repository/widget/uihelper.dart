import 'package:flutter/material.dart';

class Uihelper {

  static Widget CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static Widget CustomText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
    required String fontfamliy,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily,
        fontWeight: fontweight,
        color: color,
      ),
    );
  }

  static Widget CustomTextField({
    required TextEditingController controller,
  }) {
    return Container(
      height: 40,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search 'Ice-Cream'",
          prefixIcon: Image.asset(
            "assets/images/search1.png",
          ),
          suffixIcon: Image.asset(
            "assets/images/mic1.png",
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
  static Widget CustomButton(VoidCallback callback){
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.greenAccent,
        ),
        borderRadius: BorderRadius.circular(4)
      ),
      child: Center(
        child: Text("Add",style: TextStyle(fontSize: 8,color: Colors.black),),
      ),
    );
  }
}


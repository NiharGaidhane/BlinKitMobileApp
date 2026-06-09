import 'package:flutter/material.dart';
import 'package:untitled/data/repository/widget/uihelper.dart';

class story extends StatelessWidget {
  const story({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sharukh Khan",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/images/images (1).jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),


    );
  }
}

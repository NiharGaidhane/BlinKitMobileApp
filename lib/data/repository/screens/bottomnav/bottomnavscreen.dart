import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/repository/screens/newscreen/newscreen.dart';
import 'package:untitled/data/repository/screens/home/homescreen.dart';
import 'package:untitled/data/repository/screens/story/story.dart';
import 'package:untitled/data/repository/widget/uihelper.dart';

class bottomnavscreen extends StatefulWidget {
  const bottomnavscreen({super.key});

  @override
  State<bottomnavscreen> createState() => _bottomnavscreenState();
}

class _bottomnavscreenState extends State<bottomnavscreen> {
  int CureentIndex = 0;
  List<Widget> Pages = [
    Homescreen(),
    Newscreen (),
    story(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: CureentIndex,
        children: Pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "home 1.png"),label: "Home"),

          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "shopping-bag 1.png"),label: "cart"),

          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "newscreen   1.png"),label: "categories"),

          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: "printer 1.png"),label: "Print"
          )

        ],
     type: BottomNavigationBarType.fixed,currentIndex: CureentIndex,onTap: (index){
          setState(() {
            CureentIndex=index;
          });

      }, ),
    );
  }
}

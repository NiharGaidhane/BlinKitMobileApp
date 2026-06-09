import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/data/repository/screens/story/story.dart';
import '../../widget/uihelper.dart';

class Newscreen extends StatelessWidget {
  Newscreen({super.key});

   List<String> images = [
    "Hrithik-Roshan.webp",
    "image5.jpeg",
    "image2.jpg",
    "image3.jpeg",
    "images (1).jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Newscreen"),
      ),

      body: Column(
        children: [
          SizedBox(
            height: 100,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,

              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),

                  child: GestureDetector(
                    onTap: () {
                      Get.to(story());
                    },

                    child: CircleAvatar(
                      radius: 38,
                      backgroundColor: Colors.green,

                      child: CircleAvatar(
                        radius: 35,

                        child: ClipOval(
                          child: Uihelper.CustomImage(
                            img: images[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: "post"
          ),


        ],
      )
    );
  }
}
import 'package:flutter/material.dart';

class WallpaperUI extends StatelessWidget {
  // Define the data list
  final List<Map<String, String>> mdata = [
    {"image": "assets/images/wall1.jpeg"},
    {"image": "assets/images/wall2.jpeg"},
    {"image": "assets/images/wall3.jpeg"},
    {"image": "assets/images/wall4.jpeg"},
    {"image": "assets/images/wall5.jpeg"},
    {"image": "assets/images/wall6.jpeg"},
    {"image": "assets/images/wall1.jpeg"},
    {"image": "assets/images/wall2.jpeg"},
    {"image": "assets/images/wall3.jpeg"},
    {"image": "assets/images/wall4.jpeg"},
    {"image": "assets/images/wall5.jpeg"},
    {"image": "assets/images/wall6.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallpapers"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: GridView.builder(
          itemCount: mdata.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 9 / 16,
            mainAxisSpacing: 11,
            crossAxisSpacing: 11,
          ),
          itemBuilder: (_, index) {
            return Container(
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),), // Rounded corners
              child: Image.asset(
                mdata[index]["image"]!,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WallpaperUI(),
  ));
}

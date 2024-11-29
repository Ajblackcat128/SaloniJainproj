import 'package:flutter/material.dart';

class WallpaperUI1 extends StatelessWidget {
  // Data for wallpapers with color tones
  final List<Map<String, dynamic>> items = [
    {"image": "assets/images/wall1.jpeg", "colors": [Colors.yellow]},
    {"image": "assets/images/wall2.jpeg", "colors": [Colors.cyan]},
    {"image": "assets/images/wall3.jpeg", "colors": [Colors.teal]},
    {"image": "assets/images/wall4.jpeg", "colors": [Colors.brown]},
    {"image": "assets/images/wall5.jpeg", "colors": [Colors.pink]},
    {"image": "assets/images/wall6.jpeg", "colors": [Colors.red]},
    {"image": "assets/images/wall1.jpeg", "colors": [Colors.yellow]},
    {"image": "assets/images/wall2.jpeg", "colors": [Colors.cyan]},
    {"image": "assets/images/wall3.jpeg", "colors": [Colors.teal]},
    {"image": "assets/images/wall4.jpeg", "colors": [Colors.brown]},
    {"image": "assets/images/wall5.jpeg", "colors": [Colors.pink]},
    {"image": "assets/images/wall6.jpeg", "colors": [Colors.red]},
    {"image": "assets/images/wall1.jpeg", "colors": [Colors.yellow]},
    {"image": "assets/images/wall2.jpeg", "colors": [Colors.cyan]},
    {"image": "assets/images/wall3.jpeg", "colors": [Colors.teal]},
    {"image": "assets/images/wall4.jpeg", "colors": [Colors.brown]},
    {"image": "assets/images/wall5.jpeg", "colors": [Colors.pink]},
    {"image": "assets/images/wall6.jpeg", "colors": [Colors.red]},
    {"image": "assets/images/wall1.jpeg", "colors": [Colors.yellow]},
    {"image": "assets/images/wall2.jpeg", "colors": [Colors.cyan]},
    {"image": "assets/images/wall3.jpeg", "colors": [Colors.teal]},
    {"image": "assets/images/wall4.jpeg", "colors": [Colors.brown]},
    {"image": "assets/images/wall5.jpeg", "colors": [Colors.pink]},
    {"image": "assets/images/wall6.jpeg", "colors": [Colors.red]},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wallpapers & Color Tones"),
      ),
      body: SingleChildScrollView( // Wrap the body with a SingleChildScrollView
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section 1: Best of the Month (Wallpapers)
            const Text(
              "Best of the Month",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200, // Fixed height for horizontal list of wallpapers
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10.0), // Add spacing between items
                    width: 120,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(items[index]["image"]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // Section 2: Color Tones for each wallpaper
            const Text(
              "Color Tones",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200, // Adjusted height to fit images and color tones
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 15.0), // Spacing between items
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image

                        const SizedBox(height: 10),
                        // Color Tone
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: items[index]["colors"][0], // Access the first color
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),

            // Section 3: Grid View for Wallpapers
            SizedBox(
              height: 300, // Fixed height for grid
              child: GridView.builder(
                shrinkWrap: true, // To prevent GridView from expanding infinitely
                physics: const NeverScrollableScrollPhysics(), // Prevent scrolling within the GridView
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 9 / 16,
                  mainAxisSpacing: 11,
                  crossAxisSpacing: 11,
                ),
                itemBuilder: (_, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                    child: Image.asset(
                      items[index]["image"]!,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WallpaperUI1(),
  ));
}

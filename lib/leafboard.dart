import 'package:flutter/material.dart';

class LeafBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circular Box Design"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: 500,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -30,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),

                      child: Center(
                        child: Image.asset(
                          "assets/images/leaf.jpeg", // Path to your PNG image
                          width: 100,  // Adjust the size of the icon as needed
                          height: 100,

                      ),
                    ),
                  ),
                ),
                // Placing the image within the stack correctly
                Positioned(
                  top: 30,
                  child: Image.asset(
                    "assets/images/mobile1.jpeg",
                    width: 100, // Adjust the size as needed
                    height: 150,
                  ),
                ),
              ],
            ),
            SizedBox(height: 90),
            Text(
              "LEAFBOARD.",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.green),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            Text(
              "A platform built for a new way of working",
              style: TextStyle(fontSize: 16), // Adjust font size as necessary
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 200),
            Container(
              width: 180,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(200),
              ),
              child: Center(
                child: Text(
                  "Get Started for Free",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:math';
import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  TextEditingController wtController = TextEditingController();
  TextEditingController ftController = TextEditingController();
  TextEditingController inController = TextEditingController();

  String bmiMessage = "";
  Color bgColor = Colors.white;
  String imagePath = "";  // Variable to store image path based on BMI

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'BMI',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 21),
            TextField(
              controller: wtController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text("Weight(in KGs)"),
                hintText: "Enter your Weight in KGS here..",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21)),
              ),
            ),
            SizedBox(height: 11),
            TextField(
              controller: ftController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text("Height(in feet)"),
                hintText: "Enter your Height in feet here..",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21)),
              ),
            ),
            SizedBox(height: 11),
            TextField(
              controller: inController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text("Height(in inch)"),
                hintText: "Enter your Height in inch here..",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21)),
              ),
            ),
            SizedBox(height: 21),
            ElevatedButton(
              onPressed: () {
                var wt = double.parse(wtController.text.toString());
                var feet = int.parse(ftController.text.toString());
                var inch = int.parse(inController.text.toString());

                int totalInch = (feet * 12) + inch;
                num totalCm = totalInch * 2.54;
                num totalM = totalCm / 100;

                num result = wt / (pow(totalM, 2.0));

                // Determine message, background color, and image based on BMI range
                if (result > 25) {
                  bgColor = Colors.red.shade200;
                  bmiMessage = "You are overweight. Try to maintain a healthy lifestyle.";
                  imagePath = 'assets/images/unhealthy.png';
                } else if (result < 18) {
                  bgColor = Colors.orange.shade200;
                  bmiMessage = "You are underweight. Ensure a balanced diet and regular exercise.";
                  imagePath = 'assets/images/underweight.png';
                } else {
                  bgColor = Colors.green.shade200;
                  bmiMessage = "You are in a healthy range. Keep up the good lifestyle!";
                  imagePath = 'assets/images/healthy.png';
                }

                setState(() {});
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 11),
            Text(
              bmiMessage,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),

            // Display the image based on the BMI category
            if (imagePath.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Image.asset(
                  imagePath,
                  height: 150,
                  width: 150,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

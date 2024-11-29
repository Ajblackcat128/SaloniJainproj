import 'package:flutter/material.dart';
import 'dart:async'; // Import Timer

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashscreen(), // Assign splashscreen as the home
    );
  }
}

class splashscreen extends StatefulWidget {
  @override
  State<splashscreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyNextPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.person
        ),
        ),

    );
  }
}

class MyNextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Next Page")),
      body: Center(
        child: Text(
          "Welcome to the Next Page!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

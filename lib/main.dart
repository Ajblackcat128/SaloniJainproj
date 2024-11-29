import 'package:flutter/material.dart';
import 'package:myapp/listview.dart';
import 'package:myapp/navigator.dart';
import 'package:myapp/tip.dart';
import 'package:myapp/wallpaper2.dart';
import 'package:myapp/wallpaperUI.dart';
import 'package:myapp/whatsapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Navigation_page()
    );
  }
}

class MyHomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<MyHomePage>{
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(child: Text("\$$count", style: TextStyle(fontSize: 25),)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          count++;
          setState((){
          });
          print(count);
        },
      ),
    );
  }
}
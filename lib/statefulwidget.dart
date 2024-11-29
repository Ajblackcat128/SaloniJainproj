import 'package:flutter/material.dart';

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
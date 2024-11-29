
import 'package:flutter/material.dart';

class TheSovereign extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber.shade200,
        appBar: AppBar(
          title: Text("Profile PAge "),
        ),
        body: Container(
          width:double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
        Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios_new_rounded)),
              Text("The Sovereign"),

            ],
          ),
        ),
    );

  }


}
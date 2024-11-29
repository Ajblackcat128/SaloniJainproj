import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/The_Sovereign.dart';

class Navigation_page extends StatelessWidget {

  const Navigation_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Container(
          //color:Colors.green,
          width:double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Home', style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold
          ),),
          ElevatedButton(onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder: (_) => TheSovereign()));

          },child: Text("Next")),
            ],
          ),
        ),

    );
  }
}

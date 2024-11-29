import 'package:flutter/material.dart';

class NewLogin extends StatelessWidget {
  // Define TextEditingControllers for text fields
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
      children: [

    ],
    )
        ), );
  }
}

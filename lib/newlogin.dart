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
            Container(
              width: double.infinity,
              height: 400,
              decoration: 
                  BoxDecoration(
                    image:DecorationImage(image: AssetImage("assets/images/ "  ))
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height:140),
                  Text(
                    "Let's Upgrade your",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "learning experience",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 10), // Adding some space between sections
                  Text(
                    "Changing the way people learn by providing an",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "interactive, engaging, and personalized learning",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

            ),
            Container(
              width:400,
              height:400,
              color:Colors.white,

                child:Column(
                    children:[
                      SizedBox(height:40),
                    ElevatedButton(
                    onPressed: () {
            print("Continue Button in Second Container Pressed");
            }, style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text("Continue With Number"),
            ),
             SizedBox(height:40),
                      Text("-----Or login with---------"),
                      SizedBox(height:70),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 30,
                            height:20,
                            color:Colors.white,
                          ),
                          Center(child: Text("Google")),
                          Container(
                            width: 30,
                            height:20,
                            color:Colors.white,
                          ),
                          Center(child: Text("FaceBook")),
                        ],
                      ),
                      SizedBox(height:70),
                      Text("Don't have an account? Register")
            ],),


          ),


          ],

        ),
      ),
    );
  }
}

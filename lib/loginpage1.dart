import 'package:flutter/material.dart';

class leafboard1 extends StatelessWidget {
  // Define TextEditingControllers for text fields
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Maxlearn"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Leafboard",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text("Work without Limits"),
            SizedBox(height: 20),
            Text("Your email Address"),
            TextField(
              //enabled: false,
              controller: emailController,
              onChanged: (v) {
                print("Email: $v");
              },

              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_circle_sharp),

                //suffixText: "Your email Address",
                label: Text("salonijain@gmail.com"),
                hintText: "Enter Your Email",
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.blue,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(height: 11),
            TextField(
              controller: passwdController,
              onChanged: (v) {
                print("Password: $v");
              },
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.blue,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("Email: ${emailController.text}");
                print("Password: ${passwdController.text}");
              },
              child: Text("Continue"),
            ),
            SizedBox(height:20),

            Text('or'),
            ElevatedButton(
              onPressed: () {
                print("Register button pressed");
              },
              child: Text("             Sign up with Google       "),
            ),
            SizedBox(height:20),
        ElevatedButton(
          onPressed: () {
            print("Register button pressed");
          },
          child: Text("             Sign up with Apple      "),

        ),
  ], ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class loginpage extends StatelessWidget{
  TextEditingController EmailController=TextEditingController();
  TextEditingController PasswdController=TextEditingController();



  @override
  Widget build(BuildContext context) {
  //  NameController.text="DefaultName";
  return Scaffold(
    appBar: AppBar(
      title: Text("Login Page")
    ),
    body : Padding(
      padding: EdgeInsets.symmetric(horizontal: 11,vertical:11),
      child: Column(
        children: [

      /*TextField(
              enabled:false,
          controller: EmailController,
            onChanged: (v){
            print(v);
            },
            keyboardType: TextInputType.text,
            //obscureText: true,
            //obscuringCharacter: "*",
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.account_circle_sharp),
              prefixText: "Mr.  ",
              suffixText: "@gmail.com",
              label:Text("email"),
              hintText: "Enter Your Mail",
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: BorderSide(
                  width:1,
                  color:Colors.grey,
                ),

              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                borderSide: BorderSide(
                  width:1,
                  color:Colors.blue,
                ),

              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                borderSide: BorderSide(
                  width:2,
                  color:Colors.green,

                ),
              ),


            )
              ),
          SizedBox(
            height:11,
          ),
          TextField(

              controller: PasswdController,
              onChanged: (v){
                print(v);
              },
              keyboardType: TextInputType.text,
              obscureText: true,
              //obscuringCharacter: "*",
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      width:1,
                      color:Colors.blue,
                    ),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      width:2,
                      color:Colors.green,

                    ),
              ),
              ),
          ),
     ElevatedButton(onPressed:(){
       print(EmailController.text);
     }, child: Text("Login"))*/
        ],
      ),
  )

  );


  }



}
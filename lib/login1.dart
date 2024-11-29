import 'package:flutter/material.dart';

class loginpages extends StatelessWidget{
  //TextEditingController EmailController=TextEditingController();
  //TextEditingController PasswdController=TextEditingController();



  @override
  Widget build(BuildContext context) {
  //  NameController.text="DefaultName";
  return Scaffold(
    appBar: AppBar(
      title: Text("Login Page")
    ),
    body : Padding(
      padding: EdgeInsets.symmetric(horizontal: 12,vertical:12),
      //child: SingleChildScrollView(


          child: Wrap(
            //direction:Axis.vertical,
            spacing: 11,
            runSpacing: 11,
            alignment: WrapAlignment.spaceAround,
            children:[
                
                InkWell(
                onTap: (){
                print("clicked");
                },
                  child: Container(
                                width:100,
                                height:50,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color:Colors.blue,
                                  border:Border.all(
                                    width:2,
                                    color:Colors.black,
                                  )
                                ),
                      child:Center(child: Text("android"),),
                                ),
                                ),

              Container(
                width:100,
                height:50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:Colors.blue,
                    border:Border.all(
                      width:2,
                      color:Colors.black,
                    )
                ),
                child:Center(child: Text("android"),),
              ),Container(
                width:100,
                height:50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:Colors.blue,
                    border:Border.all(
                      width:2,
                      color:Colors.black,
                    )
                ),
                child:Center(child: Text("android"),),
              ),Container(
                width:100,
                height:50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:Colors.blue,
                    border:Border.all(
                      width:2,
                      color:Colors.black,
                    )
                ),
                child:Center(child: Text("android"),),
              ),Container(
                width:100,
                height:50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:Colors.blue,
                    border:Border.all(
                      width:2,
                      color:Colors.black,
                    )
                ),
                child:Center(child: Text("android"),),
              ),Container(
                width:100,
                height:50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:Colors.blue,
                    border:Border.all(
                      width:2,
                      color:Colors.black,
                    )
                ),
                child:Center(child: Text("android"),),
              ),Container(
                width:100,
                height:50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:Colors.blue,
                    border:Border.all(
                      width:2,
                      color:Colors.black,
                    )
                ),
                child:Center(child: Text("android"),),
              ),Container(
                width:100,
                height:50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:Colors.blue,
                    border:Border.all(
                      width:2,
                      color:Colors.black,
                    )
                ),
                child:Center(child: Text("android"),),
              ),Container(
                width:100,
                height:50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:Colors.blue,
                    border:Border.all(
                      width:2,
                      color:Colors.black,
                    )
                ),
                child:Center(child: Text("android"),),
              ),Container(
                width:100,
                height:50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:Colors.blue,
                    border:Border.all(
                      width:2,
                      color:Colors.black,
                    )
                ),
                child:Center(child: Text("android"),),
              ),
              Container(
                width:100,
                height:50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:Colors.blue,
                    border:Border.all(
                      width:2,
                      color:Colors.black,
                    )
                ),
                child:Center(child: Text("android"),),
              ),Container(
                width:100,
                height:50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:Colors.blue,
                    border:Border.all(
                      width:2,
                      color:Colors.black,
                    )
                ),
                child:Center(child: Text("android"),),
              ),Container(
                width:100,
                height:50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:Colors.blue,
                    border:Border.all(
                      width:2,
                      color:Colors.black,
                    )
                ),
                child:Center(child: Text("android"),),
              ),Container(
                width:100,
                height:50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:Colors.blue,
                    border:Border.all(
                      width:2,
                      color:Colors.black,
                    )
                ),
                child:Center(child: Text("android"),),
              ),Container(
                width:100,
                height:50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:Colors.blue,
                    border:Border.all(
                      width:2,
                      color:Colors.black,
                    )
                ),
                child:Center(child: Text("android"),),
              ),
              /*Container(
                width:100,
                height:100,
                color:Colors.orange,
              ),
              Container(
                width:100,
                height:100,
                color:Colors.blue,
              ),
              Container(
                width:100,
                height:100,
                color:Colors.orange,
              ), Container(
                width:100,
                height:100,
                color:Colors.blue,
              ),
              Container(
                width:100,
                height:100,
                color:Colors.orange,
              ),
              Container(
                width:100,
                height:100,
                color:Colors.blue,
              ),
              Container(
                width:100,
                height:100,
                color:Colors.orange,
              ),
              Container(
                width:100,
                height:100,
                color:Colors.blue,
              ),
              Container(
                width:100,
                height:100,
                color:Colors.orange,
              ),
              Container(
                width:100,
                height:100,
                color:Colors.blue,
              ),
              Container(
                width:100,
                height:100,
                color:Colors.orange,
              ),

              Container(
                width:100,
                height:100,
                color:Colors.blue,
              ),
              Container(
                width:100,
                height:100,
                color:Colors.orange,
              ),*/


          /*ElevatedButton(onPressed:(){
            print("elevated Button clicked");

          }, child: Text("Elevated")),
          SizedBox(
            height:11
          ),
          OutlinedButton(onPressed: (){
             print("outlined button");

          }, child: Text("Outlined button")),
          TextButton(onPressed: (){
            print("Text");

          }, child: Text("Text")),
          IconButton(onPressed: (){
            print("icon");
            },icon: Icon(Icons.home)),
          GestureDetector(
            onTap: (){
              print("gesture tapped");
            },
            child: Container(
              width:200,
                height:50,
              color:Colors.orange,
            ),
          )*/

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
        ),



  );


  }



}
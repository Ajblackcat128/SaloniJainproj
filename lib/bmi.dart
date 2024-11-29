import 'package:flutter/material.dart';

class bmi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("BMI calculator")
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [

            Stack(
               alignment: Alignment.center,
              children: [
                Image.asset("assets/images/bg_heart.jpeg",
              width:200,
              height:200,),

            Text(
              "24.4",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red, // Text color for visibility
              ),
            ),
          ],
            ),
           Text(
    'Healthy',
    style: TextStyle(
    fontSize: 30,
    color: Colors.green,

    ),

      ),
            SizedBox(
                height:20
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Column(
                  children: [
                Text("Male"),
                SizedBox(height:10),
                  Image.asset("assets/images/male.jpeg",width:20,height:20),
                ],
                ),

              SizedBox(width:30),
               Column(
                 children: [
                  Text("Female"),
                  SizedBox(height:10),
                  Image.asset("assets/images/male.jpeg",width:20,height:20),
                ],
                ),
               ],),
                         SizedBox(height:20),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            // Age Label
            Column(
            children: [
            Text("Age"),
            SizedBox(height: 10),
            Text("22",style: TextStyle(
              fontSize: 30,),)
          ],
        ),
        SizedBox(width: 40),
        // Height Label
        Column(
          children: [
            Text("Height"),
            SizedBox(height: 10),
            Text("175",style: TextStyle(
              fontSize: 30,),),
          ],
        ),
        SizedBox(width: 40),
        // Weight Label
        Column(
          children: [
            Text("Weight"),
            SizedBox(height: 10),
            Text("75",style: TextStyle(
              fontSize:30,)),
          ],
        ),

],),
        Container(
          width:300,
          height:50,
          decoration: BoxDecoration(
          color:Colors.white

          ),

          child:Center(child: Text("Calculate BMI",style:TextStyle(fontSize:20,color:Colors.white))),
        ),



],
      ),),);
  }
}
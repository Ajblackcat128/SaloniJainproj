
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',  // Use a comma here, not a period
      home: HomePage(),  // Move `home` inside MaterialApp and correct syntax
    );
  }
}


class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row&Column'),
      ),
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(
                width: 1,
                color: Colors.black
            )
        ),
        height: 430,
        width: 1002,
        child: Row(
          children: [
            Container(
              width: 300,
              padding: EdgeInsets.symmetric(horizontal: 11),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffE6F0FA),
                        border: Border.all(
                            width: 1,
                            color: Color(0xff000000)
                        )
                    ),
                    child: Center(child: Text("Strawberry Pavlova", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffE6F0FA),
                        border: Border.all(
                            width: 1,
                            color: Color(0xff000000)
                        )
                    ),
                    child: Center(child: Text("Pavlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova.Pavlova featues a crisp crust and soft, light inside, topped with fruit and whipped cream.", style: TextStyle(fontSize: 16,),textAlign: TextAlign.center,)),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xffE6F0FA),
                          border: Border.all(
                              width: 1,
                              color: Color(0xff000000)
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.black54, size: 14,),
                              Icon(Icons.star, color: Colors.black54, size: 14,),
                              Icon(Icons.star, color: Colors.black54, size: 14,),
                              Icon(Icons.star, color: Colors.black54, size: 14,),
                              Icon(Icons.star, color: Colors.black54, size: 14,),
                            ],
                          ),
                          Text("170 Reviews")
                        ],
                      )
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 11),
                      decoration: BoxDecoration(
                          color: Color(0xffE6F0FA),
                          border: Border.all(
                              width: 1,
                              color: Color(0xff000000)
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.kitchen_outlined, color: Colors.green, size: 16,),
                              Text('PREP:'),
                              Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text('25 min')),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.timer, color: Colors.green, size: 16,),
                              Text('COOK:'),
                              Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text('1 hr')),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.restaurant, color: Colors.green, size: 16,),
                              Text('FEEDS:'),
                              Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text('4-6')),
                            ],
                          ),
                        ],
                      )
                  ),
                ],
              ),
            ),
            Container(
              width: 700,
              color: Colors.blue,
              child: Image.asset("assets/images/bg_cake.jpg", fit: BoxFit.cover,),
            )
          ],
        ),
      ),
    );
  }

}
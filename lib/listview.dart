import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  // Define the data list
  final List<Map<String, dynamic>> mdata = [
    {"name": "Saloni Jain", "bgcolor": Colors.red},
    {"name": "Aayush Kumar", "bgcolor": Colors.orange},
    {"name": "Blackcat", "bgcolor": Colors.blue},
    {"name": "Ankush Jain", "bgcolor": Colors.green},
    {"name": "Saloni Jain", "bgcolor": Colors.red},
    {"name": "Aayush Kumar", "bgcolor": Colors.orange},
    {"name": "Blackcat", "bgcolor": Colors.blue},
    {"name": "Ankush Jain", "bgcolor": Colors.green},
    {"name": "Saloni Jain", "bgcolor": Colors.red},
    {"name": "Aayush Kumar", "bgcolor": Colors.orange},
    {"name": "Blackcat", "bgcolor": Colors.blue},
    {"name": "Ankush Jain", "bgcolor": Colors.green},
    {"name": "Saloni Jain", "bgcolor": Colors.red},
    {"name": "Aayush Kumar", "bgcolor": Colors.orange},
    {"name": "Blackcat", "bgcolor": Colors.blue},
    {"name": "Ankush Jain", "bgcolor": Colors.green},
    {"name": "Saloni Jain", "bgcolor": Colors.red},
    {"name": "Aayush Kumar", "bgcolor": Colors.orange},
    {"name": "Blackcat", "bgcolor": Colors.blue},
    {"name": "Ankush Jain", "bgcolor": Colors.green},
    {"name": "Saloni Jain", "bgcolor": Colors.red},
    {"name": "Aayush Kumar", "bgcolor": Colors.orange},
    {"name": "Blackcat", "bgcolor": Colors.blue},
    {"name": "Ankush Jain", "bgcolor": Colors.green},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: GridView.builder(
                  itemCount: mdata.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 9/16,
                      mainAxisSpacing: 11,
                      crossAxisSpacing: 11
                    //
                    ),


                    itemBuilder: (_,index){
                      return Container(
                      //margin: EdgeInsets.all(11),
                      height: 100,
                      width: 100,
                      color: mdata[index]["bgcolor"],
                      child: Center(
                      child: Text(mdata[index]["name"]),
                      ),);

                    },
                ),
              ),
            ),

          Expanded (
            child: GridView.builder(
              itemCount: mdata.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
              itemBuilder: (_,index){
                return Container(
                  margin: EdgeInsets.all(11),
                  height: 50,
                  width: 50,
                  color: mdata[index]["bgcolor"],
                  child: Center(
                    child: Text(mdata[index]["name"]),
                  ),);
            
              },
            ),
          ),
        ],
      ), );




    }
  }



void main() {
  runApp(MaterialApp(
    home: CustomListView(),
  ));
}

/*ListView(

children: mdata.map((element) {
return Container(
margin: EdgeInsets.all(11),
height: 100,
// color:Colors.blue,
color: element["bgcolor"], // Use color from the map

child: Center(
child: Text(
element["name"],
style: TextStyle(
color: Colors.white, // Ensure text is readable on any background
fontSize: 18,
fontWeight: FontWeight.bold,
),
),
),
);
}).toList(), // Convert Iterable to List
),*/
/*SizedBox(
height:100,
child: ListView.builder(
scrollDirection: Axis.horizontal,
itemCount:mdata.length,
itemBuilder:(context, index) {
print("item built : $index");
return Container(
margin: EdgeInsets.all(11),
height: 100,
width:100,
// color:Colors.blue,
color: mdata[index]["bgcolor"], // Use color from the map

child: Center(
child: Text(
mdata[index]["name"]),

),
);

},),
),*/

/*Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
Container(
margin: EdgeInsets.all(11),
height:100,
width:100,
color:mdata[0]["bgcolor"],
child:Center(
child:Text(mdata[0]["name"]),
),
),
],).toList()
*/
// GridView.count(
// childAspectRatio:2/1,
// crossAxisCount:5,
//
// children: mdata.map((element) {
// return Container(
// margin: EdgeInsets.all(11),
// height: 100,
// width: 100,
// color: element["bgcolor"],
// child: Center(
// child: Text(element["name"]),
// ),
// );
// }).toList()
// GridView.extent(
// childAspectRatio:2/1,
// crossAxisCount:5,
//maxCrossAxisExtent: 100,
// children: mdata.map((element) {
// return Container(
// margin: EdgeInsets.all(11),
// height: 100,
// width: 100,
// color: element["bgcolor"],
// child: Center(
// child: Text(element["name"]),
// ),
// );
// }).toList()

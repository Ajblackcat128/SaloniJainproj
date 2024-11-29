import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Map<String, dynamic>> mData = [
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple},
    {"name": "Raman", "bgColor": Colors.green},
    {"name": "Raghav", "bgColor": Colors.orange},
    {"name": "Ramanujan", "bgColor": Colors.blue},
    {"name": "Rajeev", "bgColor": Colors.purple}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: mData.length,
            itemBuilder: (context, index) {
            print("item built : $index");
          return Container(
            margin: EdgeInsets.all(11),
            height: 100,
            width: 100,
            color: mData[index]["bgColor"],
            child: Center(
              child: Text(mData[index]["name"]),
            ),
          );
        }),
      ),
    );
  }
}

/// ListView(
//         children: mData.map((element) {
//           return Container(
//             margin: EdgeInsets.all(11),
//             height: 100,
//             color: element["bgColor"],
//             child: Center(
//               child: Text(element["name"]),
//             ),
//           );
//         }).toList(),
//       ),

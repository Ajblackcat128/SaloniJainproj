import 'package:flutter/material.dart';

class WhatsAppUI extends StatelessWidget {
  List<Map<String, String>> chats = [
    {
      "name": "Saloni Jain",
      "message": "Hey, how are you?",
      "time": "10:45 AM",
      "avatar": "assets/images/avatar1.png",
      "unReadCount": '2'

    },
    {
      "name": "Aayush Kumar",
      "message": "Let's meet tomorrow!",
      "time": "9:30 AM",
      "avatar": "assets/images/avatar2.png",
      "unReadCount": '4'
    },
    {
      "name": "Blackcat",
      "message": "Got the documents?",
      "time": "Yesterday",
      "avatar": "assets/images/avatar3.png",
      "unReadCount": '5'
    },
    {
      "name": "Ankush Jain",
      "message": "Thanks a lot!",
      "time": "Monday",
      "avatar": "assets/images/avatar4.png",
      "unReadCount": '3'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        backgroundColor: const Color(0xFF075E54),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Image.asset(
                  chats[index]["avatar"]!,
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 10), // Space between avatar and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            chats[index]["name"]!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                chats[index]["time"]!,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              Container(
                                width:30,
                                height:30,
                                decoration: BoxDecoration(
                                  shape:BoxShape.circle,
                                  color:Colors.green
                                ),
                                child:Center(
                                  child: Text(
                                    chats[index]["unReadCount"]!,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      // Message
                      Text(
                        chats[index]["message"]!,
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'itemProvider.dart';

class AddNotePage extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add New Note")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: descController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String title = titleController.text;
                String description = descController.text;
                if (title.isNotEmpty && description.isNotEmpty) {
                  // Call the addNote function from ItemProvider with named parameters
                  Provider.of<ItemProvider>(context, listen: false)
                      .addNote(title: title, desc: description);  // Corrected
                  Navigator.pop(context); // Go back to the previous page
                }
              },
              child: Text('Add_Note'),
            ),
          ],
        ),
      ),
    );
  }
}

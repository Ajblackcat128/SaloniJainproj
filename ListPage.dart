import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'addNotePage.dart';
import 'itemProvider.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Fetch the data when the page loads
    Future.delayed(Duration.zero, () {
      Provider.of<ItemProvider>(context, listen: false).fetchNotes();
    });

    return Scaffold(
      appBar: AppBar(title: Text("List of Notes")),
      body: Consumer<ItemProvider>(
        builder: (ctx, provider, child) {
          var allData = provider.notes;  // Access the public getter
          return allData.isNotEmpty
              ? ListView.builder(
            itemCount: allData.length,
            itemBuilder: (_, index) {
              return ListTile(
                title: Text(allData[index]["note_title"]),
                subtitle: Text(allData[index]["note_desc"]),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          // Call update note
                          provider.updateNote(
                            id: allData[index]["note_id"],  // Required note ID
                            title: "Updated title",  // Updated title
                            description: "Updated description",  // Updated description
                          );
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          var noteId = allData[index]["note_id"];
                          if (noteId != null) {
                            provider.deleteNote(noteId);  // Corrected: remove the id:
                          } else {
                            print("Note ID is missing");
                          }
                        },
                        icon: Icon(Icons.delete, color: Colors.red),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
              : Center(child: Text('No Items yet!'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddNotePage(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'db_helper.dart';  // Import the DBHelper class

class ItemProvider extends ChangeNotifier {
  List<Map<String, dynamic>> notes = [];

  List<Map<String, dynamic>> getData() => notes ;// Getter for notes

  // Fetch notes from the DB and notify listeners
  Future<void> fetchNotes() async {
    notes = await DBHelper.getInstance().fetchAllNotes();
    notifyListeners();  // Notify listeners after fetching notes
  }

  // Add a new note
  Future<bool> addNote({required String title, required String desc}) async {
    var db = await DBHelper.getInstance().getDB();  // Corrected
    int rowsEffected = await db.insert("note", {
      "note_title": title,
      "note_desc": desc,
    });

    return rowsEffected > 0;
  }

  // Update an existing note
  Future<void> updateNote({
    required int id,
    required String title,
    required String description,
  }) async {
    bool success = await DBHelper.getInstance().updateNote(
      updatedTitle: title,
      updatedDesc: description,
      id: id,
    );
    if (success) {
      await fetchNotes(); // Refresh the list after updating the note
    }
  }

  // Delete a note
  Future<void> deleteNote(int id) async {  // Corrected
    bool success = await DBHelper.getInstance().deleteNote(id: id);
    if (success) {
      await fetchNotes(); // Refresh the list after deleting the note
    }
  }
}

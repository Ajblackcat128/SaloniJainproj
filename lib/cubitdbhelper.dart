

import 'package:classico/assign_9/CubitNotemodel.dart';
import 'package:classico/assign_9/db_helper.dart';
import 'package:classico/assign_9/notestate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteCubit extends Cubit<notestate> {
  final DBHelper dbHelper;
  NoteCubit(this.dbHelper) : super(notestate(notes: []));

addNote({required NoteModel notes}) async {
  bool check = await dbHelper.addNote(newNote: notes);
  if (check) {
    final mNotes = await dbHelper.fetchAllNotes();
    emit(notestate(notes: mNotes)); // Emit updated notes state
  }
}
  void fetchNotes() async {
    final mNotes = await dbHelper.fetchAllNotes();
    print("Fetched notes: ${mNotes.length}");  // Debugging line to see number of fetched notes
    emit(notestate(notes: mNotes));  // Emit updated notes state
  }



void updateNote({required NoteModel notes}) async {

   //bool check = await dbHelper.updateNote(updateNote: notes);
   bool check = await dbHelper.updateNote(updateNote: notes);
    if (check) {
      // Fetch updated notes and emit
      final mNotes = await dbHelper.fetchAllNotes();
      emit(notestate(notes: mNotes));
    }
  }

  void  deleteNote({required int id}) async {
     bool check = await dbHelper.deleteNote(id: id);
    if (check) {
      final mNotes = await dbHelper.fetchAllNotes();
      emit(notestate(notes: mNotes));
    }
  }
  }


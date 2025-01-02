import 'package:classico/assign_9/CubitNotemodel.dart';
import 'package:classico/assign_9/cubitdbhelper.dart';
import 'package:classico/assign_9/notestate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class AddNotePage extends StatelessWidget {
  final  note;

  final bool isupdate;
  //AddNotePage({this.note,this.isupdate=false});
  AddNotePage({this.note, this.isupdate = false}) {
    if (isupdate && note != null) {
      titleController.text = note!.title;
      descController.text = note!.description;
    }
  }

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isupdate? "Update Note":"Add New Note")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(git push -u origin branchName
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

                if (title.isNotEmpty || description.isNotEmpty) {
                  final newNote = NoteModel(
                    id: isupdate ? note?.id : null,
                    title: title,
                    description: description,
                  );
                  if(isupdate){
                    context.read<NoteCubit>().updateNote(notes: newNote);
                  }
                  else{
                    context.read<NoteCubit>().addNote(notes: newNote);

                  }


                  Navigator.pop(context);
                }
              },
              child: Text( isupdate? 'Update Note' :'Add Note'),
            )
          ],
        ),
      ),
    );
  }
}










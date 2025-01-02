import 'package:classico/assign_5/db_helper.dart';
import 'package:classico/assign_9/Addnote.dart';
import 'package:classico/assign_9/CubitNotemodel.dart';
import 'package:classico/assign_9/cubitdbhelper.dart';
import 'package:classico/assign_9/notestate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Fetch notes after the widget is built
    context.read<NoteCubit>().fetchNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notes")),
      body: BlocBuilder<NoteCubit, notestate>(
        builder: (context, state) {


          // Show a message if there are no notes
          if (state.notes.isEmpty) {
            return Center(child: Text("No notes available"));
          }

          // Display the list of notes
          return ListView.builder(
            itemCount: state.notes.length,
            itemBuilder: (context, index) {
              final note = state.notes[index];
              return ListTile(
                title: Text(note.title),
                subtitle: Text(note.description),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                IconButton(
                icon: Icon(Icons.edit),
                onPressed: () async {

                  final update =Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddNotePage(note: note,isupdate:true),
                    ),

                  );



                },
              ),

              IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        if (note.id != null) {
                          context.read<NoteCubit>().deleteNote(id: note.id!);
                        }
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AddNotePage()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

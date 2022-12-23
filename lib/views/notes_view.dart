import 'package:flutter/material.dart';
import 'package:note_pad/views/widgets/add_note_sheet.dart';
import 'package:note_pad/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
            );
          }),
          child: const Icon(Icons.add),
        ),
        body: const NoteViewBody(),
      ),
    );
  }
}

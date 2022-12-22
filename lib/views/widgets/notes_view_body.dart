import 'package:flutter/material.dart';
import 'package:note_pad/views/widgets/custom_appbar.dart';
import 'package:note_pad/views/widgets/note_item.dart';
import 'package:note_pad/views/widgets/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      child: Column(
        children:const  [
          CustomAppBar(),
          NotesListView(),
        ],
      ),
    );
  }
}

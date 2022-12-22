import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:note_pad/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(vertical: 8),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}

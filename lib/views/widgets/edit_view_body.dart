import 'package:flutter/material.dart';
import 'package:note_pad/views/widgets/custom_appbar.dart';
import 'package:note_pad/views/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: Column(
          children: const [
            CustomAppBar(),
            CustomTextField(),
          ],
        ),
      ),
    );
  }
}

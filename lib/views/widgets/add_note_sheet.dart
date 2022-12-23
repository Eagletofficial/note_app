import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_pad/views/widgets/custom_add_buttom.dart';
import 'package:note_pad/views/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 15),
        CustomTextField(),
        Spacer(),
        CustomAddButton(),
      ],
    );
  }
}

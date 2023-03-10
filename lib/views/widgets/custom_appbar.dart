import 'package:flutter/material.dart';
import 'package:note_pad/views/widgets/custom_savebar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Notes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Spacer(),
        CustomSaveIcon(),
      ],
    );
  }
}

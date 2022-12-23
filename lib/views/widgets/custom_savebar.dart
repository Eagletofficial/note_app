import 'package:flutter/material.dart';

class CustomSaveIcon extends StatelessWidget {
  const CustomSaveIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Icon(
        Icons.check,
        size: 28,
      ),
    );
  }
}

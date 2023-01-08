import 'package:flutter/material.dart';
import 'package:note_pad/cont.dart';
import 'package:note_pad/sample.dart';
import 'package:note_pad/sample2.dart';
import 'package:note_pad/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      // home: const NotesView(),
      home: Sample2(),
    );
  }
}

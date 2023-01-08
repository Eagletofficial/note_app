import 'package:flutter/material.dart';
import 'package:note_pad/cont.dart';

class Sample2 extends StatefulWidget {
  const Sample2({Key? key}) : super(key: key);

  @override
  State<Sample2> createState() => _Sample2State();
}

class _Sample2State extends State<Sample2> {
  String input = '';
  List todo = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Add Note'),
                  content: TextField(
                    onChanged: (value) {
                      input = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            todo.add(input);
                          });
                          Navigator.pop(context);
                        }),
                        child: const Text('Add')),
                  ],
                );
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: todo.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                  key: Key(todo[index]),
                  child: Card(
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(todo[index]),
                      trailing: IconButton(
                        onPressed: (() {
                          setState(() {
                            todo.removeAt(index);
                          });
                        }),
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  ));
            },
          ),
        ),
      ),
    );
  }
}

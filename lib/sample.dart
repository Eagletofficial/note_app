import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  List<String> data = [
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
  ];
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              margin: const EdgeInsets.all(5),
              child: ListTile(
                title: Text(data[index]),
                trailing: Container(
                  width: 70,
                  child: Row(
                    children: [
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => SimpleDialog(
                                children: [
                                  TextField(
                                    onChanged: (value) {
                                      setState(() {
                                        text = value;
                                      });
                                    },
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        data[index] = text;
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text('Update'),
                                  ),
                                ],
                              ),
                            );
                          },
                          icon: const Icon(Icons.edit),
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              data.removeAt(index);
                            });
                          },
                          icon: const Icon(Icons.delete),
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

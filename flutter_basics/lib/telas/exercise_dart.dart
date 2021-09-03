import 'package:flutter/material.dart';
import 'package:flutter_basics/telas/list_builder.dart';

class Exercise extends StatefulWidget {
  const Exercise({ Key key }) : super(key: key);

  @override
  _ExerciseState createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  List<String> list = [];
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onSubmitted: (String text) {
            setState(() {
              list.add(textController.text);
              textController.clear();
            });
          },
          controller: textController,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text("${list[index]}");
        },
        itemCount: list.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            list.add(textController.text);
            textController.clear();
          });
        },
      ),
    );
  }
}
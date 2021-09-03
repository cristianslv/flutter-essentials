import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  const TelaSecundaria({ Key key }) : super(key: key);

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.horizontal_rule_rounded), 
            onPressed: _decrease,
          ),
          IconButton(
            icon: Icon(Icons.add), 
            onPressed: _increase,
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Text("$x"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _reset,
        child: Icon(Icons.add),
      ),
    );
  }

  void _decrease() {
    setState(() {
      x--;
    });
  }

  void _increase() {
    setState(() {
      x++;
    });
  }

  void _reset() {
    setState(() {
      x = 0;
    });
  }
}
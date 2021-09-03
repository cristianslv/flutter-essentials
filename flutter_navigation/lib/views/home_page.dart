import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String user;
  const HomePage({ Key key, this.user }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$user"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
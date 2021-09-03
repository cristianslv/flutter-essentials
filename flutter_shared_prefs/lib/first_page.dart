import 'package:flutter/material.dart';
import 'package:flutter_shared_prefs/controller/controller.dart';

class FirstPage extends StatefulWidget {

  FirstPage({ Key key }) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Controller controller = Controller();

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page Shared Preferences"),
        centerTitle: true,
        backgroundColor: controller.cor,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("trocar"),
          onPressed: () {
            setState(() {
              controller.proximaCor();
            });
          },
          style: ElevatedButton.styleFrom(
            primary: controller.cor
          ),
        ),
      ),
    );
  }
}
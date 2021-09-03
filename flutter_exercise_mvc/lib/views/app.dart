import 'package:flutter/material.dart';
import 'package:flutter_exercise_mvc/my_behavior.dart';
import 'package:flutter_exercise_mvc/views/first_page.dart';

class App extends StatefulWidget {
  const App({ Key key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter ToDo",
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(), 
          child: child
        );
      },
    );
  }
}
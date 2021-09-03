import 'package:flutter/material.dart';
import 'package:flutter_exercise_shared_prefs/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Prefs Exercise",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
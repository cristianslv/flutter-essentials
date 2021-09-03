import 'package:flutter/material.dart';
import 'package:flutter_navigation/views/first_page.dart';
import 'package:flutter_navigation/views/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterNavigation",
      theme: ThemeData(
        fontFamily: 'Radish',
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

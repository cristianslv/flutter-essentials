import 'package:flutter/material.dart';
import 'package:flutter_image/first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Image",
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
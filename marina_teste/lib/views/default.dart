import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marina_teste/views/data_view.dart';
import 'package:marina_teste/views/login_view.dart';

class Default extends StatelessWidget {
  const Default({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
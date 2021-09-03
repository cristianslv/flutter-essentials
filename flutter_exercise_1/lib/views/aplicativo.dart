import 'package:flutter/material.dart';
import 'package:flutter_exercise_1/views/tela_inicial.dart';
import 'package:flutter_exercise_1/views/tela_secundaria.dart';

class Aplicativo extends StatelessWidget {
  const Aplicativo({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaSecundaria(),
      debugShowCheckedModeBanner: false,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_basics/telas/list_builder.dart';
import 'package:flutter_basics/telas/tela_inicial.dart';

import 'exercise_dart.dart';

class App extends StatelessWidget {
  const App({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aula 3",
      home: Exercise(),
      debugShowCheckedModeBanner: false,
    );
  }
}
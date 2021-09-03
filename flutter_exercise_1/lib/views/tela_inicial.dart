import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({ Key key }) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  bool _showTitle = true; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_showTitle ? "Tela Inicial" : ""),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(_showTitle ? Icons.horizontal_rule_rounded : Icons.add),
            onPressed: _handleTitle,
          ),
        ),
    );
  }

  void _handleTitle() {
    setState(() {
      _showTitle = !_showTitle;
    });
  }
}
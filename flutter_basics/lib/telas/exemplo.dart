import 'package:flutter/material.dart';

class Exemplo extends StatefulWidget {
  @override
  _ExemploState createState() => _ExemploState();
}

class _ExemploState extends State<Exemplo> {
  int x = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("iniciou a tela");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu App"),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: _funcaoBotao,
        ),
      ),
      body: Container(
        color: Colors.amber[400],
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        child: Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.black45,
          height: 200,
          width: 200,
          child: Center(
            child: Container(
              child: TextField(),
              color: Colors.brown,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print("teste"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }

  void _funcaoBotao() {
    setState(() {
      x++;
    });
  }
}
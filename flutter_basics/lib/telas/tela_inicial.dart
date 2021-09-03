import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int x = 0;
  String title = "MyApp";
  TextEditingController caixaTexto = TextEditingController();

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
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: _funcaoBotao,
        ),
      ),
      body: _bodyLayout(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            title = caixaTexto.text;
            caixaTexto.clear();
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }

  Container _bodyExample() {
    return Container(
      child: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            onSubmitted: (String value) {
              setState(() {
                title = caixaTexto.text;
                caixaTexto.clear();
              });
            },
            controller: caixaTexto,
            style: TextStyle(color: Colors.purple),
          ),
          Image.network(
            "https://img.icons8.com/color/452/flutter.png",
            fit: BoxFit.contain,
            height: 100,
            width: 100,
          )
        ],
      ),
      margin: EdgeInsets.all(10.0),
    );
  }

  Widget _bodyLayout() {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 350,
              width: 100,
              color: Colors.purple,
            ),
            Container(
              height: 350,
              width: 100,
              color: Colors.pink,
            ),
            Container(
              height: 350,
              width: 100,
              color: Colors.red,
            )
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              height: 350,
              width: 100,
              color: Colors.brown,
            ),
            Container(
              height: 350,
              width: 100,
              color: Colors.blue,
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 116.6666666,
                  width: 100,
                  color: Colors.brown,
                ),
                Container(
                  height: 116.6666666,
                  width: 100,
                  color: Colors.purple,
                ),
                Container(
                  height: 116.6666666,
                  width: 100,
                  color: Colors.green,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  void _funcaoBotao() {
    setState(() {
      x++;
    });
  }
}
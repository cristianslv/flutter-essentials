import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController caixaTexto = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: caixaTexto,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, caixaTexto.text);
              }, 
              child: Text("Retornar")
            )
          ],
        ),
      ),
    );
  }
}
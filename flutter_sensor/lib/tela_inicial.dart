import 'package:flutter/material.dart';
import 'package:flutter_sensor/tela_localizacao.dart';
import 'package:flutter_sensor/tela_sensores.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return TelaSensores();
                }));
              }, 
              child: Text("Sensores")
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return TelaLocalizacao();
              }));
            }, 
            child: Text("Localização")
          )
        ],
      ),
    );
  }
}
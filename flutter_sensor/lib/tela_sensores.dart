import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class TelaSensores extends StatefulWidget {
  const TelaSensores({ Key key }) : super(key: key);

  @override
  _TelaSensoresState createState() => _TelaSensoresState();
}

class _TelaSensoresState extends State<TelaSensores> {
  AccelerometerEvent acelerometro;
  GyroscopeEvent giroscopio;
  List<StreamSubscription> inscricao = [];
  
  @override
  void initState() {
    super.initState();

    inscricao.add(accelerometerEvents.listen(_listen));
    inscricao.add(gyroscopeEvents.listen(_listenGyroscope));
  }

  _listen(AccelerometerEvent event) {
    setState(() {
      acelerometro = event;
    });
  }

  _listenGyroscope(GyroscopeEvent event) {
    setState(() {
      giroscopio = event; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sensores"),
        centerTitle: true,
      ),
      body: Center(
        child: acelerometro != null && giroscopio != null ? Text(
          '''
          Acelerômetro:
          x = ${acelerometro.x.round()}
          y = ${acelerometro.y.round()}
          z = ${acelerometro.z.round()}

          Giroscópio:
          x = ${giroscopio.x.round()}
          y = ${giroscopio.y.round()}
          z = ${giroscopio.z.round()}
          '''
        ) : Text("Aguarde."),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

    inscricao.forEach((element) {
      element.cancel();
    });
  }
} 
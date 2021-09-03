import 'dart:async';

import 'package:flutter/material.dart';
import 'package:location/location.dart';

class TelaLocalizacao extends StatefulWidget {
  const TelaLocalizacao({ Key key }) : super(key: key);

  @override
  _TelaLocalizacao createState() => _TelaLocalizacao();
}

class _TelaLocalizacao extends State<TelaLocalizacao> {
  LocationData local;
  StreamSubscription inscricao;
  
  @override
  void initState() {
    super.initState();

    inscricao = Location.instance.onLocationChanged.listen((event) {
      setState(() {
        local = event;
      });
    });
  }

  void _getLocation() async{
    LocationData location = await Location.instance.getLocation();
    print(location.latitude);

    Location.instance.changeSettings(interval: 3000, accuracy: LocationAccuracy.low);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Localização"),
      ),
      body: Center(
        child: local != null ? 
        Text('''
          lat = ${local.latitude}
          long = ${local.longitude}
          alt = ${local.altitude}
        ''') : 
        Text("Sem localização."),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    inscricao.cancel();
  }
}
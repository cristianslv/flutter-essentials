import 'package:flutter/material.dart';
import 'package:flutter_shared_prefs/model/cor_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Controller {
  CoresApp _cor = CoresApp.Azul;

  Future<void> proximaCor() async{
    if (_cor == CoresApp.Laranja) {
      _cor = CoresApp.Azul;
    } else {
      _cor = CoresApp.values[_cor.index + 1];
    }

    return await salvaCorShared();
  }

  Future<void> salvaCorShared() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setInt('cor', _cor.index);
  }

  Future<void> buscaCor() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey('cor')) {
      prefs.setInt('cor', 0);
    } else {
      int valor = prefs.get('cor');
      
      _cor = CoresApp.values[valor];
    }

    
  }

  Color get cor{
    switch(_cor) {
      case CoresApp.Azul:
        return Colors.blue;
        break;
      case CoresApp.Preto:
        return Colors.black;
        break;
      case CoresApp.Verde:
        return Colors.green;
        break;
      case CoresApp.Vermelho:
        return Colors.red;
        break;
      case CoresApp.Roxo:
        return Colors.purple;
        break;
      case CoresApp.Amarelo:
        return Colors.yellow;
        break;
      case CoresApp.Laranja:
        return Colors.orange;
        break;
    }
  } 
}
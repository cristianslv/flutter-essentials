import 'package:flutter/cupertino.dart';
import 'package:flutter_mysql/controllers/repository.dart';
import 'package:flutter_mysql/models/cidade.dart';

class FirstPageController {
  List<Cidade> cidades = [];
  TextEditingController caixaNome = TextEditingController();
  Repository repository = Repository();

  Future<void> inserir() async{
    Cidade cidade = Cidade(nome: caixaNome.text);

    caixaNome.clear();

    return await repository.insert(cidade);
  }

  Future<void> select() async{
    return repository.selectAll().then((value) {
        cidades = value;
    });
  }

  Future<void> remove(int i) async {
    Cidade cidade = cidades[i];

    return await repository.delete(cidade);
  }
}
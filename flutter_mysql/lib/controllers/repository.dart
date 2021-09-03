import 'package:flutter_mysql/controllers/banco_de_dados.dart';
import 'package:flutter_mysql/models/cidade.dart';

class Repository {
  String sqlInsert = "INSERT INTO cidades (nome) VALUES (?)";
  String sqlDelete = "DELETE FROM cidades WHERE id = ?";
  String sqlUpdate = "UPDATE cidades SET nome = ? WHERE id = ?";

  Future<List<Cidade>> selectAll() async {
    BancoDeDados bancoDeDados = BancoDeDados();

    return await bancoDeDados.db
      .rawQuery("SELECT * FROM cidades")
      .then((List<Map<String, dynamic>> value) {
        List<Cidade> cidades = [];

        value.forEach((Map<String, dynamic> element) { 
          Cidade cidade = Cidade.fromMap(element);

          cidades.add(cidade);
        });

        return cidades;
      });
  }

  Future<int> insert(Cidade cidade) async {
    await BancoDeDados().db.rawInsert(sqlInsert, [cidade.nome]);
  }

  Future<int> update(Cidade cidade) async{
    await BancoDeDados().db.rawUpdate(sqlUpdate, [cidade.nome, cidade.id]);
  }
  
  Future<int> delete(Cidade cidade) async {
    await BancoDeDados().db.rawDelete(sqlDelete, [cidade.id]);
  }
}
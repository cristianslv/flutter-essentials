import 'package:flutter/cupertino.dart';
import 'package:flutter_mvc/models/contato.dart';

class TelaInicialController {
  TextEditingController textNome = TextEditingController();
  TextEditingController textTelefone = TextEditingController();

  List<Contato> _contatos = [
    Contato(nome: "Cristian", telefone: '11111111'),
    Contato(nome: "Ana", telefone: '11111111')
  ];

  List<Contato> get contatos => _contatos;

  void adicionarContato() {
    Contato contato = Contato();

    contato.nome = textNome.text;
    contato.telefone = textTelefone.text;
    
    _contatos.add(contato);

    textNome.clear();
    textTelefone.clear();
  }

  void removerContato(int posicao) {
    _contatos.removeAt(posicao);
  }
}
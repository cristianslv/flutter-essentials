import 'package:flutter/material.dart';
import 'package:flutter_mvc/controllers/tela_inicial_controller.dart';
import 'package:flutter_mvc/models/contato.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({ Key key }) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  TelaInicialController telaInicialController = TelaInicialController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  children: [
                    Text("Digite o Nome"),
                  ],
                ),
              ),
              Container(
                child: TextField(
                  controller: telaInicialController.textNome,
                ),
                margin: EdgeInsets.symmetric(horizontal: 30),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  children: [
                    Text("Digite o Telefone")
                  ],
                ),
              ),
              Container(
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: telaInicialController.textTelefone,
                ),
                margin: EdgeInsets.symmetric(horizontal: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    telaInicialController.adicionarContato();
                  });
                }, 
                child: Text("Salvar"),

              )
            ],
          ),
          Divider(thickness: 2,), 
          Flexible(
            child: _list(),
          )
        ],
      ),
    );
  }

  ListView _list() {
    return ListView.builder(
      itemBuilder: (context, index) {
        Contato contato = telaInicialController.contatos[index];
        return ListTile(
          title: Text(contato.nome),
          subtitle: Text(contato.telefone),
          leading: IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              setState(() {
                telaInicialController.removerContato(index);
              });
            }, 
          ),
        );
      },
      itemCount: telaInicialController.contatos.length,
    );
  }
}
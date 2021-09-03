import 'package:flutter/material.dart';
import 'package:flutter_mysql/controllers/banco_de_dados.dart';
import 'package:flutter_mysql/controllers/first_page_controller.dart';
import 'package:flutter_mysql/controllers/repository.dart';
import 'package:flutter_mysql/models/cidade.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({ Key key }) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool loading = true;
  Repository repository = Repository();
  FirstPageController controller = FirstPageController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    BancoDeDados bd = BancoDeDados();
    bd.openDb().then((value) {
      select();
    });
  }

  void select() {
    controller.select().then((value) {
      setState(() {
        loading = false;
      });
    });
  }

  void inserir() {
    controller.inserir().then((value) {
      select();
      scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text("teste"),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Tela Inicial"),
        centerTitle: true,
      ),
      body: loading ? Center(
        child: CircularProgressIndicator(),
      ) : Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Digite o nome da Cidade:"),
            TextField(
              controller: controller.caixaNome
            ),
            ElevatedButton(
              onPressed: inserir, 
              child: Text("Salvar")
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            !controller.cidades.isEmpty ? Flexible(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(controller.cidades[index].nome),
                    trailing: IconButton(
                      onPressed: () {
                        showDialog(context: context, builder: (context) {
                          return AlertDialog(
                            title: Text("Confirmar ação!"),
                            content: Text("Tem certeza que deseja remover ? "),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  controller.remove(index).then((value) {
                                    select();
                                    Navigator.pop(context);
                                  });
                                }, 
                                child: Text("Confirmar")
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                }, 
                                child: Text("Cancelar")
                              )
                            ],
                          );
                        });
                      },
                      icon: Icon(Icons.clear)
                    ),
                  );
                },
                itemCount: controller.cidades.length,
              ),
            ) : Text("Não há cidades")
          ],
        ),
      ),
    );
  }
}
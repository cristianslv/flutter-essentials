import 'package:flutter/material.dart';

class ListBuilder extends StatefulWidget {
  @override
  _ListBuilderState createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  int x = 0;
  List<int> list = [1,2,3,4,5];
  String title = "MyApp";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("iniciou a tela");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: _funcaoBotao,
        ),
      ),
      body: _listExpandedFlex(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            list.add(list.length + 1);
          });
        },
      )
    );
  }

  ListView _listView() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          child: Text("Posição: ${list[index]}"),
        );
      },
      itemCount: list.length,
    );
  }

  Widget _listExpandedFlex() {
    return Column(
      children: [
        // Expanded(
        //   child: Container(
        //     color: Colors.red,
        //   ),
        // ),
        // Expanded(
        //   child: Container(
        //     color: Colors.blue,
        //   ),
        // ),
        Flexible(
          flex: 60,
          child: Container(
            color: Colors.red,
          ),
        ),
        Flexible(
          flex: 40,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

  void _funcaoBotao() {
    setState(() {
      x++;
    });
  }
}
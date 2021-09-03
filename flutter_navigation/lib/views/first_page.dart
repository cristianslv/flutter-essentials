import 'package:flutter/material.dart';
import 'package:flutter_navigation/views/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({ Key key }) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String text = "";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("$text"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
            return SecondPage();
          }));
          // final data = await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
          //   return SecondPage();
          // }));

          // if (data != null) {
          //   setState(() {
          //     text = data;
          //   });
          // }
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
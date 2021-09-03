import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PicturePage extends StatefulWidget {
  final String pictureString;

  const PicturePage({ this.pictureString, Key key }) : super(key: key);

  @override
  _PicturePageState createState() => _PicturePageState();
}

class _PicturePageState extends State<PicturePage> {
  var decodedPicture;
  Image _image;
  
  @override
  void initState() {
    super.initState();

    var decodedPicture = base64Decode(widget.pictureString);
    _image = Image.memory(decodedPicture);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Picked Picture",
          style: TextStyle(
            color: Colors.white
          )
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          _image == null ? 
            Text("Nenhuma imagem.") : 
            Container(
              child: _image,
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber, width: 4.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save_sharp),
        onPressed: () {
          savePicture();
        },
      ),
    );
  }

  void savePicture() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey('picture')){
      prefs.remove('picture');
    }
    
    prefs.setString('picture', widget.pictureString);

    Navigator.pop(context, widget.pictureString);
  }
}
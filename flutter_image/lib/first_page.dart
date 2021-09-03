import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({ Key key }) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final picker = ImagePicker();
  Image _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Camera"),
        centerTitle: true,
      ),
      body: Center(
        child: _image == null ? Text("Escolha uma foto") : _image,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: () async{
          final pickedFile = await picker.getImage(source: ImageSource.camera);

          final bytes = await pickedFile.readAsBytes();

          String imageString = base64Encode(bytes);

          setState(() {
            var decodedImageString = base64Decode(imageString);

            if (pickedFile != null) {
              _image = Image.memory(decodedImageString);
            } else {
              _image = null;
            }
          });

          print(imageString);
        },
      ),
    );
  }
}
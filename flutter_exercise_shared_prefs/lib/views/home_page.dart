import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_exercise_shared_prefs/views/picture_page.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ImagePicker picker = ImagePicker();
  Image _image;

  @override
  void initState() {
    super.initState();

    getPicture();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shared Picture",
          style: TextStyle(
            color: Colors.white
          ),  
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: _image == null ? Text("My Shared Picture") : _image,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: () {
          getImage();
        },
        backgroundColor: Colors.amber
      ),
    );
  }

  Future<void> getImage() async {
    final pickedPicture = await picker.getImage(source: ImageSource.camera);

    if (pickedPicture != null) {
      final bytes = await pickedPicture.readAsBytes();

      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
        return PicturePage(pictureString: base64Encode(bytes));
      })).then((value) {
        var decodedPicture = base64Decode(value);

        setState(() {
          _image = Image.memory(decodedPicture);
        });
      });
    } else {
      print("The user did not select a picture.");
    }
  }

  void getPicture() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String pictureString = prefs.getString('picture'); 

    if (pictureString != null) {
      var decodedPicture = base64Decode(pictureString);

      setState(() {
        _image = Image.memory(decodedPicture);
      });
    } else {
      setState(() {
        _image = null;
      });
    }
  }
}
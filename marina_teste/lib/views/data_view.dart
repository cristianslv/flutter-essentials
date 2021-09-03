import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataView extends StatefulWidget {
  const DataView({ Key? key }) : super(key: key);

  @override
  _DataViewState createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {
  final blue = const Color(0xFF1364FF);
  
  final lightGray = const Color(0xFFEAEFF5);

  final gray = const Color(0xFFCED4DA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics()
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 375,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 100,
                      left: 40,
                      height: 100,
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("assets/images/logo-azul.png"),
                            fit: BoxFit.scaleDown
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: blue.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 10,
                            )
                          ]
                        )
                      ),
                    ),
                    Positioned(
                      top: 225,
                      left: 40,
                      height: 80,
                      width: 100,
                      child: Container(
                        child: Text(
                          "Olá",
                          style: TextStyle(
                            fontSize: 55,
                            color: blue,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 300,
                      left: 40,
                      height: 80,
                      width: 140,
                      child: Container(
                        child: Text(
                          "Para entrar insira seus dados",
                          style: TextStyle(
                            fontSize: 16,
                            color: gray,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: -115,
                      height: 360,
                      width: 280,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/boat.png"),
                            fit: BoxFit.fill
                          )
                        )
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 40, right: 40, bottom: 30),
                child: TextField(
                  style: TextStyle(
                    color: gray
                  ),
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: gray
                      )
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: gray
                      )
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: gray
                      )
                    ),
                    hintText: "E-mail",
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: gray
                    )
                  ),
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40, bottom: 30),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: gray
                  ),
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: gray
                      )
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: gray
                      )
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: gray
                      )
                    ),
                    hintText: "Senha",
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: gray
                    )
                  ),
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 40, right: 40),
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () => print("tapped"),
                          child: Text(
                            "Criar nova conta",
                            style: TextStyle(
                              fontSize: 12,
                              shadows: [
                                Shadow(
                                  color: blue,
                                  offset: Offset(0, -4)
                                ),
                              ],
                              color: Colors.transparent,
                              decoration: TextDecoration.underline,
                              decorationColor: blue,
                              decorationThickness: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () => print("aqui"),
                          child: Text(
                            "Esqueci minha senha",
                            style: TextStyle(
                              fontSize: 12,
                              shadows: [
                                Shadow(
                                  color: blue,
                                  offset: Offset(0, -4)
                                ),
                              ],
                              color: Colors.transparent,
                              decoration: TextDecoration.underline,
                              decorationColor: blue,
                              decorationThickness: 1,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'data_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final blue = const Color(0xFF1364FF);

  final gray = const Color(0xFFCED4DA);

  final lightGray = const Color(0xFFEAEFF5);

  final strongGray = const Color(0xFF8A98B2);

  double _current = 0;

  List<Column> list = [
    Column(
      children: [
        Container(
          height: 375,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 55,
                left: 30,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://store-guides2.djicdn.com/guides/wp-content/uploads/2018/09/watersport-movement-route-2-1392x1043.jpg"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 25,
                right: 50,
                height: 65,
                width: 65,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://exame.com/wp-content/uploads/2020/07/Triton-370-HT-Foto-Divulga%C3%A7%C3%A3o-Triton-Yachts-2.jpg?quality=70&strip=info&resize=680,453"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 115,
                right: 95,
                height: 140,
                width: 140,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://img.wallpapic-br.com/i3690-925-59/thumb/agua-horizonte-mar-oceano-imagem-de-fundo.jpg"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 260,
                left: 35,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://www.guiaviagensbrasil.com/imagens/Imagem%20do%20barcos%20de%20passeio%20sobre%20as%20%C3%A1guas%20transparente%20do%20mar%20de%20Noronha-Pernambuco.jpg"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 230,
                right: 15,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://files.nsctotal.com.br/s3fs-public/styles/teaser_image_style/public/graphql-upload-files/mercado-barcos-de-luxo-sc-schaeffer_2.jpg?7CwGs5bki5WprR9D2OWhXNFj3a9KuREG&itok=zixna6Pc&width=750"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Container(
            child: Text(
              "Lorem ipsum dolor sit amet",
              style: TextStyle(
                fontSize: 40,
                color: const Color(0xFF1364FF),
                fontWeight: FontWeight.w700
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 10, right: 50),
          child: Container(
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adpiscing elit,",
              style: TextStyle(
                fontSize: 16,
                color: const Color(0xFFCED4DA),
                fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),
      ] 
    ),
    Column(
      children: [
        Container(
          height: 375,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 25,
                left: 30,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://files.nsctotal.com.br/s3fs-public/styles/teaser_image_style/public/graphql-upload-files/mercado-barcos-de-luxo-sc-schaeffer_2.jpg?7CwGs5bki5WprR9D2OWhXNFj3a9KuREG&itok=zixna6Pc&width=750"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 25,
                right: 30,
                height: 65,
                width: 65,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://store-guides2.djicdn.com/guides/wp-content/uploads/2018/09/watersport-movement-route-2-1392x1043.jpg"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 115,
                right: 95,
                height: 140,
                width: 140,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://exame.com/wp-content/uploads/2020/07/Triton-370-HT-Foto-Divulga%C3%A7%C3%A3o-Triton-Yachts-2.jpg?quality=70&strip=info&resize=680,453"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 260,
                left: 35,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://img.wallpapic-br.com/i3690-925-59/thumb/agua-horizonte-mar-oceano-imagem-de-fundo.jpg"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 255,
                right: 15,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://www.guiaviagensbrasil.com/imagens/Imagem%20do%20barcos%20de%20passeio%20sobre%20as%20%C3%A1guas%20transparente%20do%20mar%20de%20Noronha-Pernambuco.jpg"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Container(
            child: Text(
              "Lorem ipsum dolor sit amet",
              style: TextStyle(
                fontSize: 40,
                color: const Color(0xFF1364FF),
                fontWeight: FontWeight.w700
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 10, right: 50),
          child: Container(
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adpiscing elit,",
              style: TextStyle(
                fontSize: 16,
                color: const Color(0xFFCED4DA),
                fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),
      ] 
    ),
    Column(
      children: [
        Container(
          height: 375,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 30,
                left: 30,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://www.guiaviagensbrasil.com/imagens/Imagem%20do%20barcos%20de%20passeio%20sobre%20as%20%C3%A1guas%20transparente%20do%20mar%20de%20Noronha-Pernambuco.jpg"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 25,
                right: 30,
                height: 65,
                width: 65,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://files.nsctotal.com.br/s3fs-public/styles/teaser_image_style/public/graphql-upload-files/mercado-barcos-de-luxo-sc-schaeffer_2.jpg?7CwGs5bki5WprR9D2OWhXNFj3a9KuREG&itok=zixna6Pc&width=750"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 115,
                right: 95,
                height: 140,
                width: 140,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://store-guides2.djicdn.com/guides/wp-content/uploads/2018/09/watersport-movement-route-2-1392x1043.jpg"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 250,
                left: 35,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://exame.com/wp-content/uploads/2020/07/Triton-370-HT-Foto-Divulga%C3%A7%C3%A3o-Triton-Yachts-2.jpg?quality=70&strip=info&resize=680,453"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 260,
                right: 15,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://img.wallpapic-br.com/i3690-925-59/thumb/agua-horizonte-mar-oceano-imagem-de-fundo.jpg"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Container(
            child: Text(
              "Lorem ipsum dolor sit amet",
              style: TextStyle(
                fontSize: 40,
                color: const Color(0xFF1364FF),
                fontWeight: FontWeight.w700
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 10, right: 50),
          child: Container(
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adpiscing elit,",
              style: TextStyle(
                fontSize: 16,
                color: const Color(0xFFCED4DA),
                fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),
      ] 
    ),
    Column(
      children: [
        Container(
          height: 375,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 25,
                left: 30,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://img.wallpapic-br.com/i3690-925-59/thumb/agua-horizonte-mar-oceano-imagem-de-fundo.jpg"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 25,
                right: 30,
                height: 65,
                width: 65,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://www.guiaviagensbrasil.com/imagens/Imagem%20do%20barcos%20de%20passeio%20sobre%20as%20%C3%A1guas%20transparente%20do%20mar%20de%20Noronha-Pernambuco.jpg"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 115,
                right: 95,
                height: 140,
                width: 140,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://files.nsctotal.com.br/s3fs-public/styles/teaser_image_style/public/graphql-upload-files/mercado-barcos-de-luxo-sc-schaeffer_2.jpg?7CwGs5bki5WprR9D2OWhXNFj3a9KuREG&itok=zixna6Pc&width=750"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 260,
                left: 15,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://store-guides2.djicdn.com/guides/wp-content/uploads/2018/09/watersport-movement-route-2-1392x1043.jpg"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
              Positioned(
                top: 260,
                right: 15,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://exame.com/wp-content/uploads/2020/07/Triton-370-HT-Foto-Divulga%C3%A7%C3%A3o-Triton-Yachts-2.jpg?quality=70&strip=info&resize=680,453"),
                      fit: BoxFit.cover
                    )
                  )
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Container(
            child: Text(
              "Lorem ipsum dolor sit amet",
              style: TextStyle(
                fontSize: 40,
                color: const Color(0xFF1364FF),
                fontWeight: FontWeight.w700
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 10, right: 50),
          child: Container(
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adpiscing elit,",
              style: TextStyle(
                fontSize: 16,
                color: const Color(0xFFCED4DA),
                fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),
      ] 
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics()
        ),
        child: Container(
          padding:EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              CarouselSlider(
                items: list.map((item) => item).toList(), 
                options: CarouselOptions(
                  height: 595,
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index.toDouble();
                    });
                  },
                  viewportFraction: 1,
                  autoPlayCurve: Curves.bounceInOut
                )
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: new DotsIndicator(
                  dotsCount: list.length,
                  position: _current,
                  decorator: DotsDecorator(
                    color: lightGray,
                    activeColor: blue,
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (BuildContext context) {
                            return DataView();
                          }
                        ));
                      }, 
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700
                                  )
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0.1,
                        shadowColor: Colors.white,
                        primary: blue,
                        minimumSize: Size(double.infinity, 65),
                        shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)
                        )
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {}, 
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Começar agora",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700
                                    )
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0.1,
                          shadowColor: Colors.white,
                          primary: lightGray,
                          onPrimary: strongGray,
                          minimumSize: Size(double.infinity, 65),
                          shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60)
                          )
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
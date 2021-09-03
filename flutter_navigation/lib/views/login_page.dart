import 'package:flutter/material.dart';
import 'package:flutter_navigation/views/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController user = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Center(
                child: Text("Login",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 60.0,
                    // fontFamily: "Arial"
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "User",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4)
                  )
                ),
                controller: user,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4)
                  )
                ),
                controller: password,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.all(12)
                      ),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                          fontSize: 25.0,
                          fontFamily: "Radish"
                        )
                      ) 
                    ),
                    child: Text("Entrar"),
                    onPressed: () {
                      if (user.text == "cristian" && password.text == "123") {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return HomePage(user: user.text);
                        }));
                      }
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
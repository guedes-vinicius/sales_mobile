import 'package:flutter/material.dart';
import 'package:sales_mobile/components/background.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ButtonStyle style = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)));

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'LOGIN',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 36),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(labelText: 'Usuário'),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: ElevatedButton(
                onPressed: () {},
                style: style,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 255, 136, 34),
                        Color.fromARGB(255, 255, 177, 41)
                      ])),
                  padding: EdgeInsets.all(0),
                  child: Text(
                    'Entrar',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

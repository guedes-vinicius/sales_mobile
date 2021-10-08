import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final usuario = TextEditingController();
  final senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top:60,left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 190,
              height: 200,
              child: Image.asset("assets/sale.png"),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Usuário",
                hintText: "Usuário",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelStyle: TextStyle(
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: senha,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Senha",
                hintText: "Senha",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                labelStyle: TextStyle(
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 40),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3,1],
                  colors: [Color(0xFF00d1dc),
                  Color(0xFF0093ea)
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(5)
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Entrar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20
                      ),
                      textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Icon(Icons.assignment_ind_outlined,color: Colors.white,),
                        ),
                      )
                    ],
                  ),
                  onPressed: (){},
                ),),
            )
          ],
        ),
      ),
    );
  }
}
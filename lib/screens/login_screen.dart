import 'package:flutter/material.dart';
import '../components/background.dart';
import './register_screen.dart';
import '../centerview/centerview.dart';

//center view contolling boundary for login and resiter routes;
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: CenterViewxx(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Background(
              item: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(179, 0, 0, 1),
                        fontSize: 36,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.03),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(labelText: "Username"),
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.03),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      decoration: InputDecoration(labelText: "Password"),
                      obscureText: true,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(179, 0, 0, 1),
                      ),
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.06),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: constraints.maxWidth * 0.7,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          color: Color.fromRGBO(179, 0, 0, 1),
                        ),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "LOGIN",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Register.routeName);
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: constraints.maxWidth * 0.7,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          color: Color.fromRGBO(179, 0, 0, 1),
                        ),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "Create Organisation",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

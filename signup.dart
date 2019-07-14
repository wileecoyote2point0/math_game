import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.tealAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage('assets/nevroner3.jpg'),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Theme(
            data: new ThemeData(
              brightness: Brightness.dark,
              inputDecorationTheme: new InputDecorationTheme(
                labelStyle:
                    new TextStyle(color: Colors.tealAccent, fontSize: 20.0),
              ),
            ),
            isMaterialAppTheme: true,
            child: new Container(
              padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 80.0),
              child: new Form(
                autovalidate: true,
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Image(
                      image: new AssetImage('assets/math_logo3.png'),
                    ),
                    Expanded(
                      child: new Container(
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 5.0, left: 40.0, right: 40.0),
                        child: new Form(
                          autovalidate: true,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "Enter Email",
                                  fillColor: Colors.white,
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              new TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "Enter Nickname",
                                  fillColor: Colors.white,
                                ),
                                keyboardType: TextInputType.text,
                              ),
                              new TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "Enter Password",
                                  fillColor: Colors.white,
                                ),
                                obscureText: true,
                                keyboardType: TextInputType.text,
                              ),
                              new TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "ReEnter Password",
                                  fillColor: Colors.white,
                                ),
                                obscureText: true,
                                keyboardType: TextInputType.text,
                              ),
                              Padding(padding: EdgeInsets.only(top: 20)),
                              new MaterialButton(
                                  color: Colors.teal,
                                  textColor: Colors.white,
                                  child: new Text("Register"),
                                  onPressed: () => {}),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

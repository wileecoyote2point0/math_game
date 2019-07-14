import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'signup.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(primarySwatch: Colors.purple),
        home: new LoginPage(),
        routes: <String, WidgetBuilder>{
          '/signup': (BuildContext context) => new SignupPage()
        });
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500),
    );
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.tealAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/nevroner3.jpg"),
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
                        image: new AssetImage("assets/math_logo3.png"),
                      ),
                      Expanded(
                        child: new Container(
                          padding: EdgeInsets.only(
                              left: 40.0, right: 40.0, top: 100.0),
                          child: new Form(
                            autovalidate: true,
                            child: new Column(
                              mainAxisSize: MainAxisSize.min,
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
                                    labelText: "Enter Password",
                                    fillColor: Colors.white,
                                  ),
                                  obscureText: true,
                                  keyboardType: TextInputType.text,
                                ),
                                new Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40.0, right: 40.0, top: 10.0),
                                ),
                                new MaterialButton(
                                    color: Colors.teal,
                                    textColor: Colors.white,
                                    child: new Text("Login"),
                                    onPressed: () => {}),
                                new SizedBox(width: 20.0, height: 5.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "New to Math Messenger ?",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          decoration: TextDecoration.underline),
                                    )
                                  ],
                                ),
                                new SizedBox(width: 5.0, height: 10.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Register",
                                      style: TextStyle(
                                        color: Colors.tealAccent,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

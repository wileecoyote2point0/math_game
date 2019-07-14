import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(primarySwatch: Colors.purple),
        home: MainPage(),
        routes: <String, WidgetBuilder>{});
  }
}

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => new MainPageState();
}

class MainPageState extends State<MainPage> {
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
                    new TextStyle(color: Colors.tealAccent, fontSize: 55.0),
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
                    new Container(
                      padding: const EdgeInsets.all(40.0),
                      child: new Form(
                          autovalidate: true,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new TextFormField(
                                decoration: new InputDecoration(
                                    hintText: "Enter your Math Puzzle",
                                    fillColor: Colors.tealAccent),
                                keyboardType: TextInputType.text,
                              ),
                              new TextFormField(
                                decoration: new InputDecoration(
                                    hintText: "Enter your Answer",
                                    fillColor: Colors.tealAccent),
                                keyboardType: TextInputType.text,
                              ),
                              new TextFormField(
                                decoration: new InputDecoration(
                                    hintText: "Enter first hint",
                                    fillColor: Colors.tealAccent),
                                keyboardType: TextInputType.text,
                              ),
                              new TextFormField(
                                decoration: new InputDecoration(
                                    hintText: "Enter second hint",
                                    fillColor: Colors.tealAccent),
                                keyboardType: TextInputType.text,
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(
                                    left: 40.0, right: 40.0, top: 30.0),
                              ),
                              new MaterialButton(
                                  color: Colors.teal,
                                  textColor: Colors.white,
                                  child: new Text("Send"),
                                  onPressed: () => {}),
                            ],
                          )),
                    )
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

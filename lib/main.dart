import 'package:flutter/material.dart';
import 'AboutPage.dart';
import 'AboutPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            flexibleSpace: Image.network(
              "http://www.sosbichosderua.org.br/pics/logo.png",
            ),
            backgroundColor: Colors.white,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 2.0),
          child: Row(
            children: <Widget>[
              RaisedButton(
                child: Text("Sobre"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => About()));
                },
              ),
              RaisedButton(
                child: Text("Adoção"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Adoption()));
                },
              ),
              RaisedButton(
                child: Text("Animais perdidos"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => LostAnimals()));
                },
              ),
              RaisedButton(
                  child: Text("Contato"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Contact()));
                  }),
            ],
          ),
        ));
  }
}

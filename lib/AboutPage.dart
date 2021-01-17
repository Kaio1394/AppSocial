import 'dart:io';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sobre",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Text(
          "Associação não governamental, sem fins lucrativos, fundada em 04 de março de 2011, na cidade de Ponta Grossa, estado do Paraná, e inscrita no CNPJ sob nº 13.393.050/0001-28."),
    );
  }
}

class Adoption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Adoção",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: RaisedButton(
                child: Text("Adicione animais para adoção"),
                onPressed: () {},
              ),
            )
          ],
        ));
  }
}

class LostAnimals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Animais perdidos",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: RaisedButton(
                child: Text("Adicione animal perdido"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => AddAnimalLost()));
                },
              ),
            )
          ],
        ));
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formulário para contato",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  labelText: "Nome",
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.person)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                icon: Icon(Icons.email),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  labelText: "Telefone",
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.phone_android)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: TextField(
              maxLength: 1000,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  labelText: "Mensagem",
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.message)),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("Enviar mensagem"),
          )
        ],
      ),
    );
  }
}

class AddAnimalLost extends StatefulWidget {
  @override
  _AddAnimalLostState createState() => _AddAnimalLostState();
}

class _AddAnimalLostState extends State<AddAnimalLost> {
  File imageFile;

  _openCamera(BuildContext context) async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {

    });

  }

  Widget _decideImageView(){
    if(imageFile ==null){
      return Text("Imagem não selecionada");
    }else {
      Image.file(imageFile, width: 400, height: 400,);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Formulário"),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Center(
            child: RaisedButton(
              child: Text("Tirar foto"),
              onPressed: () {
                _decideImageView();
                _openCamera(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}

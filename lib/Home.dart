import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _recuperarCep() async {
    String url = "https://viacep.com.br/ws/01001000/json/";
    http.Response response;

    response = await http.get(Uri.parse(url));

    print("resposta: " + response.statusCode.toString());
    print("resposta: " + response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de serviços WEB"),
      ),
      body: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: <Widget>[
              ElevatedButton(
                  onPressed: _recuperarCep, child: Text("Clique aqui"))
            ],
          )),
    );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}

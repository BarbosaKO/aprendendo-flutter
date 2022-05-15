import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  Future<Map> _recuperarPreco() async {
    String url = "https://blockchain.info/ticker";
    http.Response response = await http.get(Uri.parse(url));
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumo Serviço Avançado"),
      ),
      body: FutureBuilder<Map>(
        future: _recuperarPreco(),
        builder: (context, snapshot) {
          late String resultado;

          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.active:
            case ConnectionState.waiting:
              resultado = "Carregando...";
              print("Waiting");
              break;
            case ConnectionState.done:
              if (snapshot.hasError) {
                resultado = "Houve um erro!";
              } else {
                double valor = snapshot.data?['BRL']['buy'];
                resultado = "O valor do bitcoin está em ${valor.toString()}";
              }
              print("Done");
              break;
          }

          return Center(
            child: Text(resultado),
          );
        },
      ),
    );
  }
}

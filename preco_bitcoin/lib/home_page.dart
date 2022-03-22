import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _precoBitcoin = "R\$ 0.0";

  _buscarPreco() async {
    //URL da API de BITCOIN
    const String urlAPI = "https://blockchain.info/ticker";

    http.Response response = await http.get(Uri.parse(urlAPI));
    Map<String, dynamic> responseConverted = jsonDecode(response.body);

    setState(() {
      _precoBitcoin = "R\$ " + responseConverted["BRL"]["buy"].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Preço do Bitcoin"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "images/bitcoin.png",
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 18,
                bottom: 18,
              ),
              child: Text(
                _precoBitcoin,
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => _buscarPreco(),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Atualizar"),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.orange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

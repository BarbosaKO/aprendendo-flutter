import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controllerCEP = TextEditingController();
  String _resultado = "";

  _obterResultado() async {
    String url = "https://viacep.com.br/ws/${_controllerCEP.text}/json/";
    http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> responseDecode = jsonDecode(response.body);

    setState(() {
      _resultado = "Rua: " + responseDecode["logradouro"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumindo API's "),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                label: Text("CEP ex: 18119150"),
              ),
              controller: _controllerCEP,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ElevatedButton(
                onPressed: () => _obterResultado(),
                child: const Text("Buscar CEP"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(_resultado),
            ),
          ],
        ),
      ),
    );
  }
}

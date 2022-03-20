import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  //Vars
  final TextEditingController _textEditingController = TextEditingController();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de dados"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Dados:",
                ),
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.greenAccent,
                ),
                //obscureText: true,
                controller: _textEditingController,
              ),
              ElevatedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print(_textEditingController.text);
                },
                child: const Text("Enviar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

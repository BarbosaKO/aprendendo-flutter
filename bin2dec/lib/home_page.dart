import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _resultado = "";
  final TextEditingController _binController = TextEditingController();

  _calcularResultado() {
    int numeroRecebido = int.tryParse(_binController.text) != null
        ? int.parse(int.tryParse(_binController.text).toString())
        : 0;
    List<String> listaDigitosBin = [];
    String valorEmTexto = "";

    if (numeroRecebido != 0) {
      while (numeroRecebido ~/ 2 > 0) {
        listaDigitosBin.add((numeroRecebido % 2).toString());
        numeroRecebido = (numeroRecebido ~/ 2);
      }
      listaDigitosBin.add((numeroRecebido % 2).toString());
    } else {
      valorEmTexto = "0";
    }
    listaDigitosBin.reversed
        .forEach((element) => valorEmTexto += element.toString());

    setState(() {
      _resultado = int.tryParse(_binController.text) != null
          ? valorEmTexto
          : "Digite um número inteiro!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bin2Dec"),
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                labelText: "Decimal",
              ),
              keyboardType: TextInputType.number,
              controller: _binController,
              onChanged: (String? textoVariando) => _calcularResultado(),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                _resultado,
                style: const TextStyle(fontSize: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

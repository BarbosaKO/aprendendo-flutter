import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //Vars
  String _result = "";
  final TextEditingController _textEditingControllerA = TextEditingController();
  final TextEditingController _textEditingControllerG = TextEditingController();

  _calcularResposta() {
    double? precoAlcool = double.tryParse(_textEditingControllerA.text);
    double? precoGasolina = double.tryParse(_textEditingControllerG.text);
    setState(() {
      if ((precoGasolina == null) || (precoAlcool == null)) {
        _result = "Digite os preços corretamente!!";
      } else {
        if ((precoAlcool / precoGasolina) >= 0.7) {
          _result = "É melhor abastecer com Gasolina";
        } else {
          _result = "É melhor abastecer com Alcool";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Álcool ou Gasolina"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(34.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //Logo image
              Image.asset("images/logo.png"),
              //Text
              const Text(
                "Saiba qual a melhor opção para abastecimento do seu carro",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              //Alcool field
              TextField(
                decoration: const InputDecoration(
                  hintText: "Preço Alcool, ex: 1.59",
                ),
                keyboardType: TextInputType.number,
                controller: _textEditingControllerA,
              ),
              //Gasoline field
              TextField(
                decoration: const InputDecoration(
                  hintText: "Preço Gasolina, ex: 3.15",
                ),
                keyboardType: TextInputType.number,
                controller: _textEditingControllerG,
              ),
              //Submit button
              ElevatedButton(
                onPressed: () => _calcularResposta(),
                child: const Text("Calcular"),
              ),
              Text(
                _result,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  String _botChoice = "images/padrao.png";
  String _resultText = "Escolha uma opção:";
  final List<String> _allChoices = [
    "images/papel.png",
    "images/pedra.png",
    "images/tesoura.png"
  ];

  Widget choicesImagesBtn(int index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 8.0),
      child: GestureDetector(
        onTap: () => setState(() {
          int numChoiceBot = Random().nextInt(_allChoices.length);
          _botChoice = _allChoices[numChoiceBot];

          if (numChoiceBot == index) {
            _resultText = "Houve um empate!";
          } else if (numChoiceBot == 0) {
            //Bot jogou papel
            _resultText = index == 2
                ? "Tesoura ganha de Papel: Você ganhou"
                : "Pedra perde pra papel: Você perdeu";
          } else if (numChoiceBot == 1) {
            //Bot jogou pedra
            _resultText = index == 0
                ? "Papel ganha de Pedra: Você ganhou"
                : "Tesoura perde pra pedra: Você perdeu";
          } else {
            //Bot jogou tesoura
            _resultText = index == 1
                ? "Pedra ganha de Tesoura: Você ganhou"
                : "Papel perde pra tesoura: Você perdeu";
          }
        }),
        child: Image.asset(
          _allChoices[index],
          width: 90,
          height: 90,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jokepô GBS"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            //text
            const Padding(
              padding: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
              child: Text("Escolha do app:"),
            ),
            //image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                _botChoice,
                width: 90,
                height: 90,
              ),
            ),
            //text result
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_resultText),
            ),
            //line with choices images
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                choicesImagesBtn(0),
                choicesImagesBtn(1),
                choicesImagesBtn(2),
              ],
            )
          ],
        ),
      ),
    );
  }
}

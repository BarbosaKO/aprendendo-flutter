import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Luck Dices'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  const Dadoos({Key key}) : super(key: key);

  @override
  _DadoosState createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int counterA = 1;
  int counterB = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1, //se refere ao espaço que ele ocupa
            child: TextButton(
              child: Image(
                image: AssetImage('imagens/dado$counterA.png'),
              ),
              onPressed: () {
                setState(() {
                  //counterA = counterA == 6 ? 1 : counterA + 1;
                  counterA = Random().nextInt(6) + 1;
                  counterB = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image(
                image: AssetImage('imagens/dado$counterB.png'),
              ),
              onPressed: () {
                setState(() {
                  //counterB = counterB == 6 ? 1 : counterB + 1;
                  counterA = Random().nextInt(6) + 1;
                  counterB = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

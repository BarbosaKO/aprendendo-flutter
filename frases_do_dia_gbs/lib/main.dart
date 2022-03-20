import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Frases do dia",
      home: HomeStateful(),
    ),
  );
}

class HomeStateful extends StatefulWidget {
  const HomeStateful({Key? key}) : super(key: key);

  @override
  State<HomeStateful> createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  String _texto = "Clique abaixo para gerar uma frase!";
  final List<String> _frases = [
    "Hoje está quente!",
    "ipsum dolor sit amet adipiscing elit dolor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id ultricies leo. Aliquam non nunc nec mauris imperdiet maximus in ut lorem. Vivamus et dui nec risus euismod vestibulum non sed enim.",
    "Rumbling, Rumbling, it's coming!",
    "All I ever wanted to do was do right things",
    "これ以上の地獄はないだろうと信じたかった",
    "扉を叩く音は絶えず酷く無作法で",
    "何を捨てれば悪魔をも凌げる？",
  ];

  void _gerarFrase() {
    _texto = _frases[Random().nextInt(_frases.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("images/logo.png"),
            Text(
              _texto,
              textAlign: TextAlign.center,
            ),
            FlatButton(
              color: Colors.green,
              onPressed: () => setState(() {
                _gerarFrase();
              }),
              child: const Text("Nova Frase"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ContatoPage extends StatelessWidget {
  const ContatoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contato"),
        backgroundColor: Colors.green[400],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("imagens/detalhe_contato.png"),
                  const Text(
                    "Contato",
                    style: TextStyle(
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16, top: 25),
                child: Text("Email: empresa@email.com"),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 6, top: 6, left: 16),
                child: Text("Telefone: (11) 3382-1421"),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 6, top: 6, left: 16),
                child: Text("Celular: (11) 98882-1421"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

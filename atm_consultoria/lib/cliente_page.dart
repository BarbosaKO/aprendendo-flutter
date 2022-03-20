import 'package:flutter/material.dart';

class ClientePage extends StatelessWidget {
  const ClientePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cliente"),
        backgroundColor: Colors.lightGreen,
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
                  Image.asset("imagens/detalhe_cliente.png"),
                  const Text(
                    "Clientes",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Image.asset("imagens/cliente1.png"),
              const Padding(
                padding: EdgeInsets.only(bottom: 16, top: 6),
                child: Text("Empresa de software"),
              ),
              Image.asset("imagens/cliente2.png"),
              const Padding(
                padding: EdgeInsets.only(bottom: 16, top: 6),
                child: Text("Empresa de auditoria"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

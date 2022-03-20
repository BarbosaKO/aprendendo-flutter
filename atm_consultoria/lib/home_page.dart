import 'package:atm_consultoria/cliente_page.dart';
import 'package:atm_consultoria/contato_page.dart';
import 'package:atm_consultoria/empresa_page.dart';
import 'package:atm_consultoria/servicos_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ATM Consultoria"),
      ),
      body: Container(
        padding: const EdgeInsets.all(34),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("imagens/logo.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Empresa
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: GestureDetector(
                      child: Image.asset("imagens/menu_empresa.png"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EmpresaPage()),
                        );
                      }),
                ),
                //Serviços
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: GestureDetector(
                      child: Image.asset("imagens/menu_servico.png"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ServicosPage()),
                        );
                      }),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Cliente
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: GestureDetector(
                      child: Image.asset("imagens/menu_cliente.png"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ClientePage()),
                        );
                      }),
                ),
                //Contato
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: GestureDetector(
                      child: Image.asset("imagens/menu_contato.png"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ContatoPage()),
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

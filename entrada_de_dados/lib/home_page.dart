import 'package:entrada_de_dados/campo_checkbox.dart';
import 'package:entrada_de_dados/campo_radio.dart';
import 'package:entrada_de_dados/campo_slider.dart';
import 'package:entrada_de_dados/campo_switch.dart';
import 'package:entrada_de_dados/campo_texto.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets de entrada de dados"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CampoTexto(
                      valor: "- oii",
                    ),
                  ),
                );
              },
              child: const Text("Campos de Texto"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CampoCheckbox(),
                  ),
                );
              },
              child: const Text("Campos de Checkbox"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CampoRadio(),
                  ),
                );
              },
              child: const Text("Campos de Radio Button"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CampoSwitch(),
                  ),
                );
              },
              child: const Text("Campos de Switch"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CampoSlider(),
                  ),
                );
              },
              child: const Text("Campos de Slider"),
            ),
          ],
        ),
      ),
    );
  }
}

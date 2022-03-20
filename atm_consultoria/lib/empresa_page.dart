import 'package:flutter/material.dart';

class EmpresaPage extends StatelessWidget {
  const EmpresaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A Empresa"),
        backgroundColor: Colors.red[400],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("imagens/detalhe_empresa.png"),
                  const Text(
                    "Sobre a empresa",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tortor arcu, aliquet quis libero ac, iaculis varius elit. Duis diam felis, lobortis sit amet metus eget, laoreet gravida arcu. Sed fermentum sed mi nec tristique. Nullam sagittis suscipit sem sed lobortis. Donec rhoncus, nisl quis volutpat consequat, metus justo pellentesque nisi, vitae feugiat nunc neque ut ante. Donec vel mi hendrerit, consequat enim nec, suscipit neque. Donec faucibus lacus sit amet nunc hendrerit, non scelerisque odio laoreet. Sed molestie, enim eget hendrerit aliquet, quam metus semper purus, et rutrum justo nisi et leo. Aenean bibendum, libero nec feugiat interdum, turpis eros vehicula nulla, egestas porta ante leo eu nulla. Suspendisse potenti. Fusce in tortor quis lacus semper scelerisque id placerat mi. Phasellus aliquam cursus ipsum ac consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tortor arcu, aliquet quis libero ac, iaculis varius elit. Duis diam felis, lobortis sit amet metus eget, laoreet gravida arcu. Sed fermentum sed mi nec tristique. Nullam sagittis suscipit sem sed lobortis. Donec rhoncus, nisl quis volutpat consequat, metus justo pellentesque nisi, vitae feugiat nunc neque ut ante. Donec vel mi hendrerit, consequat enim nec, suscipit neque. Donec faucibus lacus sit amet nunc hendrerit, non scelerisque odio laoreet. Sed molestie, enim eget hendrerit aliquet, quam metus semper purus, et rutrum justo nisi et leo. Aenean bibendum, libero nec feugiat interdum, turpis eros vehicula nulla, egestas porta ante leo eu nulla. Suspendisse potenti. Fusce in tortor quis lacus semper scelerisque id placerat mi. Phasellus aliquam cursus ipsum ac consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tortor arcu, aliquet quis libero ac, iaculis varius elit. Duis diam felis, lobortis sit amet metus eget, laoreet gravida arcu. Sed fermentum sed mi nec tristique. Nullam sagittis suscipit sem sed lobortis. Donec rhoncus, nisl quis volutpat consequat, metus justo pellentesque nisi, vitae feugiat nunc neque ut ante. Donec vel mi hendrerit, consequat enim nec, suscipit neque. Donec faucibus lacus sit amet nunc hendrerit, non scelerisque odio laoreet. Sed molestie, enim eget hendrerit aliquet, quam metus semper purus, et rutrum justo nisi et leo. Aenean bibendum, libero nec feugiat interdum, turpis eros vehicula nulla, egestas porta ante leo eu nulla. Suspendisse potenti. Fusce in tortor quis lacus semper scelerisque id placerat mi. Phasellus aliquam cursus ipsum ac consequat.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

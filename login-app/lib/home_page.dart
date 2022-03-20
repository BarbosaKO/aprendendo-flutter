// ignore_for_file: avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:login_app/user_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  String email = UserController.instance.email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('Gabriel Barbosa'),
              accountEmail: Text(email),
            ),
            ListTile(
              title: const Text('Sair'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(child: Text('Você está logado com o email: \n$email')),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_app/user_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Login do Gabriel Barbosa'),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                /* const Icon(
                Icons.account_box_outlined,
                size: 70,
                color: Colors.blueAccent,
              ), */
                Image.asset('images/pordosol.gif'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (text) {
                            UserController.instance.email = text;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Email',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (text) {
                            UserController.instance.senha = text;
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Senha',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(120, 1, 120, 1),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: OutlinedButton(
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blueAccent),
                          ),
                          onPressed: () {
                            /* Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          ); */

                            Navigator.of(context)
                                .pushReplacementNamed('/homepage');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

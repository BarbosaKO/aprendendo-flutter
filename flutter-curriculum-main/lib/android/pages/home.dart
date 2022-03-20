import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Meu cartão'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: CircleAvatar(
                child: Image.asset(
                  'images/perfil.png',
                  height: 120.0,
                  width: 120.0,
                ),
                radius: 65,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 25.0),
              child: Text(
                "Gabriel Barbosa",
                style: TextStyle(fontSize: 45),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(
                  Icons.email_outlined,
                  color: Colors.deepPurple,
                ),
                Text(
                  " : gahbarbosasilva@gmail.com",
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 12, 0.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Icon(
                      Icons.phone,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Text(
                    " : (15) 98882-1261",
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 12, 0.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Icon(
                      Icons.add_location_rounded,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Text(
                    " : Sorocaba - São Paulo",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

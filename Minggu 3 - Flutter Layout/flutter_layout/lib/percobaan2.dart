import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  "Surabaya Submarine Monument",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Surabaya Submarine Monument has supporting facilities such as video rama, live music, swimming pool for kids and water tourism in Kalimas River, a souvenir stand and parking space. In the complex of the museum also stand a spacious stage for special occassions. Riverside of Kalimas is a nice and romantic place for young couples or as education facility for families.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

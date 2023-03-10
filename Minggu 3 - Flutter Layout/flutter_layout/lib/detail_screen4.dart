import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('assets/images/submarine.jpg'),
              Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Text(
                    "Surabaya Submarine Monument",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        Text("Open Everyday"),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Surabaya Submarine Monument has supporting facilities such as video rama, live music, swimming pool for kids and water tourism in Kalimas River, a souvenir stand and parking space. In the complex of the museum also stand a spacious stage for special occassions. Riverside of Kalimas is a nice and romantic place for young couples or as education facility for families.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.network(
                          'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/images/monkasel_1.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/images/monkasel_2.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/images/monkasel_3.jpg'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

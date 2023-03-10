import 'package:flutter/material.dart';
import 'package:flutter_layout/model/tourism_place_percobaan_pt2.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(place.imageAsset),
              Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Text(
                    place.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Lobster',
                    ),
                  ),
              ),
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
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        Text("08:00 - 16:00"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        Text("Rp 5.000,-"),
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
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/images/monkasel_1.jpg')
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/images/monkasel_2.jpg')
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/images/monkasel_3.jpg')
                      ),
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

import 'package:flutter/material.dart';
import 'package:flutter_layout/model/tourism_place_tugas_pt2.dart';

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
                        Text(place.day),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        Text(place.time),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        Text(place.ticket),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  place.description,
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
                        child: Image.asset(place.img1),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(place.img2)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(place.img3)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(place.img4)
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

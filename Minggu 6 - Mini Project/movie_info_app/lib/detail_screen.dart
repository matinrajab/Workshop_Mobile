import 'package:flutter/material.dart';
import 'package:movie_info_app/background_color.dart';
import 'package:movie_info_app/model/movie.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            BackgroundColor(),
            ListView(children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    child: Stack(
                      children: <Widget>[
                        ShaderMask(
                          shaderCallback: (rectangle){
                            return LinearGradient(
                              colors: [Colors.grey, Colors.transparent],
                              begin: Alignment.center,
                              end: Alignment.bottomCenter
                            ).createShader(Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
                          },
                          child: Image.network(
                            movie.poster,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          height: 530,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                movie.title,
                                style: TextStyle(
                                  fontSize: 34,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 8, bottom: 8),
                                    padding: EdgeInsets.fromLTRB(6, 3, 6, 3),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(width: 1.0, color: Colors.white)
                                    ),
                                    child: Text(movie.genre1, style: TextStyle(color: Colors.white, fontSize: 12),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.fromLTRB(6, 3, 6, 3),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(width: 1.0, color: Colors.white)
                                    ),
                                    child: Text(movie.genre2, style: TextStyle(color: Colors.white, fontSize: 12),),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      movie.duration,
                                      style: TextStyle(
                                          color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(

                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star, size: 16, color: Color.fromARGB(255, 227, 185, 11),),
                                        Icon(Icons.star, size: 16, color: Color.fromARGB(255, 227, 185, 11),),
                                        Icon(Icons.star, size: 16, color: Color.fromARGB(255, 227, 185, 11),),
                                        Icon(Icons.star, size: 16, color: Color.fromARGB(255, 227, 185, 11),),
                                        Icon(Icons.star, size: 16, color: Colors.grey),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      movie.rating,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      movie.story,
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Cast",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: EdgeInsets.all(10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.network(
                                  movie.img1,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                movie.cast1,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.network(
                                  movie.img2,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                movie.cast2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.network(
                                  movie.img3,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                movie.cast3,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.network(
                                  movie.img4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                movie.cast4,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.network(
                                  movie.img5,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50,
                              padding: EdgeInsets.all(10),
                              child: Text(
                                movie.cast5,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ])
          ],
        ),
      ),
    );
  }
}

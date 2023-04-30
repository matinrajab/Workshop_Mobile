import 'package:flutter/material.dart';
import 'package:movie_info_app/model/movie.dart';
import 'package:movie_info_app/provider/favorite_movie_provider.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 30, 39, 98),
                Color.fromARGB(255, 12, 29, 59),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
          ),
          child: ListView(children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Consumer<FavoriteMovieProvider>(
                  builder: (context, favoriteMovieProvider, _) => GestureDetector(
                    onDoubleTap: (){
                      movie.isFavorite = movie.isFavorite ? false : true;
                      favoriteMovieProvider.complete(movie, movie.isFavorite);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16.0),
                      child: Stack(
                        children: <Widget>[
                          ShaderMask(
                            shaderCallback: (rectangle) {
                              return const LinearGradient(
                                      colors: [Colors.grey, Colors.transparent],
                                      begin: Alignment.center,
                                      end: Alignment.bottomCenter)
                                  .createShader(Rect.fromLTRB(
                                      0, 0, rectangle.width, rectangle.height));
                            },
                            child: Image.network(
                              movie.poster,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            height: 530,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  movie.title,
                                  style: const TextStyle(
                                      fontSize: 34,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                buildGenre(),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      movie.duration,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: const Row(
                                        children: <Widget>[
                                          Icon(Icons.star, size: 16, color: Color.fromARGB(255, 227, 185, 11)),
                                          Icon(Icons.star, size: 16, color: Color.fromARGB(255, 227, 185, 11)),
                                          Icon(Icons.star, size: 16, color: Color.fromARGB(255, 227, 185, 11)),
                                          Icon(Icons.star, size: 16, color: Color.fromARGB(255, 227, 185, 11)),
                                          Icon(Icons.star, size: 16, color: Colors.grey),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        movie.rating,
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                )),
                              Consumer<FavoriteMovieProvider>(
                                builder: (context, favoriteMovieProvider, _) =>
                                  IconButton(
                                    onPressed: () {
                                      movie.isFavorite = movie.isFavorite ? false : true;
                                      favoriteMovieProvider.complete(movie, movie.isFavorite);
                                    },
                                    icon: movie.isFavorite ? const Icon(Icons.favorite, color: Colors.red) : const Icon(Icons.favorite_border, color: Colors.white,)
                                  )
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    movie.story,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Column(
                    children: <Widget>[
                      Text(
                        "Cast",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                buildCast(),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Widget buildGenre() {
    return Row(
      children: <Widget>[genre(movie.genre1), genre(movie.genre2)],
    );
  }

  Widget genre(String genre) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
      padding: const EdgeInsets.fromLTRB(6, 3, 6, 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1.0, color: Colors.white)),
      child: Text(
        genre,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }

  Widget buildCast() {
    return Container(
      height: 100,
      margin: const EdgeInsets.all(10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          actor(movie.img1, movie.cast1),
          actor(movie.img2, movie.cast2),
          actor(movie.img3, movie.cast3),
          actor(movie.img4, movie.cast4),
          actor(movie.img5, movie.cast5),
        ],
      ),
    );
  }

  Widget actor(String image, String cast) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 50,
          width: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 100,
          height: 50,
          padding: const EdgeInsets.all(10),
          child: Text(
            cast,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

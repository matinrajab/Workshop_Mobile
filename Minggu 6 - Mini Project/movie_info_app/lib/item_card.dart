import 'package:flutter/material.dart';
import 'package:movie_info_app/detail_screen.dart';
import 'package:movie_info_app/model/movie.dart';
import 'package:movie_info_app/provider/favorite_movie_provider.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  final Movie movie;
  final bool favorite;

  const ItemCard(
      {super.key, required this.movie,
      required this.favorite,});

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteMovieProvider>(
      builder: (context, favoriteMovieProvider, _) => GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailScreen(movie: movie);
          }));
        },
        onDoubleTap: (){
          movie.isFavorite = movie.isFavorite ? false : true;
          favoriteMovieProvider.complete(movie, movie.isFavorite);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        movie.poster,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      onPressed: (){
                        movie.isFavorite = movie.isFavorite ? false : true;
                        favoriteMovieProvider.complete(movie, movie.isFavorite);
                      },
                      icon: movie.isFavorite ? const Icon(Icons.favorite, color: Colors.red) : const Icon(Icons.favorite_border, color: Colors.white,)
                    )
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  movie.title,
                  style: const TextStyle(fontSize: 14.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movie_info_app/model/movie.dart';
import 'package:movie_info_app/provider/favorite_movie_provider.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  final Movie movie;
  final bool favorite;

  const ItemCard(
      {required this.movie,
      required this.favorite,});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Stack(
              children: <Widget>[
                Container(
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
                  child: Consumer<FavoriteMovieProvider>(
                    builder: (context, favoriteMovieProvider, _) => IconButton(
                      onPressed: (){
                        movie.isFavorite = movie.isFavorite ? false : true;
                        favoriteMovieProvider.complete(movie, movie.isFavorite);
                      },
                      icon: movie.isFavorite ? Icon(Icons.favorite, color: Colors.red) : Icon(Icons.favorite_border, color: Colors.white,)
                    )
                  )
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                movie.title,
                style: TextStyle(fontSize: 14.0, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movie_info_app/item_card.dart';
import 'package:provider/provider.dart';
import 'package:movie_info_app/detail_screen.dart';
import 'package:movie_info_app/model/movie.dart';
import 'package:movie_info_app/provider/favorite_movie_provider.dart';

class FavoriteMovieList extends StatelessWidget {
  const FavoriteMovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Movie> favoriteMovieList = Provider.of<FavoriteMovieProvider>(
      context,
      listen: false,
    ).favoriteMovieList;

    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),
        backgroundColor: Color.fromARGB(255, 27, 52, 108),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 30, 39, 98),
              Color.fromARGB(255, 12, 29, 59),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Consumer<FavoriteMovieProvider>(
            builder: (context, favoriteMovieProvider, _) => GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.6,
              ),
              itemCount: favoriteMovieList.length,
              itemBuilder: (context, index) {
                final Movie movie = favoriteMovieList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(movie: movie);
                    }));
                  },
                  child: Dismissible(
                    onDismissed: (direction){
                      movie.isFavorite = false;
                      favoriteMovieProvider.complete(movie, movie.isFavorite);
                    },
                    key: Key(index.toString()),
                    direction: DismissDirection.horizontal,
                    child: ItemCard(movie: movie, favorite: movie.isFavorite)
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

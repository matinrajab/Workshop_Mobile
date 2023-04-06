import 'package:flutter/material.dart';
import 'package:movie_info_app/appbar_color.dart';
import 'package:movie_info_app/background_color.dart';
import 'package:provider/provider.dart';
import 'package:movie_info_app/detail_screen.dart';
import 'package:movie_info_app/model/movie.dart';
import 'package:movie_info_app/provider/done_movie_provider.dart';

class FavoriteMovieList extends StatelessWidget {
  const FavoriteMovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Movie> doneMovieList = Provider.of<FavoriteMovieProvider>(
      context,
      listen: false,
    ).favoriteMovieList;

    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),
        flexibleSpace: AppBarColor(),
      ),
      body: Stack(
        children: <Widget>[
          BackgroundColor(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.6,
              ),
              itemCount: doneMovieList.length,
              itemBuilder: (context, index) {
                final Movie movie = doneMovieList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(movie: movie);
                    }));
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Container(
                            width: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                movie.poster,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              movie.title,
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

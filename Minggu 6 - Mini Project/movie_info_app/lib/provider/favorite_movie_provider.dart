import 'package:flutter/cupertino.dart';
import 'package:movie_info_app/model/movie.dart';

class FavoriteMovieProvider extends ChangeNotifier{
  final List<Movie> _favoriteMovieList = [];

  List<Movie> get favoriteMovieList => _favoriteMovieList;

  void complete(Movie movie, bool favorite){
    favorite ? _favoriteMovieList.add(movie) : _favoriteMovieList.remove(movie);
    notifyListeners();
  }
}
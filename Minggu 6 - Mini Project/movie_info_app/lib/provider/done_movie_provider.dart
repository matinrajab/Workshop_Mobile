import 'package:flutter/cupertino.dart';
import 'package:movie_info_app/model/movie.dart';

class DoneMovieProvider extends ChangeNotifier{
  final List<Movie> _doneMovieList = [];

  List<Movie> get doneMovieList => _doneMovieList;

  void complete(Movie place, bool isDone){
    isDone ? _doneMovieList.add(place) : _doneMovieList.remove(place);
    notifyListeners();
  }
}
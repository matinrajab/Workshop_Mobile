import 'package:flutter/material.dart';
import 'package:movie_info_app/appbar_color.dart';
import 'package:movie_info_app/background_color.dart';
import 'package:movie_info_app/done_movie_list.dart';
import 'package:movie_info_app/movie_list.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Info"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const DoneMovieList();
                }),
              );
            },
            icon: const Icon(
              Icons.favorite_outline,
            ),
          ),
        ],
        flexibleSpace: AppBarColor(),
      ),
      body: Stack(
        children: <Widget>[
          BackgroundColor(),
          MovieList()
        ],
      ),
    );
  }
}

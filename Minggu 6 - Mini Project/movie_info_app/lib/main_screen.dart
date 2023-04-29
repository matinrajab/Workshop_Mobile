import 'package:flutter/material.dart';
import 'package:movie_info_app/favorite_movie_list.dart';
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
        backgroundColor: Color.fromARGB(255, 27, 52, 108),
        title: Text("Movie Info"),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const FavoriteMovieList();
                  }),
                );
              },
              icon: const Icon(
                Icons.favorite_outline,
              ))
        ],
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
        child: MovieList()
      ),
    );
  }
}

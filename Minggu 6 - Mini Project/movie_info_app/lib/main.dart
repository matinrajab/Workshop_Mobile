import 'package:flutter/material.dart';
import 'package:movie_info_app/main_screen.dart';
import 'package:movie_info_app/provider/favorite_movie_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FavoriteMovieProvider>(
      create: (context) => FavoriteMovieProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}


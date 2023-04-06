import 'package:flutter/material.dart';
import 'package:movie_info_app/model/movie.dart';

class ItemCard extends StatelessWidget {
  final Movie movie;
  final bool favorite;
  final Function(bool? value) onCheckboxClick;

  const ItemCard(
      {required this.movie,
      required this.favorite,
      required this.onCheckboxClick});

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
                  child: Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.white),
                    child: Checkbox(
                      activeColor: Colors.white,
                      checkColor: Colors.blueAccent,
                      value: favorite,
                      onChanged: onCheckboxClick,
                    ),
                  ),
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

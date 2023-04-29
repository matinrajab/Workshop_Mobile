class Movie {
  String title;
  String poster;
  String genre1;
  String genre2;
  String duration;
  String rating;
  String story;
  String img1;
  String img2;
  String img3;
  String img4;
  String img5;
  String cast1;
  String cast2;
  String cast3;
  String cast4;
  String cast5;
  bool isFavorite;

  Movie({
    required this.title,
    required this.poster,
    required this.genre1,
    required this.genre2,
    required this.duration,
    required this.rating,
    required this.story,
    required this.img1,
    required this.img2,
    required this.img3,
    required this.img4,
    required this.img5,
    required this.cast1,
    required this.cast2,
    required this.cast3,
    required this.cast4,
    required this.cast5,
    this.isFavorite = false,
  });
}


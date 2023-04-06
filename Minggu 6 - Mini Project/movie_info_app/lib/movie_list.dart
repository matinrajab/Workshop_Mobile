import 'package:flutter/material.dart';
import 'package:movie_info_app/detail_screen.dart';
import 'package:movie_info_app/item_card.dart';
import 'package:movie_info_app/model/movie.dart';
import 'package:movie_info_app/provider/done_movie_provider.dart';
import 'package:provider/provider.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  final List<Movie> movieList = [
    Movie(
        title: "Black Panther",
        poster: "https://scera.org/wp-content/uploads/2018/01/black-panther-poster.jpg",
        genre1: "Action",
        genre2: "Adventure",
        duration: "120 minutes",
        rating: "IMDb 8.2",
        story: "A voice from a young boy asks to tell him a story. The adults voice tells the story of Vibranium. A gigantic meteorite with the toughest metal: vibranium, crashed in the region of the sources of the Nile river, millions of years ago and it affected the plants. Later, in the age of humans, five tribes in the land named Wakanda battled for control of that vibranium until a spirit led a certain warrior to find and eat a heart-shaped herb affected by the metal.",
        cast1: "Tio Pakusadewo",
        cast2: "Fachri Albar",
        cast3: "Jefri Nichol",
        cast4: "Ardhito Pramono",
        cast5: "Coki Pardede",
        img1: "https://akcdn.detik.net.id/visual/2017/12/22/ec3f8ec4-da97-4ae6-8478-0dfef49efa36_169.jpg?w=650",
        img2: "https://blue.kumparan.com/image/upload/c_fill,f_jpg,h_900,q_auto,w_1200/g_south,l_og_kumparan_zscykb/co_rgb:ffffff,g_south_west,l_text:Heebo_20_bold:Konten%20Redaksi%20kumparan%0DkumparanNEWS,x_140,y_26/cqg4nwfkm0cuono8ns3p.jpg",
        img3: "https://cdn-2.tstatic.net/wartakota/foto/bank/images/gaya-jefri-nichol-saat-polisi-rilis-kasusnya4.jpg",
        img4: "https://thumb.viva.co.id/media/frontend/thumbs3/2022/01/13/61dfc77f6c46d-ardhito-pramono-narkoba_665_374.jpg",
        img5: "https://awsimages.detik.net.id/community/media/visual/2021/09/02/coki-pardede-2_34.jpeg?w=375"
    ),
    Movie(
        title: "Avatar: The Way of Water",
        poster: "https://i.pinimg.com/564x/3b/5b/61/3b5b6164f6a719042a9bf8413aee3575.jpg",
        genre1: "Action",
        genre2: "Adventure",
        duration: "120 minutes",
        rating: "IMDb 8.2",
        story: "A voice from a young boy asks to tell him a story. The adults voice tells the story of Vibranium. A gigantic meteorite with the toughest metal: vibranium, crashed in the region of the sources of the Nile river, millions of years ago and it affected the plants. Later, in the age of humans, five tribes in the land named Wakanda battled for control of that vibranium until a spirit led a certain warrior to find and eat a heart-shaped herb affected by the metal.",
        cast1: "Tio Pakusadewo",
        cast2: "Fachri Albar",
        cast3: "Jefri Nichol",
        cast4: "Ardhito Pramono",
        cast5: "Coki Pardede",
        img1: "https://akcdn.detik.net.id/visual/2017/12/22/ec3f8ec4-da97-4ae6-8478-0dfef49efa36_169.jpg?w=650",
        img2: "https://blue.kumparan.com/image/upload/c_fill,f_jpg,h_900,q_auto,w_1200/g_south,l_og_kumparan_zscykb/co_rgb:ffffff,g_south_west,l_text:Heebo_20_bold:Konten%20Redaksi%20kumparan%0DkumparanNEWS,x_140,y_26/cqg4nwfkm0cuono8ns3p.jpg",
        img3: "https://cdn-2.tstatic.net/wartakota/foto/bank/images/gaya-jefri-nichol-saat-polisi-rilis-kasusnya4.jpg",
        img4: "https://thumb.viva.co.id/media/frontend/thumbs3/2022/01/13/61dfc77f6c46d-ardhito-pramono-narkoba_665_374.jpg",
        img5: "https://awsimages.detik.net.id/community/media/visual/2021/09/02/coki-pardede-2_34.jpeg?w=375"
    ),
    Movie(
        title: "Avengers: Endgame",
        poster: "https://i.pinimg.com/564x/c2/49/78/c2497819e6b99cc35c73a9fcde98a6f4.jpg",
        genre1: "Action",
        genre2: "Adventure",
        duration: "120 minutes",
        rating: "IMDb 8.2",
        story: "A voice from a young boy asks to tell him a story. The adults voice tells the story of Vibranium. A gigantic meteorite with the toughest metal: vibranium, crashed in the region of the sources of the Nile river, millions of years ago and it affected the plants. Later, in the age of humans, five tribes in the land named Wakanda battled for control of that vibranium until a spirit led a certain warrior to find and eat a heart-shaped herb affected by the metal.",
        cast1: "Tio Pakusadewo",
        cast2: "Fachri Albar",
        cast3: "Jefri Nichol",
        cast4: "Ardhito Pramono",
        cast5: "Coki Pardede",
        img1: "https://akcdn.detik.net.id/visual/2017/12/22/ec3f8ec4-da97-4ae6-8478-0dfef49efa36_169.jpg?w=650",
        img2: "https://blue.kumparan.com/image/upload/c_fill,f_jpg,h_900,q_auto,w_1200/g_south,l_og_kumparan_zscykb/co_rgb:ffffff,g_south_west,l_text:Heebo_20_bold:Konten%20Redaksi%20kumparan%0DkumparanNEWS,x_140,y_26/cqg4nwfkm0cuono8ns3p.jpg",
        img3: "https://cdn-2.tstatic.net/wartakota/foto/bank/images/gaya-jefri-nichol-saat-polisi-rilis-kasusnya4.jpg",
        img4: "https://thumb.viva.co.id/media/frontend/thumbs3/2022/01/13/61dfc77f6c46d-ardhito-pramono-narkoba_665_374.jpg",
        img5: "https://awsimages.detik.net.id/community/media/visual/2021/09/02/coki-pardede-2_34.jpeg?w=375"
    ),
    Movie(
        title: "Spider-Man: No Way Home",
        poster: "https://i.pinimg.com/564x/13/ab/59/13ab59606903edf9fe1b39d7d5aacf54.jpg",
        genre1: "Action",
        genre2: "Adventure",
        duration: "120 minutes",
        rating: "IMDb 8.2",
        story: "A voice from a young boy asks to tell him a story. The adults voice tells the story of Vibranium. A gigantic meteorite with the toughest metal: vibranium, crashed in the region of the sources of the Nile river, millions of years ago and it affected the plants. Later, in the age of humans, five tribes in the land named Wakanda battled for control of that vibranium until a spirit led a certain warrior to find and eat a heart-shaped herb affected by the metal.",
        cast1: "Tio Pakusadewo",
        cast2: "Fachri Albar",
        cast3: "Jefri Nichol",
        cast4: "Ardhito Pramono",
        cast5: "Coki Pardede",
        img1: "https://akcdn.detik.net.id/visual/2017/12/22/ec3f8ec4-da97-4ae6-8478-0dfef49efa36_169.jpg?w=650",
        img2: "https://blue.kumparan.com/image/upload/c_fill,f_jpg,h_900,q_auto,w_1200/g_south,l_og_kumparan_zscykb/co_rgb:ffffff,g_south_west,l_text:Heebo_20_bold:Konten%20Redaksi%20kumparan%0DkumparanNEWS,x_140,y_26/cqg4nwfkm0cuono8ns3p.jpg",
        img3: "https://cdn-2.tstatic.net/wartakota/foto/bank/images/gaya-jefri-nichol-saat-polisi-rilis-kasusnya4.jpg",
        img4: "https://thumb.viva.co.id/media/frontend/thumbs3/2022/01/13/61dfc77f6c46d-ardhito-pramono-narkoba_665_374.jpg",
        img5: "https://awsimages.detik.net.id/community/media/visual/2021/09/02/coki-pardede-2_34.jpeg?w=375"
    ),
    Movie(
        title: "The Raid",
        poster: "https://upload.wikimedia.org/wikipedia/id/e/ed/The_Raid_Poster.JPG",
        genre1: "Action",
        genre2: "Adventure",
        duration: "120 minutes",
        rating: "IMDb 8.2",
        story: "A voice from a young boy asks to tell him a story. The adults voice tells the story of Vibranium. A gigantic meteorite with the toughest metal: vibranium, crashed in the region of the sources of the Nile river, millions of years ago and it affected the plants. Later, in the age of humans, five tribes in the land named Wakanda battled for control of that vibranium until a spirit led a certain warrior to find and eat a heart-shaped herb affected by the metal.",
        cast1: "Tio Pakusadewo",
        cast2: "Fachri Albar",
        cast3: "Jefri Nichol",
        cast4: "Ardhito Pramono",
        cast5: "Coki Pardede",
        img1: "https://akcdn.detik.net.id/visual/2017/12/22/ec3f8ec4-da97-4ae6-8478-0dfef49efa36_169.jpg?w=650",
        img2: "https://blue.kumparan.com/image/upload/c_fill,f_jpg,h_900,q_auto,w_1200/g_south,l_og_kumparan_zscykb/co_rgb:ffffff,g_south_west,l_text:Heebo_20_bold:Konten%20Redaksi%20kumparan%0DkumparanNEWS,x_140,y_26/cqg4nwfkm0cuono8ns3p.jpg",
        img3: "https://cdn-2.tstatic.net/wartakota/foto/bank/images/gaya-jefri-nichol-saat-polisi-rilis-kasusnya4.jpg",
        img4: "https://thumb.viva.co.id/media/frontend/thumbs3/2022/01/13/61dfc77f6c46d-ardhito-pramono-narkoba_665_374.jpg",
        img5: "https://awsimages.detik.net.id/community/media/visual/2021/09/02/coki-pardede-2_34.jpeg?w=375"
    ),
    Movie(
        title: "A Nightmare on Elm Street",
        poster: "https://m.media-amazon.com/images/M/MV5BODIxMTQ0NTIxM15BMl5BanBnXkFtZTcwMzY1NDAyMw@@._V1_FMjpg_UX1000_.jpg",
        genre1: "Action",
        genre2: "Adventure",
        duration: "120 minutes",
        rating: "IMDb 8.2",
        story: "A voice from a young boy asks to tell him a story. The adults voice tells the story of Vibranium. A gigantic meteorite with the toughest metal: vibranium, crashed in the region of the sources of the Nile river, millions of years ago and it affected the plants. Later, in the age of humans, five tribes in the land named Wakanda battled for control of that vibranium until a spirit led a certain warrior to find and eat a heart-shaped herb affected by the metal.",
        cast1: "Tio Pakusadewo",
        cast2: "Fachri Albar",
        cast3: "Jefri Nichol",
        cast4: "Ardhito Pramono",
        cast5: "Coki Pardede",
        img1: "https://akcdn.detik.net.id/visual/2017/12/22/ec3f8ec4-da97-4ae6-8478-0dfef49efa36_169.jpg?w=650",
        img2: "https://blue.kumparan.com/image/upload/c_fill,f_jpg,h_900,q_auto,w_1200/g_south,l_og_kumparan_zscykb/co_rgb:ffffff,g_south_west,l_text:Heebo_20_bold:Konten%20Redaksi%20kumparan%0DkumparanNEWS,x_140,y_26/cqg4nwfkm0cuono8ns3p.jpg",
        img3: "https://cdn-2.tstatic.net/wartakota/foto/bank/images/gaya-jefri-nichol-saat-polisi-rilis-kasusnya4.jpg",
        img4: "https://thumb.viva.co.id/media/frontend/thumbs3/2022/01/13/61dfc77f6c46d-ardhito-pramono-narkoba_665_374.jpg",
        img5: "https://awsimages.detik.net.id/community/media/visual/2021/09/02/coki-pardede-2_34.jpeg?w=375"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: GridView.builder(
        itemCount: movieList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.6,
        ),
        itemBuilder: (context, index) {
          final Movie movie = movieList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(movie: movie);
              }));
            },
            child: Consumer<FavoriteMovieProvider>(
              builder: (context, FavoriteMovieProvider data, widget) {
                return ItemCard(
                  movie: movie,
                  favorite: data.favoriteMovieList.contains(movie),
                  onCheckboxClick: (bool? value) {
                    setState(() {
                      if (value != null) {
                        value
                            ? data.favoriteMovieList.add(movie)
                            : data.favoriteMovieList.remove(movie);
                      }
                    });
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}

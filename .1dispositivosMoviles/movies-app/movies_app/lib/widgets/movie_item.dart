import 'package:flutter/material.dart';
import 'package:movies_app/models/movie.dart';
import 'package:movies_app/screens/details_screen.dart';
import 'package:movies_app/widgets/list_view_movie_details.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key, required this.movie, required this.index});
  final Movie movie;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsScreen(movie: movie)),
        );
      },

      child: Container(
        width: 120,
        height: 250,
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MovieDetails(
              // Usa el widget directamente
              posterPath: movie.getPosterPath,
              title: movie.title,
              releaseDate: movie.releaseDate,
            ),
          ],
        ),
      ),
    );
  }
}

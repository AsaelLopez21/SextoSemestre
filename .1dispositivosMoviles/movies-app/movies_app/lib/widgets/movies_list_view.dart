import 'package:flutter/material.dart';
import 'package:movies_app/models/movie.dart';
import 'package:movies_app/widgets/movie_item.dart';

class MoviesListView extends StatelessWidget {
  const MoviesListView({super.key, required this.movies});

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, i) {
        return MovieItem(
          movie: movies[i],
          index: i,
        );
      },
    );
  }
}


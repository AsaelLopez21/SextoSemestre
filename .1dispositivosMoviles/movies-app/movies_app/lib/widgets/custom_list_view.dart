import 'package:flutter/material.dart';
import 'package:movies_app/models/movie.dart';
import 'package:movies_app/widgets/widgets.dart';

class CustomListView extends StatelessWidget {
  final List<Movie> movies;
  const CustomListView({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Now playing',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.indigoAccent,
            ),
          ),
        ),
        SizedBox(height: 1),
        SizedBox(
          height: 280,
          width: double.infinity,
          // color: Colors.amber,
          //y => gesture detector
          child: SizedBox(
            child: MoviesListView(movies: movies),
          ), //g => nuevo widget
        ),
      ],
    );
  }
}

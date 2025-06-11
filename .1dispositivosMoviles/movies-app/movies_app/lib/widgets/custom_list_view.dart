import 'package:flutter/material.dart';
import 'package:movies_app/models/movie.dart';

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
        SizedBox(height: 8),
        SizedBox(
          height: 250,
          width: double.infinity,
          // color: Colors.amber,
          //y => gesture detector
          child: ListView.builder(
            itemCount: movies.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, i) {
              return GestureDetector(
                onTap:
                    () => Navigator.pushNamed(
                      context,
                      'details',
                      arguments: 'movie $i',
                    ),
                child: Container(
                  width: 120,
                  height: 180,
                  margin: EdgeInsets.all(10),
                  // color: Colors.indigoAccent,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FadeInImage(
                          placeholder: AssetImage('assets/images/loading.gif'),
                          image: NetworkImage(movies[i].getPosterPath),
                        ),
                      ),
                      Text(
                        movies[i].title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),

        //o => List view
      ],
    );
  }
}

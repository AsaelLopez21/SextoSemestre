import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({
    super.key,
    required this.posterPath,
    required this.title,
    required this.releaseDate,
  });

  final String posterPath;
  final String title;
  final DateTime releaseDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: NetworkImage(posterPath),
          ),
        ),
        SizedBox(height: 8),
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(height: 4),
        Text(
          'Release: ${releaseDate.toString().split(' ')[0]}',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movies_app/providers/movie_provider.dart';
import 'package:movies_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final providerOfMovie = Provider.of<MovieProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Details screen'),
        // titleTextStyle: TextStyle(color: Colors.white),
        backgroundColor: Colors.indigo,
      ),
      body:SingleChildScrollView( 
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //o swiper
          CustomSwiper(movies: providerOfMovie.popularsMovies),

          //o now playing, horizontal
          CustomListView(movies: providerOfMovie.popularsMovies),
        ],
      ),),

    );
  }
}

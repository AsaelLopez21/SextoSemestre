import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:movies_app/models/models.dart';

class MovieProvider extends ChangeNotifier {
  List<Movie> popularsMovies = [];
  List<Movie> nowPlayingMovies = [];
  final urlMovie = 'api.themoviedb.org';
  final segments = '/3/movie/popular';
  final apiKey = '90a80049eeae86e04ced1a9cc9c2d6a3';

  MovieProvider() {
    getPopularMovies();
  }

  Future<String> getPopularMovies({String? seg}) async {
    //y => traer las peliculas
    final url = Uri.https(urlMovie, segments, {'api_key': apiKey});
    var response = await http.get(url);

    return response.body; //y => en body va la informacion
  }

  void getMoviesByPopular() async {
    final jsonResponse = await getPopularMovies();
    final jsonMap = convert.jsonDecode(jsonResponse) as Map<String, dynamic>;
    final popularResponse = MovieResponse.fromJson(
      jsonMap,
    ); //y => convertir a modelo

    popularsMovies = popularResponse.results;
    notifyListeners(); //y => notificar que la lista de peliculas cambio que pinte de nuevo
  }
}

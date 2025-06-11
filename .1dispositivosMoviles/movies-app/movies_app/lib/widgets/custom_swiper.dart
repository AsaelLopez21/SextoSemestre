import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:movies_app/models/movie.dart';
import 'package:movies_app/widgets/widgets.dart';

class CustomSwiper extends StatelessWidget {
  final List<Movie> movies;
  const CustomSwiper({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;

    return SizedBox(
      // ignore: sized_box_for_whitespace
        width: double.infinity,
        height: sizeScreen.height * 0.5, //Y ->calcular este valor
        // color: Colors.white,
        child: Swiper(
          //o => enviar como parametro la pelicula
          onTap:
              (index) => Navigator.pushNamed(
                context,
                'details',
                arguments: 'pelicula', //y =>  enviar ojeto de tipo pelicula
              ),
          itemBuilder: (context, index) {
            return CustomCardImage(posterPath: movies[index].getPosterPath,);
          },
          itemCount: movies.length,
          itemWidth: 300,
          autoplay: false,
          // pagination: SwiperPagination(),
          control: SwiperControl(),
          layout: SwiperLayout.STACK,
        ),
      
    );
  }
}

import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:movies_app/widgets/widgets.dart';

class CustomSwiper extends StatelessWidget {
  const CustomSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;

    return SizedBox(
      child: Container(
        width: double.infinity,
        height: sizeScreen.height * 0.5, //Y ->calcular este valor
        color: Colors.pinkAccent,
        child: Swiper(
          itemBuilder: (context, index) {
            return CustomCardImage();
          },
          itemCount: 10,
          autoplay: true,
          pagination: SwiperPagination(),
          control: SwiperControl(),
        ),
      ),
    );
  }
}

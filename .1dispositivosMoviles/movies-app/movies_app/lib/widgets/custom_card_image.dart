import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  const CustomCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // ignore: sized_box_for_whitespace
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: FadeInImage(
          placeholder: AssetImage('assets/images/loading.gif'),
          image: NetworkImage(
            'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movies_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details screen'),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          //o swiper
          CustomSwiper(),

          //o now playing, horizontal
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:app_dos/widgets/container_image.dart';

class CarrousellViewX extends StatefulWidget {
  const CarrousellViewX({super.key});

  @override
  State<CarrousellViewX> createState() => _CarrousellViewXState();
}

class _CarrousellViewXState extends State<CarrousellViewX> {
  @override
  final CarouselController carouselController = CarouselController(
    initialItem: 2,
  );

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size; //!obtener el tamaño de la pantalla
    carouselController.animateTo(
      150,
      duration: const Duration(milliseconds: 800),
      curve: Curves.bounceInOut,
    );
    return Scaffold(
      appBar: AppBar(title: Text('Carrousell view')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ContainerImage(size: size, imageURL: 'valkyrie.jpg'),
            //!Carrousel view
            CarouselView(
              controller: carouselController,
              itemExtent: 200,
              children: [
                FadeInImage(
                  placeholder: AssetImage('assests/images/loading.gif'),
                  image: AssetImage('assets/images/valkyrie.jpg'),
                ),
                FadeInImage(
                  placeholder: AssetImage('assests/images/loading.gif'),
                  image: AssetImage('assets/images/ferrari126.jpg'),
                ),
                FadeInImage(
                  placeholder: AssetImage('assests/images/loading.gif'),
                  image: AssetImage('assets/images/ferrari499p.jpg'),
                ),
              ],
            ),
            //?Otra cosa
          ],
        ),
      ),
    );
  }
}

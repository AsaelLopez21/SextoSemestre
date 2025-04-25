import 'package:flutter/material.dart';

class CarrousellViewX extends StatelessWidget {
  const CarrousellViewX({super.key});
  @override
  Widget build(BuildContext context) {
    final size =
        MediaQuery.of(context).size; //!obtener el tamaño de la pantalla

    return Scaffold(
      appBar: AppBar(title: Text('Carrousell view')),
      body: Center(
        child: Column(
          children: [
            //?Carrousel
            Container(
              height: size.height * 0.45,
              width: double.infinity /*Ocupa todo el ancho*/,
              color: Colors.amber,
              child: Text('texto dentro container'),
            ),

            //?Otra cosa
          ],
        ),
      ),
    );
  }
}

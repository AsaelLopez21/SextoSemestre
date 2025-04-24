import 'package:flutter/material.dart';

class CarrousellViewX extends StatelessWidget {
  const CarrousellViewX({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carrousell view')),
      body: Center(
        child: Text('Carrousell View'), //TODO: agregar el carrousel
      ),
    );
  }
}

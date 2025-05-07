import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  const ContainerImage({super.key, required this.size, required this.imageURL});

  final Size size;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height * 0.35,
        width: double.infinity /*Ocupa todo el ancho*/,
        // color: Colors.amber,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 3.0),
          borderRadius: BorderRadius.circular(size.height * 0.1),
          color: Colors.transparent, // Add a color or use transparent
        ),
        //!poner imagen
        child: ClipRRect(
          borderRadius: BorderRadius.circular(size.height * 0.1),
          child: FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: AssetImage('assets/images/$imageURL'),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

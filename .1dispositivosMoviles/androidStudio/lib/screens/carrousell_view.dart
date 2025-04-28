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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height * 0.35,
                width: double.infinity /*Ocupa todo el ancho*/,
                // color: Colors.amber,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.height * 0.1),
                  color: Colors.transparent, // Add a color or use transparent
                ),
                //!poner imagen
                child: FadeInImage(
                  placeholder: AssetImage('assets/images/loading.gif'),
                  image: NetworkImage(
                    'https://bnj.blob.core.windows.net/assets/Htdocs/Images/IF_Content_480/20241116152751916.jpg?puid=15af8dee-9178-4cd0-a250-800307f842a3',
                  ),
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //!Carrousel view

            //?Otra cosa
          ],
        ),
      ),
    );
  }
}

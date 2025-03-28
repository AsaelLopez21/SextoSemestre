import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//info: MiApp es un widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  //!tiene informacion de widgets anteriores
  Widget build(BuildContext context) {
    //!recibe argumentos por nombre
    return MaterialApp(
      title: 'Hola Mundo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Hola Mundo')),
        body: const Center(child: Text('Hello World')),
      ),
    );
  }
}

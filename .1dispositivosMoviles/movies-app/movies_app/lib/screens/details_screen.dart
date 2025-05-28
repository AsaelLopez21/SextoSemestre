import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    //o => recuperar el indice u objeto de tipo pelicula

    return Scaffold(body: CustomScrollView(slivers: [SliverAppBar()]));
  }
}

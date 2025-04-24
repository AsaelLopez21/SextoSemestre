import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Image')),
      body: Center(child: Text('card image')),
    );
  }
}

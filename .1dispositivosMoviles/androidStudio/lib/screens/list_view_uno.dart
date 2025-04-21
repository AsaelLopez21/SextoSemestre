import 'package:flutter/material.dart';

class ListViewUno extends StatelessWidget {
  const ListViewUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home screen')),
      body: Center(child: Text('ListView')),
    );
  }
}

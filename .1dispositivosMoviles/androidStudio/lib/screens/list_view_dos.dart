import 'package:flutter/material.dart';

class ListViewDos extends StatelessWidget {
  const ListViewDos({super.key});
  @override
  Widget build(BuildContext context) {
    final primaryColor =
        Theme.of(
          context,
        ).iconTheme.color; //!accediendo al contexto de arbol de widgets

    List<String> cosas = [
      'Alice Johnson',
      'Bob Smith',
      'Charlie Brown',
      'Diana Prince',
      'Ethan Hunt',
      'Fiona Gallagher',
      'George Clooney',
      'Hannah Montana',
      'Ian McKellen',
      'Jack Sparrow',
      'Karen Gillan',
      'Liam Neeson',
      'Mia Wallace',
      'Nathan Drake',
      'Olivia Benson',
      'Peter Parker',
      'Quinn Fabray',
      'Rachel Green',
      'Steve Rogers',
      'Tony Stark',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: cosas.length, //!cuantas veces va a construir
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.account_circle_outlined, color: primaryColor),
            title: Text(
              '${cosas[index]} ${index}',
              style: TextStyle(color: primaryColor),
            ),
            subtitle: Text(
              'Informacion',
              style: TextStyle(color: primaryColor),
            ),
            trailing: Icon(Icons.navigate_next_sharp, color: primaryColor),
            onTap: () => print('Presionado: ${cosas[index]}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.plus_one_outlined,
          color: Theme.of(context).primaryIconTheme.color,
        ),
      ),
    );
  }
}

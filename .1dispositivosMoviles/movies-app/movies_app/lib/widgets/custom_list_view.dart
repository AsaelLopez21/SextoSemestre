import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Now playing',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.indigoAccent,
            ),
          ),
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 250,
          width: double.infinity,
          // color: Colors.amber,
          //y => gesture detector
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, i) {
              return GestureDetector(
                onTap:
                    () => Navigator.pushNamed(
                      context,
                      'details',
                      arguments: 'movie $i',
                    ),
                child: Container(
                  width: 120,
                  height: 180,
                  margin: EdgeInsets.all(10),
                  // color: Colors.indigoAccent,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FadeInImage(
                          placeholder: AssetImage('assets/images/loading.gif'),
                          image: NetworkImage(
                            'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
                          ),
                        ),
                      ),
                      Text(
                        'Titulo de la pelicula',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),

        //o => List view
      ],
    );
  }
}
